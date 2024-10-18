.class public Lcom/shiftup/appguard/AppGuardAdapter;
.super Ljava/lang/Object;
.source "AppGuardAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppGuardAdapter"

.field private static mAppGuardClient:Lcom/inca/security/AppGuard/AppGuardClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAppGuardClient()V
    .locals 2

    .line 18
    :try_start_0
    new-instance v0, Lcom/inca/security/AppGuard/AppGuardClient;

    invoke-direct {v0}, Lcom/inca/security/AppGuard/AppGuardClient;-><init>()V

    sput-object v0, Lcom/shiftup/appguard/AppGuardAdapter;->mAppGuardClient:Lcom/inca/security/AppGuard/AppGuardClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppGuardAdapter"

    .line 20
    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppGuardAdapter"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/shiftup/appguard/AppGuardAdapter;->mAppGuardClient:Lcom/inca/security/AppGuard/AppGuardClient;

    invoke-virtual {v0, p0}, Lcom/inca/security/AppGuard/AppGuardClient;->setUserId(Ljava/lang/String;)V

    return-void
.end method
