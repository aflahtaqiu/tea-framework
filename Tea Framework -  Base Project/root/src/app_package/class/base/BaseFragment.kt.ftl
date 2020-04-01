package ${escapeKotlinIdentifiers(packageName)}.base

import android.app.ProgressDialog
import android.os.Bundle

import androidx.fragment.app.Fragment;

open class BaseFragment : Fragment() {

    open var progressDialog: ProgressDialog? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        progressDialog = ProgressDialog(context)
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