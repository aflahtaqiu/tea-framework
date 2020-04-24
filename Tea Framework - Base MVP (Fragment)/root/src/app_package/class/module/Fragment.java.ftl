package ${packageName}.module.${folderName};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${packageName}.base.BaseFragment;
import ${packageName}.databinding.${underscoreToCamelCase(layoutName)}BindingBinding;


public class ${activityClass} extends BaseFragment implements ${viewClass} {
    
    private static I${presenterClass} presenter;
    private static ${activityClass} instance;

    private ${underscoreToCamelCase(layoutName)}BindingBinding binding;

    public static ${activityClass} getInstance () {
        if(instance == null) {
            instance = new ${activityClass}();
        }
        return instance;
    }

    public ${activityClass} () {
        // Fragment Constructor
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState){
        binding = ${underscoreToCamelCase(layoutName)}BindingBinding.inflate(inflater, container, false);


        return binding.getRoot();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
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