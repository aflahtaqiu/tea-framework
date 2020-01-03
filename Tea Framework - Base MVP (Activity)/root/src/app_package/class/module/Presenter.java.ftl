package ${packageName}.module.${folderName};

import ${packageName}.di.IDataInjector;

public class ${presenterClass} implements I${presenterClass} {

    private static ${viewClass} view;
    private static ${presenterClass} instance;
    <#if isUseDataSource>
        private static IDataInjector dataInjector;
    </#if>

    public static ${presenterClass} getInstance () {
        if(instance == null) {
            instance = new ${presenterClass}();
        }
        return instance;
    }

    public static void inject${viewClass} (${viewClass} _view) {
        view = _view;
    }
    
    <#if isUseDataSource>
        public static void setDataInjector(IDataInjector _datInjector) {
            dataInjector = _datInjector;
        }   
    </#if>
}