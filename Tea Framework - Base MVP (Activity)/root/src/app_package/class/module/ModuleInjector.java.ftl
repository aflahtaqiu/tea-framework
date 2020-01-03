package ${packageName}.module.${folderName};

import ${packageName}.di.DataInjector;

public class ${underscoreToCamelCase(folderName)}Injector {

    public ${underscoreToCamelCase(folderName)}Injector () {
        injectDependency();
    }

    void injectDependency () {
        ${activityClass}.injectI${presenterClass}(${presenterClass}.getInstance());
        // ${presenterClass}.inject${viewClass}(${activityClass}.getInstance());
        ${presenterClass}.setDataInjector(DataInjector.getInstance());
        
        // TODO: Add your class dependency in this module here
    }
}