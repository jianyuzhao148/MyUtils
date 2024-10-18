.class public final Lcom/xsolla/android/login/unity/UnityProxyActivity;
.super Landroid/app/Activity;
.source "UnityProxyActivity.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "social_network"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/xsolla/android/login/social/SocialNetwork;->valueOf(Ljava/lang/String;)Lcom/xsolla/android/login/social/SocialNetwork;

    move-result-object v2

    .line 36
    new-instance v6, Lcom/xsolla/android/login/unity/UnityProxyActivity$onActivityResult$1;

    invoke-direct {v6, p0, v2}, Lcom/xsolla/android/login/unity/UnityProxyActivity$onActivityResult$1;-><init>(Lcom/xsolla/android/login/unity/UnityProxyActivity;Lcom/xsolla/android/login/social/SocialNetwork;)V

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/xsolla/android/login/XLogin;->finishSocialAuth(Landroid/content/Context;Lcom/xsolla/android/login/social/SocialNetwork;IILandroid/content/Intent;Lcom/xsolla/android/login/callback/FinishSocialCallback;)V

    return-void

    .line 35
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "social_network"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xsolla/android/login/social/SocialNetwork;->valueOf(Ljava/lang/String;)Lcom/xsolla/android/login/social/SocialNetwork;

    move-result-object p1

    .line 22
    new-instance v0, Lcom/xsolla/android/login/unity/UnityProxyActivity$onCreate$1;

    invoke-direct {v0, p0, p1}, Lcom/xsolla/android/login/unity/UnityProxyActivity$onCreate$1;-><init>(Lcom/xsolla/android/login/unity/UnityProxyActivity;Lcom/xsolla/android/login/social/SocialNetwork;)V

    invoke-static {p0, p1, v0}, Lcom/xsolla/android/login/XLogin;->startSocialAuth(Landroid/app/Activity;Lcom/xsolla/android/login/social/SocialNetwork;Lcom/xsolla/android/login/callback/StartSocialCallback;)V

    return-void

    .line 20
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method
