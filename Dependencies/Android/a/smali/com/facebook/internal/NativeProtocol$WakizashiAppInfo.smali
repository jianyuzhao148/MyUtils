.class final Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;
.super Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.source "NativeProtocol.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WakizashiAppInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 867
    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoginActivity()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.katana.ProxyAuth"

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.wakizashi"

    return-object v0
.end method
