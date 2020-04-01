<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/class/module/Fragment.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/module/${folderName}/${activityClass}.${ktOrJavaExt}" />

    <instantiate from="src/app_package/class/module/IView.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/module/${folderName}/${viewClass}.${ktOrJavaExt}" />

    <instantiate from="src/app_package/class/module/IPresenter.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/module/${folderName}/I${presenterClass}.${ktOrJavaExt}" />

    <instantiate from="src/app_package/class/module/Presenter.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/module/${folderName}/${presenterClass}.${ktOrJavaExt}" />

    <instantiate from="src/app_package/class/module/ModuleInjector.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/module/${folderName}/${underscoreToCamelCase(folderName)}Injector.${ktOrJavaExt}"/>
    
    <instantiate from="src/app_package/layout/activity_layout.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <open file="${srcOut}/${activityClass}Activity.${ktOrJavaExt}java"/>
    
</recipe>