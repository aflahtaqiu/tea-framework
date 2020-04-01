package ${escapeKotlinIdentifiers(packageName)}.base


public interface IBaseView {
    fun showLoading(message: String?)
    fun hideLoading()
    fun showMessage(message: String?)
}