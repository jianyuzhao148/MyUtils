.class Lcom/shiftup/inapp/XsollaLoginActivity$1;
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

    .line 41
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 44
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    invoke-static {p1}, Lcom/shiftup/inapp/XsollaLoginActivity;->access$000(Lcom/shiftup/inapp/XsollaLoginActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    invoke-static {v0}, Lcom/shiftup/inapp/XsollaLoginActivity;->access$100(Lcom/shiftup/inapp/XsollaLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shiftup/inapp/XsollaLoginActivity;->access$200(Lcom/shiftup/inapp/XsollaLoginActivity;Z)V

    .line 54
    new-instance v1, Lcom/shiftup/inapp/XsollaLoginActivity$1$1;

    invoke-direct {v1, p0}, Lcom/shiftup/inapp/XsollaLoginActivity$1$1;-><init>(Lcom/shiftup/inapp/XsollaLoginActivity$1;)V

    invoke-static {p1, v0, v1}, Lcom/xsolla/android/login/XLogin;->login(Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/login/api/XLoginCallback;)V

    return-void

    .line 48
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    const/4 v0, 0x1

    const-string v1, "Username and password should not be empty!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
