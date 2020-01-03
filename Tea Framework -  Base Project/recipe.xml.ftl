<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/class/App.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/App.java"/>

    <instantiate from="src/app_package/class/base/BaseActivity.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/BaseActivity.java"/>

    <instantiate from="src/app_package/class/base/BaseRemoteDataSource.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/BaseRemoteDataSource.java"/>

    <instantiate from="src/app_package/class/base/BaseFragment.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/BaseFragment.java" />

    <instantiate from="src/app_package/class/base/ResponsePaging.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/ResponsePaging.java" />
    
    <instantiate from="src/app_package/class/base/BaseResponse.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/BaseResponse.java" />

    <instantiate from="src/app_package/class/base/IBaseView.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/IBaseView.java" />

    <instantiate from="src/app_package/class/base/IBasePresenter.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/IBasePresenter.java" />

    <instantiate from="src/app_package/class/base/IBaseCallback.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/IBaseCallback.java" />

    <instantiate from="src/app_package/class/di/Injector.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/DataInjector.java"/>

    <instantiate from="src/app_package/class/di/IDataInjector.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/IDataInjector.java"/>

    <instantiate from="src/app_package/class/data/remote/api/ApiRetrofit.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/remote/api/ApiRetrofit.java"/>

    <instantiate from="src/app_package/class/data/remote/api/IApiEndpoint.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/remote/api/IApiEndpoint.java"/>

    <merge from="src/app_package/build.gradle.ftl"
            to="${escapeXmlAttribute(projectOut)}/build.gradle" />

    <merge from="build.gradle.ftl"
            to="${escapeXmlAttribute(topOut)}/build.gradle" />
</recipe>