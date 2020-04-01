package ${escapeKotlinIdentifiers(packageName)}.data.repository

import android.content.Context

import ${escapeKotlinIdentifiers(packageName)}.data.source.I${modelName}DataSource
import ${escapeKotlinIdentifiers(packageName)}.data.remote.${modelName}RemoteDataSource
import ${escapeKotlinIdentifiers(packageName)}.data.local.${modelName}LocalDataSource


public class ${modelName}Repository internal constructor(
    private val remoteDataSource: ${modelName}RemoteDataSource,
    private val localDataSource: ${modelName}LocalDataSource
) : I${modelName}DataSource {
    
   companion object {
        @Volatile private var instance: ${modelName}Repository? = null

        fun getInstance(context: Context) : ${modelName}Repository =
            instance?: synchronized(this) {
                instance?: ${modelName}Repository(
                    ${modelName}RemoteDataSource(), ${modelName}LocalDataSource(context))
                        .also { instance = it }
        }
    }
}