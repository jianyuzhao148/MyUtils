.class public final Lcom/xsolla/android/login/unity/UnityProxyActivity$onActivityResult$1;
.super Ljava/lang/Object;
.source "UnityProxyActivity.kt"

# interfaces
.implements Lcom/xsolla/android/login/callback/FinishSocialCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/login/unity/UnityProxyActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $socialNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

.field final synthetic this$0:Lcom/xsolla/android/login/unity/UnityProxyActivity;


# direct methods
.method constructor <init>(Lcom/xsolla/android/login/unity/UnityProxyActivity;Lcom/xsolla/android/login/social/SocialNetwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xsolla/android/login/social/SocialNetwork;",
            ")V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/xsolla/android/login/unity/UnityProxyActivity$onActivityResult$1;->this$0:Lcom/xsolla/android/login/unity/UnityProxyActivity;

    iput-object p2, p0, Lcom/xsolla/android/login/unity/UnityProxyActivity$onActivityResult$1;->$socialNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthCancelled()V
    .locals 4

    .line 43
    sget-object v0, Lcom/xsolla/android/login/unity/UnityUtils;->INSTANCE:Lcom/xsolla/android/login/unity/UnityUtils;

    iget-object v1, p0, Lcom/xsolla/android/login/unity/UnityProxyActivity$onActivityResult$1;->$socialNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

    iget-object v1, v1, Lcom/xsolla/android/login/social/SocialNetwork;->providerName:Ljava/lang/String;

    const-string v2, "socialNetwork.providerName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CANCELLED"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xsolla/android/login/unity/UnityUtils;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/xsolla/android/login/unity/UnityProxyActivity$onActivityResult$1;->this$0:Lcom/xsolla/android/login/unity/UnityProxyActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onAuthError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/xsolla/android/login/unity/UnityUtils;->INSTANCE:Lcom/xsolla/android/login/unity/UnityUtils;

    iget-object v1, p0, Lcom/xsolla/android/login/unity/UnityProxyActivity$onActivityResult$1;->$socialNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

    iget-object v1, v1, Lcom/xsolla/android/login/social/SocialNetwork;->providerName:Ljava/lang/String;

    const-string v2, "socialNetwork.providerName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ERROR"

    invoke-virtual {v0, v1, v2, p1}, Lcom/xsolla/android/login/unity/UnityUtils;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/xsolla/android/login/unity/UnityProxyActivity$onActivityResult$1;->this$0:Lcom/xsolla/android/login/unity/UnityProxyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onAuthSuccess()V
    .locals 4

    .line 38
    sget-object v0, Lcom/xsolla/android/login/unity/UnityUtils;->INSTANCE:Lcom/xsolla/android/login/unity/UnityUtils;

    iget-object v1, p0, Lcom/xsolla/android/login/unity/UnityProxyActivity$onActivityResult$1;->$socialNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

    iget-object v1, v1, Lcom/xsolla/android/login/social/SocialNetwork;->providerName:Ljava/lang/String;

    const-string v2, "socialNetwork.providerName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v0, v1, v3, v2}, Lcom/xsolla/android/login/unity/UnityUtils;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/xsolla/android/login/unity/UnityProxyActivity$onActivityResult$1;->this$0:Lcom/xsolla/android/login/unity/UnityProxyActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
