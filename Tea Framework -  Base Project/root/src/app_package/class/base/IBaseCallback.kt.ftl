package ${escapeKotlinIdentifiers(packageName)}.base


public interface IBaseCallback<T> {
    fun onSuccess(data: T)
    fun onError(errorMessage: String?)
}