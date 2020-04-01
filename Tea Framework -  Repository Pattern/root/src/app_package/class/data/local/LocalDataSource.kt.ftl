package ${escapeKotlinIdentifiers(packageName)}.data.local

import android.content.Context

import ${escapeKotlinIdentifiers(packageName)}.data.source.I${modelName}DataSource
import ${escapeKotlinIdentifiers(packageName)}.model.${modelName}

public class ${modelName}LocalDataSource(private val context: Context) : I${modelName}DataSource {

}