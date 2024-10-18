.class Lcom/shiftup/inapp/XsollaLoginActivity$2;
.super Ljava/lang/Object;
.source "XsollaLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shiftup/inapp/XsollaLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/inapp/XsollaLoginActivity;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaLoginActivity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$2;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 89
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$2;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    invoke-static {p1}, Lcom/shiftup/util/InputAlertDialogBuilder;->start(Landroid/content/Context;)Lcom/shiftup/util/InputAlertDialogBuilder;

    move-result-object p1

    const-string v0, "Please input account info"

    .line 90
    invoke-virtual {p1, v0}, Lcom/shiftup/util/InputAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/shiftup/util/InputAlertDialogBuilder;

    move-result-object p1

    const-string v0, "username"

    const/4 v1, 0x1

    const-string v2, "Username"

    .line 91
    invoke-virtual {p1, v0, v1, v2}, Lcom/shiftup/util/InputAlertDialogBuilder;->addField(Ljava/lang/String;ILjava/lang/String;)Lcom/shiftup/util/InputAlertDialogBuilder;

    move-result-object p1

    const-string v0, "email"

    const/16 v1, 0x21

    const-string v2, "Email"

    .line 92
    invoke-virtual {p1, v0, v1, v2}, Lcom/shiftup/util/InputAlertDialogBuilder;->addField(Ljava/lang/String;ILjava/lang/String;)Lcom/shiftup/util/InputAlertDialogBuilder;

    move-result-object p1

    const-string v0, "password"

    const/16 v1, 0x81

    const-string v2, "Password"

    .line 93
    invoke-virtual {p1, v0, v1, v2}, Lcom/shiftup/util/InputAlertDialogBuilder;->addField(Ljava/lang/String;ILjava/lang/String;)Lcom/shiftup/util/InputAlertDialogBuilder;

    move-result-object p1

    const-string v0, "password_confirm"

    const-string v2, "Type your password again"

    .line 94
    invoke-virtual {p1, v0, v1, v2}, Lcom/shiftup/util/InputAlertDialogBuilder;->addField(Ljava/lang/String;ILjava/lang/String;)Lcom/shiftup/util/InputAlertDialogBuilder;

    move-result-object p1

    new-instance v0, Lcom/shiftup/inapp/XsollaLoginActivity$2$1;

    invoke-direct {v0, p0}, Lcom/shiftup/inapp/XsollaLoginActivity$2$1;-><init>(Lcom/shiftup/inapp/XsollaLoginActivity$2;)V

    .line 95
    invoke-virtual {p1, v0}, Lcom/shiftup/util/InputAlertDialogBuilder;->setListener(Lcom/shiftup/util/InputAlertDialogBuilder$OnConfirmListener;)Lcom/shiftup/util/InputAlertDialogBuilder;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/shiftup/util/InputAlertDialogBuilder;->show()V

    return-void
.end method
