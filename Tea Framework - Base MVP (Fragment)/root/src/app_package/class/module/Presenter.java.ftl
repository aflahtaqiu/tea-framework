package ${packageName}.module.${folderName};

import ${packageName}.di.IDataInjector;


public class ${presenterClass} implements I${presenterClass} {

    private ${viewClass} view;
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

    @Override
    public void injectView(${viewClass} _view) {
        view =_view;
    }

    <#if isUseDataSource>
        public static void setDataInjector(IDataInjector _datInjector) {
            dataInjector = _datInjector;
        }   
    </#if>
}