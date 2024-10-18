.class public interface abstract Lcom/xsolla/android/login/api/LoginApi;
.super Ljava/lang/Object;
.source "LoginApi.java"


# virtual methods
.method public abstract getLinkForSocialAuth(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "providerName"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "projectId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/xsolla/android/login/entity/response/LinkForSocialAuthResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/social/{providerName}/login_url"
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;Lcom/xsolla/android/login/entity/request/AuthUserBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "projectId"
        .end annotation
    .end param
    .param p2    # Lcom/xsolla/android/login/entity/request/AuthUserBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xsolla/android/login/entity/request/AuthUserBody;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/xsolla/android/login/entity/response/AuthResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/login"
    .end annotation
.end method

.method public abstract loginSocial(Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/login/entity/request/AuthUserSocialBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "providerName"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "projectId"
        .end annotation
    .end param
    .param p3    # Lcom/xsolla/android/login/entity/request/AuthUserSocialBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xsolla/android/login/entity/request/AuthUserSocialBody;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/xsolla/android/login/entity/response/AuthSocialResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/social/{providerName}/login_with_token"
    .end annotation
.end method

.method public abstract registerUser(Ljava/lang/String;Lcom/xsolla/android/login/entity/request/RegisterUserBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "projectId"
        .end annotation
    .end param
    .param p2    # Lcom/xsolla/android/login/entity/request/RegisterUserBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xsolla/android/login/entity/request/RegisterUserBody;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/user"
    .end annotation
.end method
