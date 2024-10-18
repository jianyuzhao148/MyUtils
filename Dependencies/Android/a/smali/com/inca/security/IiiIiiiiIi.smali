.class public Lcom/inca/security/IiiIiiiiIi;
.super Landroid/os/Handler;
.source "ub"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Service/AppGuardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic iIIiiIiiII:Lcom/inca/security/Service/AppGuardService;


# direct methods
.method public constructor <init>(Lcom/inca/security/Service/AppGuardService;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/inca/security/IiiIiiiiIi;->iIIiiIiiII:Lcom/inca/security/Service/AppGuardService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x0

    .line 80
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/inca/security/IiiIiiiiIi;->iIIiiIiiII:Lcom/inca/security/Service/AppGuardService;

    invoke-static {v1, v2}, Lcom/inca/security/Service/AppGuardService;->iiIiIiiiiI(Lcom/inca/security/Service/AppGuardService;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v1, 0x0

    .line 156
    :goto_1
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v3, 0x0

    .line 137
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v3, p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 16
    :try_start_1
    invoke-virtual {v2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
