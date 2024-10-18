.class Lcom/NextFloor/DestinyChild/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NextFloor/DestinyChild/MainActivity;->DefaultDataSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "ux_default"

    .line 250
    invoke-static {v0}, Lcom/NextFloor/DestinyChild/MainActivity;->deleteExternalFileDirectory(Ljava/lang/String;)V

    .line 251
    invoke-static {v0}, Lcom/NextFloor/DestinyChild/MainActivity;->copyAssetFolder(Ljava/lang/String;)V

    return-void
.end method
