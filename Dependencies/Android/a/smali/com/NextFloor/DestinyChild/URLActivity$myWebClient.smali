.class public Lcom/NextFloor/DestinyChild/URLActivity$myWebClient;
.super Landroid/webkit/WebViewClient;
.source "URLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/NextFloor/DestinyChild/URLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "myWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/NextFloor/DestinyChild/URLActivity;


# direct methods
.method public constructor <init>(Lcom/NextFloor/DestinyChild/URLActivity;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/URLActivity$myWebClient;->this$0:Lcom/NextFloor/DestinyChild/URLActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 196
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/NextFloor/DestinyChild/URLActivity$myWebClient;->this$0:Lcom/NextFloor/DestinyChild/URLActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/NextFloor/DestinyChild/URLActivity;->access$002(Lcom/NextFloor/DestinyChild/URLActivity;Z)Z

    .line 198
    iget-object p1, p0, Lcom/NextFloor/DestinyChild/URLActivity$myWebClient;->this$0:Lcom/NextFloor/DestinyChild/URLActivity;

    invoke-virtual {p1}, Lcom/NextFloor/DestinyChild/URLActivity;->RefreshButtons()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 181
    iget-object p1, p0, Lcom/NextFloor/DestinyChild/URLActivity$myWebClient;->this$0:Lcom/NextFloor/DestinyChild/URLActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/NextFloor/DestinyChild/URLActivity;->access$002(Lcom/NextFloor/DestinyChild/URLActivity;Z)Z

    .line 182
    iget-object p1, p0, Lcom/NextFloor/DestinyChild/URLActivity$myWebClient;->this$0:Lcom/NextFloor/DestinyChild/URLActivity;

    invoke-virtual {p1}, Lcom/NextFloor/DestinyChild/URLActivity;->RefreshButtons()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 189
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
