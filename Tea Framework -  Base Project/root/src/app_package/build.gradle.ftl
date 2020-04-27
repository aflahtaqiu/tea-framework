aapply plugin: 'androidx.navigation.safeargs'
android {
    viewBinding {
        enabled = true
    }
}

dependencies {

    <#if generateKotlin>
        // Kotlin coroutines
        implementation 'org.jetbrains.kotlinx:kotlinx-coroutines-core:1.3.0'
        implementation 'org.jetbrains.kotlinx:kotlinx-coroutines-android:1.3.0'

        implementation 'com.jakewharton.retrofit:retrofit2-kotlin-coroutines-adapter:0.9.2'
        implementation 'com.squareup.okhttp3:logging-interceptor:3.12.1'

        implementation 'androidx.lifecycle:lifecycle-extensions:2.2.0'
        implementation 'androidx.lifecycle:lifecycle-viewmodel-ktx:2.2.0'
        
    </#if>

    <#if !generateKotlin>
        // Lombok
        compileOnly 'org.projectlombok:lombok:1.18.8'
        annotationProcessor 'org.projectlombok:lombok:1.18.8'
    </#if>
    
    implementation 'com.google.android.material:material:1.1.0'

    //Picasso
    implementation 'com.squareup.picasso:picasso:2.71828'

    // Room
    implementation 'android.arch.persistence.room:runtime:1.1.1'
    annotationProcessor 'android.arch.persistence.room:compiler:1.1.1'

    // Retrofit
    implementation 'com.squareup.retrofit2:retrofit:2.5.0'
    implementation 'com.squareup.retrofit2:converter-gson:2.5.0'

    //Stetho
    implementation 'com.facebook.stetho:stetho:1.5.0'

    // Tea Library
    implementation 'com.github.aflahtaqiu:tea-library:1.0' 

    //circular imageview
    implementation 'de.hdodenhof:circleimageview:3.0.0'

    implementation 'androidx.navigation:navigation-fragment:2.2.2'
    implementation 'androidx.navigation:navigation-ui:2.2.2'
}

 