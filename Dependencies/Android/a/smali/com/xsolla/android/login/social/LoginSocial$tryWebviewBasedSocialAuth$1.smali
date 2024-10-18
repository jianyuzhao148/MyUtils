.class public final Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;
.super Ljava/lang/Object;
.source "LoginSocial.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/login/social/LoginSocial;->tryWebviewBasedSocialAuth(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/xsolla/android/login/social/SocialNetwork;Lcom/xsolla/android/login/callback/StartSocialCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/xsolla/android/login/entity/response/LinkForSocialAuthResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginSocial.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginSocial.kt\ncom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1\n*L\n1#1,319:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Lcom/xsolla/android/login/callback/StartSocialCallback;

.field final synthetic $fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lcom/xsolla/android/login/callback/StartSocialCallback;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;->$callback:Lcom/xsolla/android/login/callback/StartSocialCallback;

    iput-object p2, p0, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;->$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/xsolla/android/login/entity/response/LinkForSocialAuthResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "t.javaClass.name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    :goto_0
    iget-object p2, p0, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;->$callback:Lcom/xsolla/android/login/callback/StartSocialCallback;

    invoke-interface {p2, p1}, Lcom/xsolla/android/login/callback/StartSocialCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/xsolla/android/login/entity/response/LinkForSocialAuthResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/xsolla/android/login/entity/response/LinkForSocialAuthResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 238
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xsolla/android/login/entity/response/LinkForSocialAuthResponse;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xsolla/android/login/entity/response/LinkForSocialAuthResponse;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;->$callback:Lcom/xsolla/android/login/callback/StartSocialCallback;

    const-string p2, "Empty response"

    invoke-interface {p1, p2}, Lcom/xsolla/android/login/callback/StartSocialCallback;->onError(Ljava/lang/String;)V

    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;->$activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 244
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;->$activity:Landroid/app/Activity;

    const-class v2, Lcom/xsolla/android/login/ui/ActivityAuthWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 246
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;->$fragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xsolla/android/login/ui/ActivityAuthWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    const-string v1, "auth_url"

    .line 249
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    sget-object p1, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    invoke-static {p1}, Lcom/xsolla/android/login/social/LoginSocial;->access$getCallbackUrl$p(Lcom/xsolla/android/login/social/LoginSocial;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "callback_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object p1, p0, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;->$activity:Landroid/app/Activity;

    const/16 v1, 0x7918

    if-eqz p1, :cond_3

    .line 253
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 255
    :cond_3
    iget-object p1, p0, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;->$fragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 257
    :goto_2
    iget-object p1, p0, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;->$callback:Lcom/xsolla/android/login/callback/StartSocialCallback;

    invoke-interface {p1}, Lcom/xsolla/android/login/callback/StartSocialCallback;->onAuthStarted()V

    goto :goto_4

    .line 255
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2

    .line 246
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2

    .line 259
    :cond_6
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 261
    sget-object p2, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    invoke-static {p2, p1}, Lcom/xsolla/android/login/social/LoginSocial;->access$getErrorMessage(Lcom/xsolla/android/login/social/LoginSocial;Lokhttp3/ResponseBody;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    const-string p1, "Error"

    .line 265
    :goto_3
    iget-object p2, p0, Lcom/xsolla/android/login/social/LoginSocial$tryWebviewBasedSocialAuth$1;->$callback:Lcom/xsolla/android/login/callback/StartSocialCallback;

    invoke-interface {p2, p1}, Lcom/xsolla/android/login/callback/StartSocialCallback;->onError(Ljava/lang/String;)V

    :goto_4
    return-void
.end method
