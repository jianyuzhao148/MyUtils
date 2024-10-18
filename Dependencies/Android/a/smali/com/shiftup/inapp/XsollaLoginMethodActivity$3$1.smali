.class Lcom/shiftup/inapp/XsollaLoginMethodActivity$3$1;
.super Ljava/lang/Object;
.source "XsollaLoginMethodActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;->onAuthSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3$1;->this$1:Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3$1;->this$1:Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;

    iget-object v0, v0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 205
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3$1;->this$1:Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;

    iget-object v0, v0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
