android {
    compileOptions {
        sourceCompatibility JavaVersion.VERSION_1_8
        targetCompatibility JavaVersion.VERSION_1_8
    }
}

dependencies {
    
    implementation 'com.google.android.material:material:1.0.0'

    // Butterknife
    implementation 'com.jakewharton:butterknife:10.1.0'
    annotationProcessor 'com.jakewharton:butterknife-compiler:10.1.0'

    // Lombok
    implementation 'org.projectlombok:lombok:1.18.8'
    annotationProcessor 'org.projectlombok:lombok:1.18.8'

    //Picasso
    implementation 'com.squareup.picasso:picasso:2.71828'

    // Room
    implementation 'android.arch.persistence.room:runtime:1.1.1'
    annotationProcessor 'android.arch.persistence.room:compiler:1.1.1'

    // Retrofit
    implementation 'com.squareup.retrofit2:retrofit:2.6.0'
    implementation 'com.squareup.retrofit2:converter-gson:2.5.0'

    //Stetho
    implementation 'com.facebook.stetho:stetho:1.5.0'

    // Tea Library
    implementation 'com.github.aflahtaqiu:tea-library:1.0' 
}