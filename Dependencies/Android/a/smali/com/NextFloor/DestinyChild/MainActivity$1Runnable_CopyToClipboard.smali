.class Lcom/NextFloor/DestinyChild/MainActivity$1Runnable_CopyToClipboard;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NextFloor/DestinyChild/MainActivity;->CopyToClipboard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Runnable_CopyToClipboard"
.end annotation


# instance fields
.field private m_text:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 716
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 717
    iget-object v1, p0, Lcom/NextFloor/DestinyChild/MainActivity$1Runnable_CopyToClipboard;->m_text:Ljava/lang/String;

    const-string v2, "label"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 718
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/MainActivity$1Runnable_CopyToClipboard;->m_text:Ljava/lang/String;

    return-void
.end method
