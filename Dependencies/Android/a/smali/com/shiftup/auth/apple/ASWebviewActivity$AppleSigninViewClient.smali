.class Lcom/shiftup/auth/apple/ASWebviewActivity$AppleSigninViewClient;
.super Landroid/webkit/WebViewClient;
.source "ASWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shiftup/auth/apple/ASWebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppleSigninViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/auth/apple/ASWebviewActivity;


# direct methods
.method private constructor <init>(Lcom/shiftup/auth/apple/ASWebviewActivity;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/shiftup/auth/apple/ASWebviewActivity$AppleSigninViewClient;->this$0:Lcom/shiftup/auth/apple/ASWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shiftup/auth/apple/ASWebviewActivity;Lcom/shiftup/auth/apple/ASWebviewActivity$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/shiftup/auth/apple/ASWebviewActivity$AppleSigninViewClient;-><init>(Lcom/shiftup/auth/apple/ASWebviewActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/shiftup/auth/apple/ASWebviewActivity$AppleSigninViewClient;->this$0:Lcom/shiftup/auth/apple/ASWebviewActivity;

    invoke-static {v0}, Lcom/shiftup/auth/apple/ASWebviewActivity;->access$100(Lcom/shiftup/auth/apple/ASWebviewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object p1, p0, Lcom/shiftup/auth/apple/ASWebviewActivity$AppleSigninViewClient;->this$0:Lcom/shiftup/auth/apple/ASWebviewActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shiftup/auth/apple/ASWebviewActivity;->access$200(Lcom/shiftup/auth/apple/ASWebviewActivity;Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1

    .line 119
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 124
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/shiftup/auth/apple/ASWebviewActivity$AppleSigninViewClient;->this$0:Lcom/shiftup/auth/apple/ASWebviewActivity;

    invoke-static {v1}, Lcom/shiftup/auth/apple/ASWebviewActivity;->access$100(Lcom/shiftup/auth/apple/ASWebviewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/shiftup/auth/apple/ASWebviewActivity$AppleSigninViewClient;->this$0:Lcom/shiftup/auth/apple/ASWebviewActivity;

    invoke-static {p1, v0}, Lcom/shiftup/auth/apple/ASWebviewActivity;->access$200(Lcom/shiftup/auth/apple/ASWebviewActivity;Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1

    .line 130
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
