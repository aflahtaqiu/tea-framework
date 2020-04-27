package ${escapeKotlinIdentifiers(packageName)}.module.${folderName}


import ${escapeKotlinIdentifiers(packageName)}.base.IBaseView

interface ${viewClass} : IBaseView {
    fun injectPresenter()
}