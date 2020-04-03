package ${escapeKotlinIdentifiers(packageName)}.model;

import ${escapeKotlinIdentifiers(packageName)}.base.DataResponse


data class ${modelName}(

    var id : Int

    // TODO: add your model's field here
) : DataResponse<${modelName}> {
    override fun retrieveData(): ${modelName} = this 
}