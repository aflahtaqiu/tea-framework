<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/class/data/source/IDataSource.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/source/I${modelName}DataSource.java"/>

    <instantiate from="src/app_package/class/data/repository/DataRepository.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/repository/${modelName}Repository.java"/>

    <instantiate from="src/app_package/class/data/remote/RemoteDataSource.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/data/remote/${modelName}RemoteDataSource.java"/>
    
    <instantiate from="src/app_package/class/data/local/LocalDataSource.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/data/local/${modelName}LocalDataSource.java"/>

    <instantiate from="src/app_package/class/data/local/Dao.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/data/local/dao/${modelName}Dao.java"/>

    <#assign objectConstructor = "freemarker.template.utility.ObjectConstructor"?new()>
    <#assign file = objectConstructor("java.io.File","${escapeXmlAttribute(srcOut)}/data/local/LocalDatabase.java")>
    <#assign exist = file.exists()>

    <#if exist=false>
        <instantiate from="src/app_package/class/data/local/LocalDatabase.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/data/local/LocalDatabase.java"/>    
    </#if>

    <instantiate from="src/app_package/class/model/Model.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/model/${modelName}.java"/>

</recipe>