package ${packageName}.module.${folderName};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import butterknife.ButterKnife;
import ${packageName}.R;
import ${packageName}.base.BaseFragment;


public class ${activityClass} extends BaseFragment implements ${viewClass} {
    
    private static I${presenterClass} presenter;
    private static ${activityClass} instance;

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
        View view = inflater.inflate(R.layout.${layoutName}, container, false);
        ButterKnife.bind(this, view);

        return view;
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