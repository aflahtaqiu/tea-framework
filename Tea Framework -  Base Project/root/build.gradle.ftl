buildscript {
    dependencies {
        classpath "androidx.navigation:navigation-safe-args-gradle-plugin:2.3.0-alpha04"
    }
}

allprojects {
    repositories {
        maven { url 'https://jitpack.io' }
    }
}