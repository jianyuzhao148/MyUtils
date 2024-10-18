.class public Lcom/inca/security/Proxy/AppGuardFrontApplication;
.super Landroid/app/Application;
.source "jb"


# static fields
.field public static final synthetic IIIiIiiIIi:I = 0x10

.field public static final synthetic IIiIIiIIiI:I = 0x5

.field public static final synthetic IIiiiiIiii:I = 0x17

.field public static final synthetic IIiiiiiiII:I = 0x11

.field public static final synthetic IiIIiIIiiI:I = 0xd

.field public static final synthetic IiiIiiIIIi:I = 0xf

.field public static final synthetic iIIIiIiiIi:I = 0x18

.field public static final synthetic iIIiiIiiII:I = 0xc

.field public static final synthetic iIiiIIiIII:I = 0xb

.field public static final synthetic iiiIIIIIII:I = 0x16


# instance fields
.field private synthetic IIIIiiiiII:[B

.field private synthetic IIIiIIIIII:[B

.field private synthetic IIiIiIiIiI:[B

.field private synthetic IIiiiIIiii:[B

.field private synthetic IIiiiiiIii:[B

.field private synthetic IiIIiIIIiI:[B

.field private synthetic IiiIiIiiiI:Z

.field private synthetic IiiIiiIIiI:[B

.field private synthetic iIiIiIIIii:[B

.field private synthetic iIiIiIIiIi:Landroid/content/Context;

.field private synthetic iIiiIiiiIi:[B

.field private synthetic iiIIIIIiii:[B

.field private synthetic iiiiIiiiIi:Landroid/app/Application;

.field private synthetic iiiiiIiIII:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 132
    :try_start_0
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getABI()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "compatible"

    .line 19
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 179
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiiiIiiiIi:Landroid/app/Application;

    .line 17
    iput-object v0, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iIiIiIIiIi:Landroid/content/Context;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IiiIiIiiiI:Z

    const/16 v0, 0x30

    .line 219
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IiIIiIIIiI:[B

    const/4 v0, 0x6

    .line 184
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iIiiIiiiIi:[B

    const/16 v0, 0x10

    .line 201
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiiiiIiIII:[B

    const/16 v1, 0xd

    .line 128
    new-array v1, v1, [B

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIiiiiiIii:[B

    const/16 v1, 0xc

    .line 103
    new-array v2, v1, [B

    fill-array-data v2, :array_4

    iput-object v2, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIiiiIIiii:[B

    .line 44
    new-array v1, v1, [B

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IiiIiiIIiI:[B

    const/16 v1, 0xf

    .line 59
    new-array v1, v1, [B

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIiIiIiIiI:[B

    const/16 v1, 0x13

    .line 156
    new-array v1, v1, [B

    fill-array-data v1, :array_7

    iput-object v1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iIiIiIIIii:[B

    .line 211
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIIiIIIIII:[B

    const/16 v0, 0x21

    .line 3
    new-array v0, v0, [B

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIIIiiiiII:[B

    const/4 v0, 0x7

    .line 175
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIIIIIiii:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x14t
        0x4bt
        0x1at
        0xat
        0x1et
        0x4at
        0x14t
        0x45t
        0x59t
        0x57t
        0x12t
        0x47t
        0x2t
        0x56t
        0x1et
        0x50t
        0xet
        0xat
        0x27t
        0x56t
        0x18t
        0x5ct
        0xet
        0xat
        0x36t
        0x54t
        0x7t
        0x63t
        0x2t
        0x45t
        0x5t
        0x40t
        0x27t
        0x56t
        0x18t
        0x5ct
        0xet
        0x65t
        0x7t
        0x54t
        0x1bt
        0x4dt
        0x14t
        0x45t
        0x3t
        0x4dt
        0x18t
        0x4at
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x50t
        0x3t
        0x45t
        0x14t
        0x4ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x36t
        0x54t
        0x7t
        0x63t
        0x2t
        0x45t
        0x5t
        0x40t
        0x3et
        0x57t
        0x18t
        0x48t
        0x16t
        0x50t
        0x12t
        0x40t
    .end array-data

    :array_3
    .array-data 1
        0x49t
        0x38t
        0x51t
        0x3t
        0x41t
        0x5t
        0x67t
        0x18t
        0x4at
        0x3t
        0x41t
        0xft
        0x50t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1at
        0x74t
        0x16t
        0x47t
        0x1ct
        0x45t
        0x10t
        0x41t
        0x3et
        0x4at
        0x11t
        0x4bt
    .end array-data

    :array_5
    .array-data 1
        0x1at
        0x65t
        0x7t
        0x54t
        0x1bt
        0x4dt
        0x14t
        0x45t
        0x3t
        0x4dt
        0x18t
        0x4at
    .end array-data

    :array_6
    .array-data 1
        0x49t
        0x36t
        0x47t
        0x3t
        0x4dt
        0x1t
        0x4dt
        0x3t
        0x5dt
        0x23t
        0x4ct
        0x5t
        0x41t
        0x16t
        0x40t
    .end array-data

    :array_7
    .array-data 1
        0x49t
        0x3et
        0x4at
        0x1et
        0x50t
        0x1et
        0x45t
        0x1bt
        0x65t
        0x7t
        0x54t
        0x1bt
        0x4dt
        0x14t
        0x45t
        0x3t
        0x4dt
        0x18t
        0x4at
    .end array-data

    :array_8
    .array-data 1
        0x1at
        0x65t
        0x1bt
        0x48t
        0x36t
        0x54t
        0x7t
        0x48t
        0x1et
        0x47t
        0x16t
        0x50t
        0x1et
        0x4bt
        0x19t
        0x57t
    .end array-data

    :array_9
    .array-data 1
        0x45t
        0x19t
        0x40t
        0x5t
        0x4bt
        0x1et
        0x40t
        0x59t
        0x57t
        0x2t
        0x54t
        0x7t
        0x4bt
        0x5t
        0x50t
        0x59t
        0x49t
        0x2t
        0x48t
        0x3t
        0x4dt
        0x13t
        0x41t
        0xft
        0xat
        0x3at
        0x51t
        0x1bt
        0x50t
        0x1et
        0x60t
        0x12t
        0x5ct
    .end array-data

    nop

    :array_a
    .array-data 1
        0x4dt
        0x19t
        0x57t
        0x3t
        0x45t
        0x1bt
        0x48t
    .end array-data
.end method

.method private synthetic IIIIIIIIII()V
    .locals 6

    const-string v0, "UTF-8"

    .line 78
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IiIIiIIIiI:[B

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiiiIiiiIi:Landroid/app/Application;

    const-class v1, Landroid/app/Application;

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0, v2}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(Z)V

    .line 133
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iIiiIiiiIi:[B

    invoke-direct {v3, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    iget-object v1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiiiIiiiIi:Landroid/app/Application;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iIiIiIIiIi:Landroid/content/Context;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic IIIIIIiiIi()V
    .locals 1

    const/4 v0, 0x1

    .line 32
    :try_start_0
    invoke-direct {p0, v0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(Z)V

    .line 48
    iget-object v0, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiiiIiiiIi:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic IIIIIIiiIi()Z
    .locals 2

    .line 81
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const v1, 0x186a0

    .line 111
    rem-int/2addr v0, v1

    const v1, 0x15f90

    if-lt v0, v1, :cond_0

    const v1, 0x1869f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static native synthetic IiIiIiiIII(I)Ljava/lang/String;
.end method

.method private static synthetic iiIiIiiiiI(I)Ljava/lang/String;
    .locals 0

    .line 178
    invoke-static {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IiIiIiiIII(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic iiIiIiiiiI(ILjava/lang/Boolean;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 238
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 399
    invoke-static {p1}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/16 v0, 0xf

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x17

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 453
    :pswitch_0
    iget-object p1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIIiIIIIII:[B

    goto :goto_1

    .line 455
    :pswitch_1
    iget-object p1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIiIiIiIiI:[B

    goto :goto_1

    .line 325
    :pswitch_2
    iget-object p1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IiiIiiIIiI:[B

    goto :goto_1

    .line 288
    :cond_1
    iget-object p2, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIIIIIiii:[B

    goto :goto_0

    .line 315
    :cond_2
    iget-object p1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIIIiiiiII:[B

    goto :goto_1

    .line 412
    :cond_3
    iget-object p1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIiiiiiIii:[B

    goto :goto_1

    .line 244
    :cond_4
    iget-object p1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iIiIiIIIii:[B

    goto :goto_1

    .line 332
    :cond_5
    iget-object p1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIiiiIIiii:[B

    .line 314
    :goto_1
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic iiIiIiiiiI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 382
    new-array v0, v0, [C

    :goto_0
    if-ltz v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    .line 437
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int/lit8 v3, v3, 0x24

    int-to-char v3, v3

    aput-char v3, v0, v1

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v2, -0x1

    .line 429
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int/lit8 v3, v3, 0x77

    int-to-char v3, v3

    aput-char v3, v0, v2

    goto :goto_0

    .line 257
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private synthetic iiIiIiiiiI()V
    .locals 1

    .line 147
    :try_start_0
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getABI()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "compatible"

    .line 217
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private synthetic iiIiIiiiiI(Z)V
    .locals 4

    .line 224
    monitor-enter p0

    .line 176
    :try_start_0
    new-instance v0, Lcom/inca/security/Core/ObjectReflector;

    iget-object v1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iIiIiIIiIi:Landroid/content/Context;

    const/16 v2, 0x10

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/inca/security/Core/ObjectReflector;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiiiIiiiIi:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/inca/security/Core/ObjectReflector;->set(Ljava/lang/Object;)V

    .line 208
    new-instance v0, Lcom/inca/security/Core/ObjectReflector;

    iget-object v1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iIiIiIIiIi:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/inca/security/Core/ObjectReflector;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inca/security/Core/ObjectReflector;->get()Ljava/lang/Object;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/inca/security/Core/ObjectReflector;

    const/16 v2, 0xb

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/inca/security/Core/ObjectReflector;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiiiIiiiIi:Landroid/app/Application;

    invoke-virtual {v1, v2}, Lcom/inca/security/Core/ObjectReflector;->set(Ljava/lang/Object;)V

    .line 9
    new-instance v1, Lcom/inca/security/Core/ObjectReflector;

    const/16 v2, 0xc

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/inca/security/Core/ObjectReflector;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/inca/security/Core/ObjectReflector;->get()Ljava/lang/Object;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/inca/security/Core/ObjectReflector;

    const/16 v2, 0xf

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/inca/security/Core/ObjectReflector;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiiiIiiiIi:Landroid/app/Application;

    invoke-virtual {v1, v2}, Lcom/inca/security/Core/ObjectReflector;->set(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 65
    iget-boolean v1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IiiIiIiiiI:Z

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/inca/security/Core/ObjectReflector;

    const/16 v2, 0xd

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/inca/security/Core/ObjectReflector;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/inca/security/Core/ObjectReflector;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IiiIiIiiiI:Z

    .line 38
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiiiIiiiIi:Landroid/app/Application;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 79
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic iiIiIiiiiI()Z
    .locals 5

    const/4 v0, 0x0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-super {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 199
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiiiiIiIII:[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 6

    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 192
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v2, 0x18

    .line 153
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    .line 143
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :catch_0
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 63
    iput-object p1, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iIiIiIIiIi:Landroid/content/Context;

    .line 215
    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIIIIIiiIi()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIIIIIiiIi()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIIIIIIIII()V

    :cond_1
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIIIIIiiIi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIIIIIiiIi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IiiIiIiiiI:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI(Z)V

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 174
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 155
    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIIIIIiiIi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIIIIIiiIi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->iiIiIiiiiI()V

    return-void

    .line 77
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardFrontApplication;->IIIIIIiiIi()V

    return-void
.end method
