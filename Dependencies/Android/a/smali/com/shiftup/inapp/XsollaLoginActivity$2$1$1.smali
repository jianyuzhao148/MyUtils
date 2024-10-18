.class Lcom/shiftup/inapp/XsollaLoginActivity$2$1$1;
.super Lcom/xsolla/android/login/api/XLoginCallback;
.source "XsollaLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/inapp/XsollaLoginActivity$2$1;->onConfirm(Landroid/content/DialogInterface;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xsolla/android/login/api/XLoginCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/shiftup/inapp/XsollaLoginActivity$2$1;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaLoginActivity$2$1;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$2$1$1;->this$2:Lcom/shiftup/inapp/XsollaLoginActivity$2$1;

    invoke-direct {p0}, Lcom/xsolla/android/login/api/XLoginCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;)V
    .locals 3

    const-string v0, "XsollaLoginActivity"

    const-string v1, "registration failed with error:"

    .line 128
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginActivity$2$1$1;->this$2:Lcom/shiftup/inapp/XsollaLoginActivity$2$1;

    iget-object v0, v0, Lcom/shiftup/inapp/XsollaLoginActivity$2$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$2;

    iget-object v0, v0, Lcom/shiftup/inapp/XsollaLoginActivity$2;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register failed due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 132
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$2$1$1;->this$2:Lcom/shiftup/inapp/XsollaLoginActivity$2$1;

    iget-object p1, p1, Lcom/shiftup/inapp/XsollaLoginActivity$2$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$2;

    iget-object p1, p1, Lcom/shiftup/inapp/XsollaLoginActivity$2;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    invoke-static {p1, v1}, Lcom/shiftup/inapp/XsollaLoginActivity;->access$200(Lcom/shiftup/inapp/XsollaLoginActivity;Z)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/shiftup/inapp/XsollaLoginActivity$2$1$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 2

    .line 122
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$2$1$1;->this$2:Lcom/shiftup/inapp/XsollaLoginActivity$2$1;

    iget-object p1, p1, Lcom/shiftup/inapp/XsollaLoginActivity$2$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$2;

    iget-object p1, p1, Lcom/shiftup/inapp/XsollaLoginActivity$2;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    const-string v0, "Register succeed. Please check your email"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 123
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$2$1$1;->this$2:Lcom/shiftup/inapp/XsollaLoginActivity$2$1;

    iget-object p1, p1, Lcom/shiftup/inapp/XsollaLoginActivity$2$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$2;

    iget-object p1, p1, Lcom/shiftup/inapp/XsollaLoginActivity$2;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    invoke-static {p1, v1}, Lcom/shiftup/inapp/XsollaLoginActivity;->access$200(Lcom/shiftup/inapp/XsollaLoginActivity;Z)V

    return-void
.end method
