.class Lcom/NextFloor/DestinyChild/URLActivity$2$3;
.super Ljava/lang/Object;
.source "URLActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NextFloor/DestinyChild/URLActivity$2;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/NextFloor/DestinyChild/URLActivity$2;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/NextFloor/DestinyChild/URLActivity$2;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/URLActivity$2$3;->this$1:Lcom/NextFloor/DestinyChild/URLActivity$2;

    iput-object p2, p0, Lcom/NextFloor/DestinyChild/URLActivity$2$3;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 138
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 139
    iget-object p2, p0, Lcom/NextFloor/DestinyChild/URLActivity$2$3;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
