package ${escapeKotlinIdentifiers(packageName)}.module.${folderName}


import ${escapeKotlinIdentifiers(packageName)}.base.IBasePresenter

interface I${presenterClass} : IBasePresenter {
    fun injectView(_view : ${viewClass})
}