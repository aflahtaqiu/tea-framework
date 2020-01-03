package ${packageName}.module.${folderName};


public class ${underscoreToCamelCase(folderName)}Injector {
    
    public static ${underscoreToCamelCase(folderName)}Injector ${folderName}Injector;

    public static ${underscoreToCamelCase(folderName)}Injector getInstance () {
        if(${folderName}Injector == null) {
            ${folderName}Injector = new ${underscoreToCamelCase(folderName)}Injector();
        }
        return ${folderName}Injector;
    }

    public ${underscoreToCamelCase(folderName)}Injector () {
        injectDependency();
    }

    void injectDependency () {
        ${activityClass}.injectI${presenterClass}(${presenterClass}.getInstance());
        ${presenterClass}.inject${viewClass}(${activityClass}.getInstance());
        
        // TODO: Add your class dependency in this module here
    }
}