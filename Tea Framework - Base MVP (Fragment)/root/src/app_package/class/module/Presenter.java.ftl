package ${packageName}.module.${folderName};


public class ${presenterClass} implements I${presenterClass} {

    private static ${viewClass} view;
    private static ${presenterClass} instance;

    public static ${presenterClass} getInstance () {
        if(instance == null) {
            instance = new ${presenterClass}();
        }
        return instance;
    }

    public static void inject${viewClass} (${viewClass} _view) {
        view = _view;
    }
}