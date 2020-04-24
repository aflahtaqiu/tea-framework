package ${packageName}.module.${folderName};

import android.os.Bundle;

import ${packageName}.base.BaseActivity;
import ${packageName}.databinding.${underscoreToCamelCase(layoutName)}Binding;


public class ${activityClass} extends BaseActivity implements ${viewClass} {
    
    private static I${presenterClass} presenter;
    private static ${activityClass} instance;

    private ${underscoreToCamelCase(layoutName)}Binding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
        binding = ${underscoreToCamelCase(layoutName)}Binding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());
        ${presenterClass}.inject${viewClass}(this);
    }

    @Override
    public void showLoading(String message) {
        super.onShowLoading(message);
    }

    @Override
    public void hideLoading() {
        super.onHideLoading();
    }

    @Override
    public void showMessage(String message) {
        
    }

    public static void injectI${presenterClass} (I${presenterClass} _presenter) {
        presenter = _presenter;
    }
}