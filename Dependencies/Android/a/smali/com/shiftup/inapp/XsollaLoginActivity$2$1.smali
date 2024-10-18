.class Lcom/shiftup/inapp/XsollaLoginActivity$2$1;
.super Ljava/lang/Object;
.source "XsollaLoginActivity.java"

# interfaces
.implements Lcom/shiftup/util/InputAlertDialogBuilder$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/inapp/XsollaLoginActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shiftup/inapp/XsollaLoginActivity$2;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaLoginActivity$2;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$2$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Landroid/content/DialogInterface;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "username"

    .line 98
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "email"

    .line 99
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "password"

    .line 100
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "password_confirm"

    .line 101
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 114
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$2$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$2;

    iget-object p1, p1, Lcom/shiftup/inapp/XsollaLoginActivity$2;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    const-string p2, "Password does not match."

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 118
    :cond_2
    iget-object p2, p0, Lcom/shiftup/inapp/XsollaLoginActivity$2$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$2;

    iget-object p2, p2, Lcom/shiftup/inapp/XsollaLoginActivity$2;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/shiftup/inapp/XsollaLoginActivity;->access$200(Lcom/shiftup/inapp/XsollaLoginActivity;Z)V

    .line 119
    new-instance p2, Lcom/shiftup/inapp/XsollaLoginActivity$2$1$1;

    invoke-direct {p2, p0}, Lcom/shiftup/inapp/XsollaLoginActivity$2$1$1;-><init>(Lcom/shiftup/inapp/XsollaLoginActivity$2$1;)V

    invoke-static {p1, v0, v1, p2}, Lcom/xsolla/android/login/XLogin;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/login/api/XLoginCallback;)V

    return-void

    .line 109
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$2$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$2;

    iget-object p1, p1, Lcom/shiftup/inapp/XsollaLoginActivity$2;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    const-string p2, "Email should not be empty."

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 104
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$2$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$2;

    iget-object p1, p1, Lcom/shiftup/inapp/XsollaLoginActivity$2;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    const-string p2, "Username should not be empty."

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
