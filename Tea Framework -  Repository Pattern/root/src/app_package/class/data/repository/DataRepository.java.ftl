package ${packageName}.data.repository;

import android.content.Context;

import ${packageName}.data.source.I${modelName}DataSource;
import ${packageName}.data.remote.${modelName}RemoteDataSource;
import ${packageName}.data.local.${modelName}LocalDataSource;



public class ${modelName}Repository implements I${modelName}DataSource {
    
    private static ${modelName}Repository dataRepository;
    private ${modelName}RemoteDataSource remoteDataSource;
    private ${modelName}LocalDataSource localDataSource;
   
    ${modelName}Repository (${modelName}RemoteDataSource remoteDataSource, ${modelName}LocalDataSource localDataSource) {
            this.remoteDataSource = remoteDataSource;
            this.localDataSource = localDataSource;
    }

    public static ${modelName}DataRepository getInstance (Context context) {
        if(dataRepository == null) {
            dataRepository = new ${modelName}Repository( new ${modelName}RemoteDataSource(), new ${modelName}LocalDataSource(context));
        }
        return dataRepository;
    }
}