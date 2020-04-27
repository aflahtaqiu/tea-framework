package ${packageName}.module.${folderName};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${packageName}.base.BaseFragment;
import ${packageName}.databinding.${underscoreToCamelCase(layoutName)}Binding;


public class ${activityClass} extends BaseFragment implements ${viewClass} {
    
    private static I${presenterClass} presenter;

    private ${underscoreToCamelCase(layoutName)}Binding binding;


    public ${activityClass} () {
        // Fragment Constructor
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState){
        binding = ${underscoreToCamelCase(layoutName)}Binding.inflate(inflater, container, false);


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

    @Override
    public void injectPresenter() {
        presenter.injectView(this);
    }

    public static void injectI${presenterClass} (I${presenterClass} _presenter) {
        presenter = _presenter;
    }
}