.class Lcom/shiftup/inapp/XsollaLoginMethodActivity$1$1;
.super Ljava/lang/Object;
.source "XsollaLoginMethodActivity.java"

# interfaces
.implements Lcom/xsolla/android/login/callback/StartSocialCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1$1;->this$1:Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthStarted()V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "social auth for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1$1;->this$1:Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;

    invoke-static {v1}, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;->access$200(Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;)Lcom/xsolla/android/login/social/SocialNetwork;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XsollaLoginMethod"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "social auth for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1$1;->this$1:Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;

    invoke-static {v1}, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;->access$200(Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;)Lcom/xsolla/android/login/social/SocialNetwork;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed on start with error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XsollaLoginMethod"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {v1, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1$1;->this$1:Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;

    iget-object p1, p1, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->access$000(Lcom/shiftup/inapp/XsollaLoginMethodActivity;Z)V

    return-void
.end method
