.class Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;
.super Ljava/lang/Object;
.source "XsollaLoginMethodActivity.java"

# interfaces
.implements Lcom/xsolla/android/login/callback/FinishSocialCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/inapp/XsollaLoginMethodActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPlatform:Lcom/xsolla/android/login/social/SocialNetwork;

.field final synthetic this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaLoginMethodActivity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-static {p1}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->access$100(Lcom/shiftup/inapp/XsollaLoginMethodActivity;)Lcom/xsolla/android/login/social/SocialNetwork;

    move-result-object p1

    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;->mPlatform:Lcom/xsolla/android/login/social/SocialNetwork;

    return-void
.end method


# virtual methods
.method public onAuthCancelled()V
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "social auth for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;->mPlatform:Lcom/xsolla/android/login/social/SocialNetwork;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XsollaLoginMethod"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    new-instance v1, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3$2;

    invoke-direct {v1, p0}, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3$2;-><init>(Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthError(Ljava/lang/String;)V
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "social auth for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;->mPlatform:Lcom/xsolla/android/login/social/SocialNetwork;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed on finish with error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XsollaLoginMethod"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {v1, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    new-instance v0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3$3;

    invoke-direct {v0, p0}, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3$3;-><init>(Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthSuccess()V
    .locals 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "social auth for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;->mPlatform:Lcom/xsolla/android/login/social/SocialNetwork;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " succeed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XsollaLoginMethod"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JWT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    new-instance v1, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3$1;

    invoke-direct {v1, p0}, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3$1;-><init>(Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
