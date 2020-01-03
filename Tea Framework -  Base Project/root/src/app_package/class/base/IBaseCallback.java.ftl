package ${packageName}.base;



public interface IBaseCallback<T> {
    void onSuccess (T data);
    void onError (String errorMessage);
}