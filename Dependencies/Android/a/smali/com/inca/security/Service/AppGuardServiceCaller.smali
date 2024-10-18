.class public Lcom/inca/security/Service/AppGuardServiceCaller;
.super Ljava/lang/Object;
.source "mb"


# static fields
.field private static synthetic IIiiiiIiii:Landroid/content/ServiceConnection;

.field private static synthetic IiIIiIIIiI:Landroid/os/Messenger;

.field private static synthetic iIIiiIiiII:I

.field private static synthetic iIiiIIiIII:Z

.field private static synthetic iiiiIiiiIi:Landroid/os/Messenger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 221
    new-instance v0, Lcom/inca/security/iIIiiiiIIi;

    invoke-direct {v0}, Lcom/inca/security/iIIiiiiIIi;-><init>()V

    sput-object v0, Lcom/inca/security/Service/AppGuardServiceCaller;->IIiiiiIiii:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic IIIIIIiiIi()Landroid/os/Messenger;
    .locals 1

    .line 210
    sget-object v0, Lcom/inca/security/Service/AppGuardServiceCaller;->iiiiIiiiIi:Landroid/os/Messenger;

    return-object v0
.end method

.method public static synthetic IIIIIIiiIi(Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 210
    sput-object p0, Lcom/inca/security/Service/AppGuardServiceCaller;->IiIIiIIIiI:Landroid/os/Messenger;

    return-object p0
.end method

.method private static native synthetic IiiIiIiiIi(III)V
.end method

.method public static callService(II)V
    .locals 2

    .line 29
    sput p1, Lcom/inca/security/Service/AppGuardServiceCaller;->iIIiiIiiII:I

    .line 203
    sget-boolean p0, Lcom/inca/security/Service/AppGuardServiceCaller;->iIiiIIiIII:Z

    const/4 p1, 0x1

    if-nez p0, :cond_0

    .line 185
    new-instance p0, Landroid/content/Intent;

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/inca/security/Service/AppGuardService;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/inca/security/Service/AppGuardServiceCaller;->IIiiiiIiii:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0, v1, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 142
    invoke-static {p0, p1, v0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 7
    sget-object p1, Lcom/inca/security/Service/AppGuardServiceCaller;->iiiiIiiiIi:Landroid/os/Messenger;

    iput-object p1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 153
    :try_start_0
    sget-object p1, Lcom/inca/security/Service/AppGuardServiceCaller;->IiIIiIIIiI:Landroid/os/Messenger;

    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic iiIiIiiiiI()I
    .locals 1

    .line 210
    sget v0, Lcom/inca/security/Service/AppGuardServiceCaller;->iIIiiIiiII:I

    return v0
.end method

.method public static synthetic iiIiIiiiiI()Landroid/os/Messenger;
    .locals 1

    .line 210
    sget-object v0, Lcom/inca/security/Service/AppGuardServiceCaller;->IiIIiIIIiI:Landroid/os/Messenger;

    return-object v0
.end method

.method public static synthetic iiIiIiiiiI(Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 210
    sput-object p0, Lcom/inca/security/Service/AppGuardServiceCaller;->iiiiIiiiIi:Landroid/os/Messenger;

    return-object p0
.end method

.method public static synthetic iiIiIiiiiI(III)V
    .locals 0

    .line 210
    invoke-static {p0, p1, p2}, Lcom/inca/security/Service/AppGuardServiceCaller;->IiiIiIiiIi(III)V

    return-void
.end method

.method public static synthetic iiIiIiiiiI(Z)Z
    .locals 0

    .line 210
    sput-boolean p0, Lcom/inca/security/Service/AppGuardServiceCaller;->iIiiIIiIII:Z

    return p0
.end method
