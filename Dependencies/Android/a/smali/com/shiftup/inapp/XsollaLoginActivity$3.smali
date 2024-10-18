.class Lcom/shiftup/inapp/XsollaLoginActivity$3;
.super Ljava/lang/Object;
.source "XsollaLoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/inapp/XsollaLoginActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 149
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$3;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x5

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Username cannot be empty"

    .line 156
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$3;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    invoke-static {p1}, Lcom/shiftup/inapp/XsollaLoginActivity;->access$100(Lcom/shiftup/inapp/XsollaLoginActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
