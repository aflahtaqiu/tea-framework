package ${escapeKotlinIdentifiers(packageName)}.base


data class ListResponse<T>(val items: List<T>) : DataResponse<List<T>> {
    override fun retrieveData(): List<T> = items
}