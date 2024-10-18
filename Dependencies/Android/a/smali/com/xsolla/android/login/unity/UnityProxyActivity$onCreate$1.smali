.class public final Lcom/xsolla/android/login/unity/UnityProxyActivity$onCreate$1;
.super Ljava/lang/Object;
.source "UnityProxyActivity.kt"

# interfaces
.implements Lcom/xsolla/android/login/callback/StartSocialCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/login/unity/UnityProxyActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 22
    iput-object p1, p0, Lcom/xsolla/android/login/unity/UnityProxyActivity$onCreate$1;->this$0:Lcom/xsolla/android/login/unity/UnityProxyActivity;

    iput-object p2, p0, Lcom/xsolla/android/login/unity/UnityProxyActivity$onCreate$1;->$socialNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthStarted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/xsolla/android/login/unity/UnityUtils;->INSTANCE:Lcom/xsolla/android/login/unity/UnityUtils;

    iget-object v1, p0, Lcom/xsolla/android/login/unity/UnityProxyActivity$onCreate$1;->$socialNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

    iget-object v1, v1, Lcom/xsolla/android/login/social/SocialNetwork;->providerName:Ljava/lang/String;

    const-string v2, "socialNetwork.providerName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ERROR"

    invoke-virtual {v0, v1, v2, p1}, Lcom/xsolla/android/login/unity/UnityUtils;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/xsolla/android/login/unity/UnityProxyActivity$onCreate$1;->this$0:Lcom/xsolla/android/login/unity/UnityProxyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
