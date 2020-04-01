package ${escapeKotlinIdentifiers(packageName)}.module.${folderName}

import ${escapeKotlinIdentifiers(packageName)}.di.DataInjector

class ${underscoreToCamelCase(folderName)}Injector {

    fun injectDependency() {
        ${activityClass}.injectI${presenterClass}(${presenterClass}.instance)
        // TODO: Add your class dependency in this module here
    }

    init {
        injectDependency()
    }
}