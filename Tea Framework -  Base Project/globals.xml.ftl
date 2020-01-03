<?xml version="1.0"?>
<globals>

    <#include "root://gradle-projects/common/globals.xml.ftl" />
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />

    <#include "../../activities/common/common_globals.xml.ftl" />
</globals>