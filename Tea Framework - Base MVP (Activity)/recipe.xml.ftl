<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/class/module/Activity.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/module/${folderName}/${activityClass}.java" />

    <instantiate from="src/app_package/class/module/IView.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/module/${folderName}/${viewClass}.java" />

    <instantiate from="src/app_package/class/module/IPresenter.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/module/${folderName}/I${presenterClass}.java" />

    <instantiate from="src/app_package/class/module/Presenter.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/module/${folderName}/${presenterClass}.java" />

    <instantiate from="src/app_package/class/module/ModuleInjector.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/module/${folderName}/${underscoreToCamelCase(folderName)}Injector.java"/>
    
    <instantiate from="src/app_package/layout/activity_layout.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
        
    <merge 
        from="AndroidManifest.xml.ftl"
        to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml"/>

    <open file="${srcOut}/${activityClass}Activity.java"/>
    
</recipe>