package ${packageName};

import android.app.Application;


class App : Application() {
    override fun onCreate() {
        super.onCreate()
        addModuleDependency()
    }

    fun addModuleDependency() {
        // TODO: Add your instance of module dependencies here
    }
}