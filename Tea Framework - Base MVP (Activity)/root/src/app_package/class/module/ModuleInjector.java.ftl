package ${packageName}.module.${folderName};


public class ${underscoreToCamelCase(folderName)}Injector {

    public ${underscoreToCamelCase(folderName)}Injector () {
        injectDependency();
    }

    void injectDependency () {
        ${activityClass}.injectI${presenterClass}(${presenterClass}.getInstance());
        
        // TODO: Add your class dependency in this module here
    }
}