package ${escapeKotlinIdentifiers(packageName)}.module.${folderName}

import android.os.Bundle

import ${escapeKotlinIdentifiers(packageName)}.R
import ${escapeKotlinIdentifiers(packageName)}.base.BaseActivity


class ${activityClass} : BaseActivity() , ${viewClass} {
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})
        ${presenterClass}.inject${viewClass}(this)
    }

    override fun showLoading(message: String?) {
        super.onShowLoading(message)
    }

    override fun hideLoading() {
        super.onHideLoading()
    }

    override fun showMessage(message: String?) {}

    companion object {
        private var presenter: I${presenterClass}? = null
        private val instance: ${activityClass}? = null
        fun injectI${presenterClass}(_presenter: I${presenterClass}?) {
            presenter = _presenter
        }
    }
}