.class public final Lcom/xsolla/android/login/social/LoginSocial;
.super Ljava/lang/Object;
.source "LoginSocial.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginSocial.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginSocial.kt\ncom/xsolla/android/login/social/LoginSocial\n*L\n1#1,319:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

.field private static callbackUrl:Ljava/lang/String;

.field private static facebookAppId:Ljava/lang/String;

.field private static fbCallback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;"
        }
    .end annotation
.end field

.field private static fbCallbackManager:Lcom/facebook/CallbackManager;

.field private static finishSocialCallback:Lcom/xsolla/android/login/callback/FinishSocialCallback;

.field private static googleAvailable:Z

.field private static googleServerId:Ljava/lang/String;

.field private static loginApi:Lcom/xsolla/android/login/api/LoginApi;

.field private static projectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/xsolla/android/login/social/LoginSocial;

    invoke-direct {v0}, Lcom/xsolla/android/login/social/LoginSocial;-><init>()V

    sput-object v0, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCallbackUrl$p(Lcom/xsolla/android/login/social/LoginSocial;)Ljava/lang/String;
    .locals 0

    .line 37
    sget-object p0, Lcom/xsolla/android/login/social/LoginSocial;->callbackUrl:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "callbackUrl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getErrorMessage(Lcom/xsolla/android/login/social/LoginSocial;Lokhttp3/ResponseBody;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/xsolla/android/login/social/LoginSocial;->getErrorMessage(Lokhttp3/ResponseBody;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFinishSocialCallback$p(Lcom/xsolla/android/login/social/LoginSocial;)Lcom/xsolla/android/login/callback/FinishSocialCallback;
    .locals 0

    .line 37
    sget-object p0, Lcom/xsolla/android/login/social/LoginSocial;->finishSocialCallback:Lcom/xsolla/android/login/callback/FinishSocialCallback;

    return-object p0
.end method

