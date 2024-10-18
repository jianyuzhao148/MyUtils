.class public final Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1;
.super Ljava/lang/Object;
.source "LoginSocial.kt"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/login/social/LoginSocial;->initFacebook(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .line 88
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    sget-object v2, Lcom/xsolla/android/login/social/SocialNetwork;->FACEBOOK:Lcom/xsolla/android/login/social/SocialNetwork;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AccessToken.getCurrentAccessToken()!!.token"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1$onCancel$1;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1$onCancel$1;

    invoke-static {v0, v2, v1, v3}, Lcom/xsolla/android/login/social/LoginSocial;->access$getJwtFromSocial(Lcom/xsolla/android/login/social/LoginSocial;Lcom/xsolla/android/login/social/SocialNetwork;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 98
    :cond_1
    sget-object v0, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    invoke-static {v0}, Lcom/xsolla/android/login/social/LoginSocial;->access$getFinishSocialCallback$p(Lcom/xsolla/android/login/social/LoginSocial;)Lcom/xsolla/android/login/callback/FinishSocialCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/xsolla/android/login/callback/FinishSocialCallback;->onAuthCancelled()V

    .line 99
    :cond_2
    invoke-static {v0, v1}, Lcom/xsolla/android/login/social/LoginSocial;->access$setFinishSocialCallback$p(Lcom/xsolla/android/login/social/LoginSocial;Lcom/xsolla/android/login/callback/FinishSocialCallback;)V

    :goto_0
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    invoke-static {v0}, Lcom/xsolla/android/login/social/LoginSocial;->access$getFinishSocialCallback$p(Lcom/xsolla/android/login/social/LoginSocial;)Lcom/xsolla/android/login/callback/FinishSocialCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string p1, "error.javaClass.name"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1, v2}, Lcom/xsolla/android/login/callback/FinishSocialCallback;->onAuthError(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 105
    invoke-static {v0, p1}, Lcom/xsolla/android/login/social/LoginSocial;->access$setFinishSocialCallback$p(Lcom/xsolla/android/login/social/LoginSocial;Lcom/xsolla/android/login/callback/FinishSocialCallback;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 3

    const-string v0, "loginResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    const-string v0, "loginResult.accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 77
    sget-object v0, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    sget-object v1, Lcom/xsolla/android/login/social/SocialNetwork;->FACEBOOK:Lcom/xsolla/android/login/social/SocialNetwork;

    const-string v2, "facebookToken"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1$onSuccess$1;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1$onSuccess$1;

    invoke-static {v0, v1, p1, v2}, Lcom/xsolla/android/login/social/LoginSocial;->access$getJwtFromSocial(Lcom/xsolla/android/login/social/LoginSocial;Lcom/xsolla/android/login/social/SocialNetwork;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
