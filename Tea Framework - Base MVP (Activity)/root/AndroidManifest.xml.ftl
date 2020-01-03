<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application
        android:name=".App">
        <activity 
            android:name=".module.${folderName}.${activityClass}">

            <#if isLauncher>
                <intent-filter>
                    <action android:name="android.intent.action.MAIN" />
                    <category android:name="android.intent.category.LAUNCHER" />
                </intent-filter>
            </#if>
        </activity>
    </application>

</manifest>