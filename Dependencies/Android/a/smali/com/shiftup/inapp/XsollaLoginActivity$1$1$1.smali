.class Lcom/shiftup/inapp/XsollaLoginActivity$1$1$1;
.super Ljava/lang/Object;
.source "XsollaLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/inapp/XsollaLoginActivity$1$1;->onSuccess(Lcom/xsolla/android/login/entity/response/AuthResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/shiftup/inapp/XsollaLoginActivity$1$1;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaLoginActivity$1$1;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1$1;->this$2:Lcom/shiftup/inapp/XsollaLoginActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1$1;->this$2:Lcom/shiftup/inapp/XsollaLoginActivity$1$1;

    iget-object v0, v0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$1;

    iget-object v0, v0, Lcom/shiftup/inapp/XsollaLoginActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 64
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1$1;->this$2:Lcom/shiftup/inapp/XsollaLoginActivity$1$1;

    iget-object v0, v0, Lcom/shiftup/inapp/XsollaLoginActivity$1$1;->this$1:Lcom/shiftup/inapp/XsollaLoginActivity$1;

    iget-object v0, v0, Lcom/shiftup/inapp/XsollaLoginActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
