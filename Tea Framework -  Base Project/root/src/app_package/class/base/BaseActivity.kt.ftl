package ${escapeKotlinIdentifiers(packageName)}.base

import android.app.ProgressDialog
import android.os.Bundle

import ${superClassFqcn}

open class BaseActivity : AppCompatActivity() {

    open var progressDialog: ProgressDialog? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        progressDialog = ProgressDialog(this)
    }

    open fun onShowLoading(message: String?) {
        progressDialog!!.setMessage(message)
        if (!progressDialog!!.isShowing) {
            progressDialog!!.show()
        }
    }

    open fun onHideLoading() {
        if (progressDialog!!.isShowing) {
            progressDialog!!.dismiss()
        }
    }
}