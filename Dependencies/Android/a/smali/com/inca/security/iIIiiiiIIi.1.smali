.class public final Lcom/inca/security/iIIiiiiIIi;
.super Ljava/lang/Object;
.source "mb"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Service/AppGuardServiceCaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 169
    invoke-static {p1}, Lcom/inca/security/Service/AppGuardServiceCaller;->iiIiIiiiiI(Landroid/os/Messenger;)Landroid/os/Messenger;

    const/4 p1, 0x0

    .line 86
    invoke-static {p1}, Lcom/inca/security/Service/AppGuardServiceCaller;->iiIiIiiiiI(Z)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 187
    invoke-static {}, Lcom/inca/security/Service/AppGuardServiceCaller;->IIIIIIiiIi()Landroid/os/Messenger;

    move-result-object p1

    if-nez p1, :cond_0

    .line 90
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/inca/security/IiiIiiiiiI;

    invoke-direct {v1, p0}, Lcom/inca/security/IiiIiiiiiI;-><init>(Lcom/inca/security/iIIiiiiIIi;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/inca/security/Service/AppGuardServiceCaller;->iiIiIiiiiI(Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 201
    :cond_0
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1}, Lcom/inca/security/Service/AppGuardServiceCaller;->IIIIIIiiIi(Landroid/os/Messenger;)Landroid/os/Messenger;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 70
    invoke-static {p1, v0, p2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 80
    invoke-static {}, Lcom/inca/security/Service/AppGuardServiceCaller;->IIIIIIiiIi()Landroid/os/Messenger;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 94
    :try_start_0
    invoke-static {}, Lcom/inca/security/Service/AppGuardServiceCaller;->iiIiIiiiiI()Landroid/os/Messenger;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    invoke-static {v0}, Lcom/inca/security/Service/AppGuardServiceCaller;->iiIiIiiiiI(Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 137
    invoke-static {p1}, Lcom/inca/security/Service/AppGuardServiceCaller;->iiIiIiiiiI(Landroid/os/Messenger;)Landroid/os/Messenger;

    const/4 p1, 0x0

    .line 211
    invoke-static {p1}, Lcom/inca/security/Service/AppGuardServiceCaller;->iiIiIiiiiI(Z)Z

    return-void
.end method
