package ${escapeKotlinIdentifiers(packageName)}.base

import com.google.gson.annotations.SerializedName


data class ResponsePaging (
    @SerializedName("page")
    var page : Int,

    @SerializedName("item_per_page")
    var itemPerPage : Int,

    @SerializedName("last_page")
    var lastPage : Int,

    @SerializedName("total_item")
    var totalItem : Long
) {
}