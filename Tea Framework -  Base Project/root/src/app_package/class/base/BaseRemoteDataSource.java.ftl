package ${packageName}.base;

import ${packageName}.data.remote.api.IApiEndpoint;
import ${packageName}.data.remote.api.ApiRetrofit;

public class BaseRemoteDataSource {
    protected IApiEndpoint apiEndpoint = ApiRetrofit.getInstance().create(IApiEndpoint.class);
}