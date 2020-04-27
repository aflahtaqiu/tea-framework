package ${escapeKotlinIdentifiers(packageName)}.module.${folderName}

import ${escapeKotlinIdentifiers(packageName)}.di.IDataInjector


class ${presenterClass} : I${presenterClass} {

    private var view: ${viewClass}? = null
    
    companion object {
        var instance: ${presenterClass}? = null
            get() {
                if (field == null) {
                    field = ${presenterClass}()
                }
                return field
            }
            private set

        <#if isUseDataSource>
        private var dataInjector: IDataInjector? = null
        </#if>
        <#if isUseDataSource>
            fun setDataInjector(_datInjector: IDataInjector?) {
                dataInjector = _datInjector
            }   
        </#if>
    }

    override fun injectView(_view: ${viewClass}) {
            view = _view
    }
}