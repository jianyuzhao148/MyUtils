.class public Lcom/xsolla/android/login/XLogin;
.super Ljava/lang/Object;
.source "XLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/login/XLogin$SocialConfig;
    }
.end annotation


# static fields
.field private static instance:Lcom/xsolla/android/login/XLogin;

.field private static loginSocial:Lcom/xsolla/android/login/social/LoginSocial;


# instance fields
.field private loginApi:Lcom/xsolla/android/login/api/LoginApi;

.field private projectId:Ljava/lang/String;

.field private tokenUtils:Lcom/xsolla/android/login/token/TokenUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-object v0, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    sput-object v0, Lcom/xsolla/android/login/XLogin;->loginSocial:Lcom/xsolla/android/login/social/LoginSocial;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/login/token/TokenUtils;Lcom/xsolla/android/login/api/LoginApi;Lcom/xsolla/android/login/XLogin$SocialConfig;)V
    .locals 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/xsolla/android/login/XLogin;->projectId:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/xsolla/android/login/XLogin;->tokenUtils:Lcom/xsolla/android/login/token/TokenUtils;

    .line 53
    iput-object p5, p0, Lcom/xsolla/android/login/XLogin;->loginApi:Lcom/xsolla/android/login/api/LoginApi;

    .line 54
    sget-object v0, Lcom/xsolla/android/login/XLogin;->loginSocial:Lcom/xsolla/android/login/social/LoginSocial;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/xsolla/android/login/social/LoginSocial;->init(Landroid/content/Context;Lcom/xsolla/android/login/api/LoginApi;Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/login/XLogin$SocialConfig;)V

    return-void
.end method

.method public static finishSocialAuth(Landroid/content/Context;Lcom/xsolla/android/login/social/SocialNetwork;IILandroid/content/Intent;Lcom/xsolla/android/login/callback/FinishSocialCallback;)V
    .locals 7

    .line 200
    sget-object v0, Lcom/xsolla/android/login/XLogin;->loginSocial:Lcom/xsolla/android/login/social/LoginSocial;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xsolla/android/login/social/LoginSocial;->finishSocialAuth(Landroid/content/Context;Lcom/xsolla/android/login/social/SocialNetwork;IILandroid/content/Intent;Lcom/xsolla/android/login/callback/FinishSocialCallback;)V

    return-void
.end method

.method private static getInstance()Lcom/xsolla/android/login/XLogin;
    .locals 2

    .line 58
    sget-object v0, Lcom/xsolla/android/login/XLogin;->instance:Lcom/xsolla/android/login/XLogin;

    if-eqz v0, :cond_0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XLogin SDK not initialized. Call \"XLogin.init()\" in MainActivity.onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJwt()Lcom/xsolla/android/login/jwt/JWT;
    .locals 1

    .line 234
    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getInstance()Lcom/xsolla/android/login/XLogin;

    move-result-object v0

    iget-object v0, v0, Lcom/xsolla/android/login/XLogin;->tokenUtils:Lcom/xsolla/android/login/token/TokenUtils;

    invoke-virtual {v0}, Lcom/xsolla/android/login/token/TokenUtils;->getJwt()Lcom/xsolla/android/login/jwt/JWT;

    move-result-object v0

    return-object v0
.end method

.method public static getToken()Ljava/lang/String;
    .locals 1

    .line 70
    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getInstance()Lcom/xsolla/android/login/XLogin;

    move-result-object v0

    iget-object v0, v0, Lcom/xsolla/android/login/XLogin;->tokenUtils:Lcom/xsolla/android/login/token/TokenUtils;

    invoke-virtual {v0}, Lcom/xsolla/android/login/token/TokenUtils;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;Lcom/xsolla/android/login/XLogin$SocialConfig;)V
    .locals 1

    const-string v0, "https://login.xsolla.com/api/blank"

    .line 85
    invoke-static {p0, v0, p1, p2}, Lcom/xsolla/android/login/XLogin;->init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/xsolla/android/login/XLogin$SocialConfig;)V

    return-void
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/xsolla/android/login/XLogin$SocialConfig;)V
    .locals 8

    .line 97
    new-instance v0, Lcom/xsolla/android/login/XLogin$1;

    invoke-direct {v0}, Lcom/xsolla/android/login/XLogin$1;-><init>()V

    .line 119
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 122
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "https://login.xsolla.com"

    .line 123
    invoke-virtual {v0, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 124
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 125
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 126
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 128
    const-class v1, Lcom/xsolla/android/login/api/LoginApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/xsolla/android/login/api/LoginApi;

    .line 129
    new-instance v5, Lcom/xsolla/android/login/token/TokenUtils;

    invoke-direct {v5, p2}, Lcom/xsolla/android/login/token/TokenUtils;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v0, Lcom/xsolla/android/login/XLogin;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/xsolla/android/login/XLogin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/login/token/TokenUtils;Lcom/xsolla/android/login/api/LoginApi;Lcom/xsolla/android/login/XLogin$SocialConfig;)V

    sput-object v0, Lcom/xsolla/android/login/XLogin;->instance:Lcom/xsolla/android/login/XLogin;

    return-void
