package ${escapeKotlinIdentifiers(packageName)}.base

import androidx.lifecycle.MutableLiveData
import kotlinx.coroutines.*
import retrofit2.HttpException
import retrofit2.Response

class CallHandler<RESPONSE : Any, DATA : Any> {
    lateinit var client: Deferred<Response<RESPONSE>>

    @Suppress("UNCHECKED_CAST")
    fun makeCall(): MutableLiveData<BaseResponse<DATA>> {
        val result = MutableLiveData<BaseResponse<DATA>>()
        result.setValue(BaseResponse.loading(null))

        GlobalScope.launch {
            try {
                val response = client.awaitResult().getOrThrow() as DataResponse<DATA>

                withContext(Dispatchers.Main) {
                    result.value = BaseResponse.success(response.retrieveData())
                }
            } catch (e: Throwable) {
                withContext(Dispatchers.Main) {
                    if (e is HttpException)
                        result.value = Resource.error(e.message +" | " + " code " + e.response().code(), 0)
                    else
                        result.value = Resource.error(e.message, 0)
                }
                e.printStackTrace()
            }
        }
        return result
    }
}

fun <RESPONSE : DataResponse<*>, DATA : Any> networkCall(block: CallHandler<RESPONSE, DATA>.() -> Unit): MutableLiveData<BaseResponse<DATA>> =
    CallHandler<RESPONSE, DATA>().apply(block).makeCall()

interface DataResponse<T> {
    fun retrieveData(): T
}