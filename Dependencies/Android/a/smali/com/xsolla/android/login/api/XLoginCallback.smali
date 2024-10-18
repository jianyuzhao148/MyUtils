.class public abstract Lcom/xsolla/android/login/api/XLoginCallback;
.super Ljava/lang/Object;
.source "XLoginCallback.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final SERVER_IS_NOT_RESPONDING:Ljava/lang/String; = "Server is not responding. Please try later."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getErrorMessage(Lokhttp3/ResponseBody;)Ljava/lang/String;
    .locals 1

    .line 53
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "error"

    .line 54
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 56
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p1, "Unknown Error"

    return-object p1
.end method


# virtual methods
.method protected handleAuthResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/xsolla/android/login/entity/response/AuthResponse;

    invoke-virtual {v0}, Lcom/xsolla/android/login/entity/response/AuthResponse;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/xsolla/android/login/XLogin;->saveToken(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/xsolla/android/login/api/XLoginCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    instance-of v0, p1, Lcom/xsolla/android/login/entity/response/AuthResponse;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/xsolla/android/login/api/XLoginCallback;->handleAuthResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xsolla/android/login/api/XLoginCallback;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected abstract onFailure(Ljava/lang/String;)V
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string p1, "Server is not responding. Please try later."

    .line 36
    invoke-virtual {p0, p1}, Lcom/xsolla/android/login/api/XLoginCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xsolla/android/login/api/XLoginCallback;->handleResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xsolla/android/login/api/XLoginCallback;->getErrorMessage(Lokhttp3/ResponseBody;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/xsolla/android/login/api/XLoginCallback;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