.method public static final synthetic access$getJwtFromSocial(Lcom/xsolla/android/login/social/LoginSocial;Lcom/xsolla/android/login/social/SocialNetwork;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/xsolla/android/login/social/LoginSocial;->getJwtFromSocial(Lcom/xsolla/android/login/social/SocialNetwork;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$setFinishSocialCallback$p(Lcom/xsolla/android/login/social/LoginSocial;Lcom/xsolla/android/login/callback/FinishSocialCallback;)V
    .locals 0

    .line 37
    sput-object p1, Lcom/xsolla/android/login/social/LoginSocial;->finishSocialCallback:Lcom/xsolla/android/login/callback/FinishSocialCallback;

    return-void
.end method

.method public static final synthetic access$tryWebviewBasedSocialAuth(Lcom/xsolla/android/login/social/LoginSocial;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/xsolla/android/login/social/SocialNetwork;Lcom/xsolla/android/login/callback/StartSocialCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xsolla/android/login/social/LoginSocial;->tryWebviewBasedSocialAuth(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/xsolla/android/login/social/SocialNetwork;Lcom/xsolla/android/login/callback/StartSocialCallback;)V

    return-void
.end method

.method private final getErrorMessage(Lokhttp3/ResponseBody;)Ljava/lang/String;
    .locals 1

    .line 278
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "error"

    .line 279
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "errorObject.getJSONObjec\u2026.getString(\"description\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 283
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 281
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p1, "Unknown Error"

    return-object p1
.end method

.method private final getJwtFromSocial(Lcom/xsolla/android/login/social/SocialNetwork;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xsolla/android/login/social/SocialNetwork;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 289
    new-instance v0, Lcom/xsolla/android/login/entity/request/AuthUserSocialBody;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/xsolla/android/login/entity/request/AuthUserSocialBody;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 290
    sget-object p2, Lcom/xsolla/android/login/social/LoginSocial;->loginApi:Lcom/xsolla/android/login/api/LoginApi;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/xsolla/android/login/social/SocialNetwork;->providerName:Ljava/lang/String;

    sget-object v2, Lcom/xsolla/android/login/social/LoginSocial;->projectId:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-interface {p2, p1, v2, v0}, Lcom/xsolla/android/login/api/LoginApi;->loginSocial(Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/login/entity/request/AuthUserSocialBody;)Lretrofit2/Call;

    move-result-object p1

    .line 291
    new-instance p2, Lcom/xsolla/android/login/social/LoginSocial$getJwtFromSocial$1;

    invoke-direct {p2, p3}, Lcom/xsolla/android/login/social/LoginSocial$getJwtFromSocial$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 290
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    :cond_0
    const-string p1, "projectId"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "loginApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final initFacebook(Landroid/content/Context;)V
    .locals 3

    .line 71
    :try_start_0
    sget-object v0, Lcom/xsolla/android/login/social/LoginSocial;->facebookAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setApplicationId(Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    const-string v0, "CallbackManager.Factory.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/xsolla/android/login/social/LoginSocial;->fbCallbackManager:Lcom/facebook/CallbackManager;

    .line 74
    new-instance p1, Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1;

    invoke-direct {p1}, Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1;-><init>()V

    sput-object p1, Lcom/xsolla/android/login/social/LoginSocial;->fbCallback:Lcom/facebook/FacebookCallback;

    .line 108
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    sget-object v0, Lcom/xsolla/android/login/social/LoginSocial;->fbCallbackManager:Lcom/facebook/CallbackManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/xsolla/android/login/social/LoginSocial;->fbCallback:Lcom/facebook/FacebookCallback;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void

    :cond_0
    const-string p1, "fbCallback"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    throw v1

    :cond_1
    :try_start_1
    const-string p1, "fbCallbackManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    throw v1

    .line 110
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "google native SDK is not bundled. you should add \'com.xsolla.android:login-facebook\' dependency to enable the native auth."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final initGoogle()V
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms.auth.api.identity.Identity"

    .line 116
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 117
    sput-boolean v0, Lcom/xsolla/android/login/social/LoginSocial;->googleAvailable:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 119
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "google native SDK is not bundled. you should add \'com.xsolla.android:login-google\' dependency to enable the native auth."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final tryNativeSocialAuth(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/xsolla/android/login/social/SocialNetwork;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/xsolla/android/login/social/SocialNetwork;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/xsolla/android/login/social/SocialNetwork;->FACEBOOK:Lcom/xsolla/android/login/social/SocialNetwork;

    if-ne p3, v0, :cond_1

    sget-object v0, Lcom/xsolla/android/login/social/LoginSocial;->fbCallbackManager:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 191
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1, p3}, Lcom/facebook/login/LoginManager;->logIn(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/facebook/login/LoginManager;->logIn(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V

    .line 195
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 198
    :cond_1
    sget-object v0, Lcom/xsolla/android/login/social/SocialNetwork;->GOOGLE:Lcom/xsolla/android/login/social/SocialNetwork;

    if-ne p3, v0, :cond_6

    sget-boolean p3, Lcom/xsolla/android/login/social/LoginSocial;->googleAvailable:Z

    if-eqz p3, :cond_6

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 199
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, p3

    :goto_1
    if-eqz v0, :cond_5

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/auth/api/identity/Identity;->getSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/identity/SignInClient;

    move-result-object v0

    .line 200
    invoke-static {}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;->builder()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;

    move-result-object v1

    .line 202
    invoke-static {}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->builder()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 203
    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->setSupported(Z)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;

    .line 204
    sget-object v3, Lcom/xsolla/android/login/social/LoginSocial;->googleServerId:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->setServerClientId(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;

    const/4 p3, 0x0

    .line 205
    invoke-virtual {v2, p3}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->setFilterByAuthorizedAccounts(Z)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;

    .line 206
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->build()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;

    move-result-object p3

    .line 201
    invoke-virtual {v1, p3}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->setGoogleIdTokenRequestOptions(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;

    .line 208
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->build()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;

    move-result-object p3

    .line 209
    invoke-interface {v0, p3}, Lcom/google/android/gms/auth/api/identity/SignInClient;->beginSignIn(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    .line 210
    new-instance v0, Lcom/xsolla/android/login/social/LoginSocial$tryNativeSocialAuth$2;

    invoke-direct {v0, p1, p2, p4}, Lcom/xsolla/android/login/social/LoginSocial$tryNativeSocialAuth$2;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 225
    new-instance p2, Lcom/xsolla/android/login/social/LoginSocial$tryNativeSocialAuth$3;

    invoke-direct {p2, p4}, Lcom/xsolla/android/login/social/LoginSocial$tryNativeSocialAuth$3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 204
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p3

    .line 199
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p3

    .line 231
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final tryWebviewBasedSocialAuth(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/xsolla/android/login/social/SocialNetwork;Lcom/xsolla/android/login/callback/StartSocialCallback;)V
    .locals 3

    .line 235
    sget-object v0, Lcom/xsolla/android/login/social/LoginSocial;->loginApi:Lcom/xsolla/android/login/api/LoginApi;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p3, p3, Lcom/xsolla/android/login/social/SocialNetwork;->providerName:Ljava/lang/String;

    sget-object v2, Lcom/xsolla/android/login/social/LoginSocial;->projectId:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-interface {v0, p3, v2}, Lcom/xsolla/android/login/api/LoginApi;->getLinkForSocialAuth(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p3

    new-instance v0, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;

    invoke-direct {v0, p4, p1, p2}, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;-><init>(Lcom/xsolla/android/login/callback/StartSocialCallback;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    invoke-interface {p3, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    :cond_0
    const-string p1, "projectId"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "loginApi"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final finishSocialAuth(Landroid/content/Context;Lcom/xsolla/android/login/social/SocialNetwork;IILandroid/content/Intent;Lcom/xsolla/android/login/callback/FinishSocialCallback;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialNetwork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x7918

    if-ne p3, v1, :cond_4

    .line 135
    sget-object p1, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;->Companion:Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result$Companion;

    invoke-virtual {p1, p5}, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result$Companion;->fromResultIntent(Landroid/content/Intent;)Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;->component1()Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;->component2()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;->component3()Ljava/lang/String;

    move-result-object p1

    .line 136
    sget-object p4, Lcom/xsolla/android/login/social/LoginSocial$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p4, p2

    const/4 p4, 0x1

    if-eq p2, p4, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 142
    invoke-interface {p6, p1}, Lcom/xsolla/android/login/callback/FinishSocialCallback;->onAuthError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 141
    :cond_2
    invoke-interface {p6}, Lcom/xsolla/android/login/callback/FinishSocialCallback;->onAuthCancelled()V

    goto :goto_0

    .line 138
    :cond_3
    invoke-static {p3}, Lcom/xsolla/android/login/XLogin;->saveToken(Ljava/lang/String;)V

    .line 139
    invoke-interface {p6}, Lcom/xsolla/android/login/callback/FinishSocialCallback;->onAuthSuccess()V

    :goto_0
    return-void

    .line 146
    :cond_4
    sget-object v1, Lcom/xsolla/android/login/social/SocialNetwork;->FACEBOOK:Lcom/xsolla/android/login/social/SocialNetwork;

    if-ne p2, v1, :cond_6

    sget-object v1, Lcom/xsolla/android/login/social/LoginSocial;->fbCallbackManager:Lcom/facebook/CallbackManager;

    if-eqz v1, :cond_6

    .line 147
    sput-object p6, Lcom/xsolla/android/login/social/LoginSocial;->finishSocialCallback:Lcom/xsolla/android/login/callback/FinishSocialCallback;

    if-eqz v1, :cond_5

    .line 148
    invoke-interface {v1, p3, p4, p5}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    return-void

    :cond_5
    const-string p1, "fbCallbackManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 p4, 0x7919

    if-ne p3, p4, :cond_a

    .line 151
    sget-object p3, Lcom/xsolla/android/login/social/SocialNetwork;->GOOGLE:Lcom/xsolla/android/login/social/SocialNetwork;

    if-ne p2, p3, :cond_a

    .line 153
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/auth/api/identity/Identity;->getSignInClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/SignInClient;

    move-result-object p2

    .line 154
    invoke-interface {p2, p5}, Lcom/google/android/gms/auth/api/identity/SignInClient;->getSignInCredentialFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/identity/SignInCredential;

    move-result-object p2

    const-string p3, "credential"

    .line 155
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getGoogleIdToken()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    const-string p1, "idToken is null"

    .line 157
    invoke-interface {p6, p1}, Lcom/xsolla/android/login/callback/FinishSocialCallback;->onAuthError(Ljava/lang/String;)V

    goto :goto_2

    .line 159
    :cond_7
    new-instance p3, Lcom/auth0/android/jwt/JWT;

    invoke-direct {p3, p2}, Lcom/auth0/android/jwt/JWT;-><init>(Ljava/lang/String;)V

    const-string p2, "email"

    invoke-virtual {p3, p2}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object p2

    invoke-interface {p2}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object p2

    .line 160
    new-instance p3, Ljava/lang/Thread;

    new-instance p4, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;

    invoke-direct {p4, p1, p2, p6}, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xsolla/android/login/callback/FinishSocialCallback;)V

    invoke-direct {p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p2

    const/16 p3, 0x10

    if-ne p2, p3, :cond_8

    .line 180
    invoke-interface {p6}, Lcom/xsolla/android/login/callback/FinishSocialCallback;->onAuthCancelled()V

    goto :goto_2

    .line 182
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p1, "e.javaClass.name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p6, p2}, Lcom/xsolla/android/login/callback/FinishSocialCallback;->onAuthError(Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public final init(Landroid/content/Context;Lcom/xsolla/android/login/api/LoginApi;Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/login/XLogin$SocialConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sput-object p2, Lcom/xsolla/android/login/social/LoginSocial;->loginApi:Lcom/xsolla/android/login/api/LoginApi;

    .line 60
    sput-object p3, Lcom/xsolla/android/login/social/LoginSocial;->projectId:Ljava/lang/String;

    .line 61
    sput-object p4, Lcom/xsolla/android/login/social/LoginSocial;->callbackUrl:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    .line 62
    iget-object p3, p5, Lcom/xsolla/android/login/XLogin$SocialConfig;->facebookAppId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    sput-object p3, Lcom/xsolla/android/login/social/LoginSocial;->facebookAppId:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 63
    iget-object p2, p5, Lcom/xsolla/android/login/XLogin$SocialConfig;->googleServerId:Ljava/lang/String;

    :cond_1
    sput-object p2, Lcom/xsolla/android/login/social/LoginSocial;->googleServerId:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 65
    sget-object p2, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    invoke-direct {p2, p1}, Lcom/xsolla/android/login/social/LoginSocial;->initFacebook(Landroid/content/Context;)V

    .line 66
    :cond_2
    sget-object p1, Lcom/xsolla/android/login/social/LoginSocial;->googleServerId:Ljava/lang/String;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    invoke-direct {p1}, Lcom/xsolla/android/login/social/LoginSocial;->initGoogle()V

    :cond_3
    return-void
.end method

.method public final startSocialAuth(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/xsolla/android/login/social/SocialNetwork;Lcom/xsolla/android/login/callback/StartSocialCallback;)V
    .locals 1

    const-string v0, "socialNetwork"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/xsolla/android/login/social/LoginSocial$startSocialAuth$1;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/xsolla/android/login/social/LoginSocial$startSocialAuth$1;-><init>(Lcom/xsolla/android/login/callback/StartSocialCallback;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/xsolla/android/login/social/SocialNetwork;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xsolla/android/login/social/LoginSocial;->tryNativeSocialAuth(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/xsolla/android/login/social/SocialNetwork;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
