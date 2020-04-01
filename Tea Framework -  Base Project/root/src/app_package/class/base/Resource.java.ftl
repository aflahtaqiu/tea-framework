package ${packageName}.base;


import androidx.annotation.IntDef;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/**
 * A generic class that holds a value with its loading status.
 * @param <T>
 */
public class BaseResponse<T>
{
    public static final int SUCCESS = 90;
    public static final int LOADING = 91;
    public static final int ERROR = 92;

    @Retention(RetentionPolicy.SOURCE)
    @IntDef({SUCCESS,LOADING,ERROR})
    @interface Status{}

    public final int status;

    @Nullable
    public String message;

    @Nullable
    public T data;

    @Nullable
    public Integer errorType;
    @Nullable
    public Object miscInfo;

    public BaseResponse(@Status int status, @Nullable T data, @Nullable String message) {
        this.status = status;
        this.data = data;
        this.message = message;
    }

    public BaseResponse(int status, @Nullable Integer errorType) {
        this.status = status;
        this.errorType = errorType;
    }

    public BaseResponse(int status, @Nullable Integer errorType, String msg) {
        this.status = status;
        this.errorType = errorType;
        this.message = msg;
    }

    public BaseResponse(int status, @Nullable Object miscInfo) {
        this.status = status;
        this.miscInfo = miscInfo;
    }

    public static <T> BaseResponse<T> success(@Nullable T data) {
        return new BaseResponse<>(SUCCESS, data, null);
    }

    public static <T> BaseResponse<T> error(String msg, @Nullable T data) {
        return new BaseResponse<>(ERROR, data, msg);
    }

    public static <T> BaseResponse<T> error(String msg, @Nullable Integer errorType) {
        return new BaseResponse<>(ERROR, errorType, msg);
    }

    public static <T> BaseResponse<T> errorWithMisc(@Nullable Object miscInfo) {
        return new BaseResponse<>(ERROR, miscInfo);
    }

    public static <T> BaseResponse<T> error(@Nullable Integer errorType)
    {
        return new BaseResponse<>(ERROR, errorType);
    }


    public static <T> BaseResponse<T> loading(@Nullable T data) {
        return new BaseResponse<>(LOADING, data, null);
    }

    public void attachErrorType(@NonNull Integer errorType)
    {
        this.errorType = errorType;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }

        BaseResponse<?> BaseResponse = (BaseResponse<?>) o;

        if (status != BaseResponse.status) {
            return false;
        }
        if (message != null ? !message.equals(BaseResponse.message) : BaseResponse.message != null) {
            return false;
        }
        return data != null ? data.equals(BaseResponse.data) : BaseResponse.data == null;
    }

    @Override
    public String toString() {
        return "BaseResponse{" +
                "status=" + status +
                ", message='" + message + '\'' +
                ", data=" + data +
                '}';
    }
}
