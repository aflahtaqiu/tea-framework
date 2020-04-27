package ${escapeKotlinIdentifiers(packageName)}.module.${folderName}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

import ${escapeKotlinIdentifiers(packageName)}.R
import ${escapeKotlinIdentifiers(packageName)}.base.BaseFragment


class ${activityClass} : BaseFragment() , ${viewClass} {
    
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        val view: View = inflater.inflate(R.layout.${layoutName}, container, false)
        return view
    }

    override fun showLoading(message: String?) {
        super.onShowLoading(message)
    }

    override fun hideLoading() {
        super.onHideLoading()
    }

    override fun showMessage(message: String?) {}

    override fun injectPresenter() {
        presenter!!.injectView(this)
    }

    companion object {
        private var presenter: I${presenterClass}? = null
        fun injectI${presenterClass}(_presenter: I${presenterClass}?) {
            presenter = _presenter
        }
    }
}