.end method

.method public static isTokenExpired()Z
    .locals 3

    .line 223
    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getInstance()Lcom/xsolla/android/login/XLogin;

    move-result-object v0

    iget-object v0, v0, Lcom/xsolla/android/login/XLogin;->tokenUtils:Lcom/xsolla/android/login/token/TokenUtils;

    invoke-virtual {v0}, Lcom/xsolla/android/login/token/TokenUtils;->getJwt()Lcom/xsolla/android/login/jwt/JWT;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/16 v1, 0x78

    .line 225
    invoke-virtual {v0, v1, v2}, Lcom/xsolla/android/login/jwt/JWT;->isExpired(J)Z

    move-result v0

    return v0
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/login/api/XLoginCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xsolla/android/login/api/XLoginCallback<",
            "Lcom/xsolla/android/login/entity/response/AuthResponse;",
            ">;)V"
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/xsolla/android/login/entity/request/AuthUserBody;

    invoke-direct {v0, p0, p1}, Lcom/xsolla/android/login/entity/request/AuthUserBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getInstance()Lcom/xsolla/android/login/XLogin;

    move-result-object p0

    iget-object p0, p0, Lcom/xsolla/android/login/XLogin;->loginApi:Lcom/xsolla/android/login/api/LoginApi;

    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getInstance()Lcom/xsolla/android/login/XLogin;

    move-result-object p1

    iget-object p1, p1, Lcom/xsolla/android/login/XLogin;->projectId:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lcom/xsolla/android/login/api/LoginApi;->login(Ljava/lang/String;Lcom/xsolla/android/login/entity/request/AuthUserBody;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public static logout()V
    .locals 1

    .line 219
    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getInstance()Lcom/xsolla/android/login/XLogin;

    move-result-object v0

    iget-object v0, v0, Lcom/xsolla/android/login/XLogin;->tokenUtils:Lcom/xsolla/android/login/token/TokenUtils;

    invoke-virtual {v0}, Lcom/xsolla/android/login/token/TokenUtils;->clearToken()V

    return-void
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/login/api/XLoginCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xsolla/android/login/api/XLoginCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/xsolla/android/login/entity/request/RegisterUserBody;

    invoke-direct {v0, p0, p1, p2}, Lcom/xsolla/android/login/entity/request/RegisterUserBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getInstance()Lcom/xsolla/android/login/XLogin;

    move-result-object p0

    iget-object p0, p0, Lcom/xsolla/android/login/XLogin;->loginApi:Lcom/xsolla/android/login/api/LoginApi;

    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getInstance()Lcom/xsolla/android/login/XLogin;

    move-result-object p1

    iget-object p1, p1, Lcom/xsolla/android/login/XLogin;->projectId:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lcom/xsolla/android/login/api/LoginApi;->registerUser(Ljava/lang/String;Lcom/xsolla/android/login/entity/request/RegisterUserBody;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public static saveToken(Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getInstance()Lcom/xsolla/android/login/XLogin;

    move-result-object v0

    iget-object v0, v0, Lcom/xsolla/android/login/XLogin;->tokenUtils:Lcom/xsolla/android/login/token/TokenUtils;

    invoke-virtual {v0, p0}, Lcom/xsolla/android/login/token/TokenUtils;->saveToken(Ljava/lang/String;)V

    return-void
.end method

.method public static startSocialAuth(Landroid/app/Activity;Lcom/xsolla/android/login/social/SocialNetwork;Lcom/xsolla/android/login/callback/StartSocialCallback;)V
    .locals 2

    .line 184
    sget-object v0, Lcom/xsolla/android/login/XLogin;->loginSocial:Lcom/xsolla/android/login/social/LoginSocial;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/xsolla/android/login/social/LoginSocial;->startSocialAuth(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/xsolla/android/login/social/SocialNetwork;Lcom/xsolla/android/login/callback/StartSocialCallback;)V

    return-void
.end method
