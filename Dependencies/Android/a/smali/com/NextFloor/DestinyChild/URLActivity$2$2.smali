.class Lcom/NextFloor/DestinyChild/URLActivity$2$2;
.super Ljava/lang/Object;
.source "URLActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 129
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/URLActivity$2$2;->this$1:Lcom/NextFloor/DestinyChild/URLActivity$2;

    iput-object p2, p0, Lcom/NextFloor/DestinyChild/URLActivity$2$2;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/NextFloor/DestinyChild/URLActivity$2$2;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method
