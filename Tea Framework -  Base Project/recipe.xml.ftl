<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/class/App.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/App.${ktOrJavaExt}"/>

    <instantiate from="src/app_package/class/base/BaseActivity.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/BaseActivity.${ktOrJavaExt}"/>

    <instantiate from="src/app_package/class/base/BaseRemoteDataSource.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/BaseRemoteDataSource.${ktOrJavaExt}"/>

    <instantiate from="src/app_package/class/base/BaseFragment.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/BaseFragment.${ktOrJavaExt}" />

    <instantiate from="src/app_package/class/base/ResponsePaging.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/ResponsePaging.${ktOrJavaExt}" />

    <instantiate from="src/app_package/class/base/IBaseView.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/IBaseView.${ktOrJavaExt}" />

    <instantiate from="src/app_package/class/base/IBasePresenter.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/IBasePresenter.${ktOrJavaExt}" />

    <instantiate from="src/app_package/class/base/IBaseCallback.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/IBaseCallback.${ktOrJavaExt}" />

    <instantiate from="src/app_package/class/di/Injector.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/DataInjector.${ktOrJavaExt}"/>

    <instantiate from="src/app_package/class/di/IDataInjector.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/IDataInjector.${ktOrJavaExt}"/>

    <instantiate from="src/app_package/class/data/remote/api/ApiRetrofit.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/remote/api/ApiRetrofit.${ktOrJavaExt}"/>

    <instantiate from="src/app_package/class/data/remote/api/IApiEndpoint.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/remote/api/IApiEndpoint.${ktOrJavaExt}"/>

    <#if generateKotlin>
        <instantiate from="src/app_package/class/base/Resource.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/base/BaseResponse.java" />
        
        <instantiate from="src/app_package/class/base/Result.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/base/Result.kt" />

        <instantiate from="src/app_package/class/base/DeferredAwait.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/base/DeferredAwait.kt" />

        <instantiate from="src/app_package/class/base/NetworkCallDSL.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/base/NetworkCallDSL.kt" />

        <instantiate from="src/app_package/class/base/ListResponse.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/base/ListResponse.kt" />
    <#else>
        <instantiate from="src/app_package/class/base/BaseResponse.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/base/BaseResponse.java" />
    </#if>


    <merge from="src/app_package/build.gradle.ftl"
            to="${escapeXmlAttribute(projectOut)}/build.gradle" />

    <merge from="build.gradle.ftl"
            to="${escapeXmlAttribute(topOut)}/build.gradle" />

    <merge 
        from="AndroidManifest.xml.ftl"
        to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml"/>
</recipe>