.class Lcom/shiftup/inapp/XsollaLoginMethodActivity$2;
.super Ljava/lang/Object;
.source "XsollaLoginMethodActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shiftup/inapp/XsollaLoginMethodActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaLoginMethodActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$2;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 156
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$2;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    const-class v1, Lcom/shiftup/inapp/XsollaLoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$2;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    const/16 v1, 0x2710

    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
