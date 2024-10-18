.class Lcom/shiftup/inapp/XsollaLoginActivity$1$1$2;
.super Ljava/lang/Object;
.source "XsollaLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/inapp/XsollaLoginActivity$1$1;->onFailure(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/shiftup/inapp/XsollaLoginActivity$1$1;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaLoginActivity$1$1;Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1$2;->this$2:Lcom/shiftup/inapp/XsollaLoginActivity$1$1;

    iput-object p2, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1$2;->this$2:Lcom/shiftup/inapp/XsollaLoginActivity$1$1;

    iget-object v0, v0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$1;

    iget-object v0, v0, Lcom/shiftup/inapp/XsollaLoginActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    invoke-static {v0}, Lcom/shiftup/inapp/XsollaLoginActivity;->access$100(Lcom/shiftup/inapp/XsollaLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1$2;->val$errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1$2;->this$2:Lcom/shiftup/inapp/XsollaLoginActivity$1$1;

    iget-object v0, v0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$1;

    iget-object v0, v0, Lcom/shiftup/inapp/XsollaLoginActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shiftup/inapp/XsollaLoginActivity;->access$200(Lcom/shiftup/inapp/XsollaLoginActivity;Z)V

    return-void
.end method
