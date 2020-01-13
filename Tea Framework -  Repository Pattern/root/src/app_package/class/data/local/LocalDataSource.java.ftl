package ${packageName}.data.local;

import android.content.Context;

import ${packageName}.data.source.I${modelName}DataSource;
import ${packageName}.model.${modelName};

public class ${modelName}LocalDataSource implements I${modelName}DataSource {

    private Context context;

    public ${modelName}LocalDataSource (Context context) {
        this.context = context;
    }
}