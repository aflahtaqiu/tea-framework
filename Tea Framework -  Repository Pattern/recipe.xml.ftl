<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/class/data/source/IDataSource.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/source/I${modelName}DataSource.${ktOrJavaExt}"/>

    <instantiate from="src/app_package/class/data/repository/DataRepository.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/repository/${modelName}Repository.${ktOrJavaExt}"/>

    <instantiate from="src/app_package/class/data/remote/RemoteDataSource.${ktOrJavaExt}.ftl"
            to="${escapeXmlAttribute(srcOut)}/data/remote/${modelName}RemoteDataSource.${ktOrJavaExt}"/>
    
    <instantiate from="src/app_package/class/data/local/LocalDataSource.${ktOrJavaExt}.ftl"
            to="${escapeXmlAttribute(srcOut)}/data/local/${modelName}LocalDataSource.${ktOrJavaExt}"/>

    <instantiate from="src/app_package/class/data/local/Dao.${ktOrJavaExt}.ftl"
            to="${escapeXmlAttribute(srcOut)}/data/local/dao/${modelName}Dao.${ktOrJavaExt}"/>

    <#assign objectConstructor = "freemarker.template.utility.ObjectConstructor"?new()>
    <#assign file = objectConstructor("java.io.File","${escapeXmlAttribute(srcOut)}/data/local/LocalDatabase.java")>
    <#assign fileKotlin = objectConstructor("java.io.File","${escapeXmlAttribute(srcOut)}/data/local/LocalDatabase.kt")>
    <#assign exist = file.exists()>
    <#assign existKotlin = fileKotlin.exists()>

    <#if exist=false && existKotlin=false>
        <instantiate from="src/app_package/class/data/local/LocalDatabase.${ktOrJavaExt}.ftl"
            to="${escapeXmlAttribute(srcOut)}/data/local/LocalDatabase.${ktOrJavaExt}"/>    
    </#if>

    <instantiate from="src/app_package/class/model/Model.${ktOrJavaExt}.ftl"
            to="${escapeXmlAttribute(srcOut)}/model/${modelName}.${ktOrJavaExt}"/>

</recipe>