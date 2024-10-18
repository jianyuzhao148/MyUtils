.class public Lcom/inca/security/Proxy/AppGuardProxyApplication;
.super Lcom/NextFloor/DestinyChild/GlobalApplication;
.source "AppGuardProxyApplication.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    :try_start_0
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getABI()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "compatible"

    .line 30
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/NextFloor/DestinyChild/GlobalApplication;-><init>()V

    return-void
.end method

.method private native IiIiiIiIiI(Landroid/content/Context;)V
.end method

.method public static native iIIiIIiIIi()Ljava/lang/String;
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 40
    :try_start_0
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getABI()I

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/inca/security/Proxy/iIiIiIiIii;->iIiIIiIiiI(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    :cond_0
    invoke-super {p0, p1}, Lcom/NextFloor/DestinyChild/GlobalApplication;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/NextFloor/DestinyChild/GlobalApplication;->onCreate()V

    .line 52
    invoke-virtual {p0}, Lcom/inca/security/Proxy/AppGuardProxyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inca/security/Proxy/JNISoxProxy;->setApplicationContext(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0, p0}, Lcom/inca/security/Proxy/AppGuardProxyApplication;->IiIiiIiIiI(Landroid/content/Context;)V

    return-void
.end method
