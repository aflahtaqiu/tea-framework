package ${escapeKotlinIdentifiers(packageName)}.data.remote

import ${escapeKotlinIdentifiers(packageName)}.data.source.I${modelName}DataSource
import ${escapeKotlinIdentifiers(packageName)}.base.BaseRemoteDataSource
import ${escapeKotlinIdentifiers(packageName)}.model.${modelName}

public class ${modelName}RemoteDataSource : BaseRemoteDataSource(), I${modelName}DataSource {

}