package ${escapeKotlinIdentifiers(packageName)}.base

import ${packageName}.data.remote.api.IApiEndpoint
import ${packageName}.data.remote.api.ApiRetrofit

open class BaseRemoteDataSource {
    open var apiEndpoint: IApiEndpoint =
        ApiRetrofit.instance!!.create(IApiEndpoint::class.java)
}