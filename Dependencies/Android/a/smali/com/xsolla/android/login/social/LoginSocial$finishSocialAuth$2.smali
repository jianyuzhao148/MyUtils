.class final Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;
.super Ljava/lang/Object;
.source "LoginSocial.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/login/social/LoginSocial;->finishSocialAuth(Landroid/content/Context;Lcom/xsolla/android/login/social/SocialNetwork;IILandroid/content/Intent;Lcom/xsolla/android/login/callback/FinishSocialCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/xsolla/android/login/callback/FinishSocialCallback;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $email:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xsolla/android/login/callback/FinishSocialCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;->$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;->$callback:Lcom/xsolla/android/login/callback/FinishSocialCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;->$email:Ljava/lang/String;

    const-string v2, "oauth2:https://www.googleapis.com/auth/plus.login"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2$1;

    invoke-direct {v2, p0}, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2$1;-><init>(Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    :cond_0
    sget-object v1, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    iget-object v2, p0, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;->$callback:Lcom/xsolla/android/login/callback/FinishSocialCallback;

    invoke-static {v1, v2}, Lcom/xsolla/android/login/social/LoginSocial;->access$setFinishSocialCallback$p(Lcom/xsolla/android/login/social/LoginSocial;Lcom/xsolla/android/login/callback/FinishSocialCallback;)V

    .line 168
    sget-object v2, Lcom/xsolla/android/login/social/SocialNetwork;->GOOGLE:Lcom/xsolla/android/login/social/SocialNetwork;

    const-string v3, "oauthToken"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2$2;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2$2;

    invoke-static {v1, v2, v0, v3}, Lcom/xsolla/android/login/social/LoginSocial;->access$getJwtFromSocial(Lcom/xsolla/android/login/social/LoginSocial;Lcom/xsolla/android/login/social/SocialNetwork;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
