package ${packageName}.module.${folderName};

import android.os.Bundle;

import butterknife.ButterKnife;
import ${packageName}.R;
import ${packageName}.base.BaseActivity;


public class ${activityClass} extends BaseActivity implements ${viewClass} {
    
    private static I${presenterClass} presenter;
    private static ${activityClass} instance;

    @Override
    protected void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
        
        ButterKnife.bind(this);
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