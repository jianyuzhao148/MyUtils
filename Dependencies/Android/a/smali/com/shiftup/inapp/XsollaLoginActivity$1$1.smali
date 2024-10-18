.class Lcom/shiftup/inapp/XsollaLoginActivity$1$1;
.super Lcom/xsolla/android/login/api/XLoginCallback;
.source "XsollaLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/inapp/XsollaLoginActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xsolla/android/login/api/XLoginCallback<",
        "Lcom/xsolla/android/login/entity/response/AuthResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shiftup/inapp/XsollaLoginActivity$1;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaLoginActivity$1;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$1;

    invoke-direct {p0}, Lcom/xsolla/android/login/api/XLoginCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;)V
    .locals 2

    const-string v0, "XsollaLoginActivity"

    const-string v1, "login failed with error:"

    .line 71
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$1;

    iget-object v0, v0, Lcom/shiftup/inapp/XsollaLoginActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    new-instance v1, Lcom/shiftup/inapp/XsollaLoginActivity$1$1$2;

    invoke-direct {v1, p0, p1}, Lcom/shiftup/inapp/XsollaLoginActivity$1$1$2;-><init>(Lcom/shiftup/inapp/XsollaLoginActivity$1$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onSuccess(Lcom/xsolla/android/login/entity/response/AuthResponse;)V
    .locals 2

    const-string p1, "XsollaLoginActivity"

    const-string v0, "login succeed"

    .line 57
    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JWT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$1;

    iget-object p1, p1, Lcom/shiftup/inapp/XsollaLoginActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    new-instance v0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1$1;

    invoke-direct {v0, p0}, Lcom/shiftup/inapp/XsollaLoginActivity$1$1$1;-><init>(Lcom/shiftup/inapp/XsollaLoginActivity$1$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/xsolla/android/login/entity/response/AuthResponse;

    invoke-virtual {p0, p1}, Lcom/shiftup/inapp/XsollaLoginActivity$1$1;->onSuccess(Lcom/xsolla/android/login/entity/response/AuthResponse;)V

    return-void
.end method
