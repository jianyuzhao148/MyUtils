.class public final Lcom/xsolla/android/login/ui/ActivityAuthWebView$configureWebView$1;
.super Landroid/webkit/WebViewClient;
.source "ActivityAuthWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/login/ui/ActivityAuthWebView;->configureWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xsolla/android/login/ui/ActivityAuthWebView;


# direct methods
.method constructor <init>(Lcom/xsolla/android/login/ui/ActivityAuthWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/xsolla/android/login/ui/ActivityAuthWebView$configureWebView$1;->this$0:Lcom/xsolla/android/login/ui/ActivityAuthWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/xsolla/android/login/ui/ActivityAuthWebView$configureWebView$1;->this$0:Lcom/xsolla/android/login/ui/ActivityAuthWebView;

    invoke-static {v0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->access$getCallbackUrl$p(Lcom/xsolla/android/login/ui/ActivityAuthWebView;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-static {p2}, Lcom/xsolla/android/login/token/TokenUtils;->getTokenFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 76
    invoke-static {v0}, Lcom/xsolla/android/login/XLogin;->saveToken(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/xsolla/android/login/ui/ActivityAuthWebView$configureWebView$1;->this$0:Lcom/xsolla/android/login/ui/ActivityAuthWebView;

    .line 79
    new-instance v4, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;

    sget-object v5, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;->SUCCESS:Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;

    invoke-direct {v4, v5, v0, v3}, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;-><init>(Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v2, v1, v4}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->access$finishWithResult(Lcom/xsolla/android/login/ui/ActivityAuthWebView;ILcom/xsolla/android/login/ui/ActivityAuthWebView$Result;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/xsolla/android/login/ui/ActivityAuthWebView$configureWebView$1;->this$0:Lcom/xsolla/android/login/ui/ActivityAuthWebView;

    .line 84
    new-instance v2, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;

    sget-object v4, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;->ERROR:Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;

    const-string v5, "Token not found"

    invoke-direct {v2, v4, v3, v5}, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;-><init>(Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {v0, v1, v2}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->access$finishWithResult(Lcom/xsolla/android/login/ui/ActivityAuthWebView;ILcom/xsolla/android/login/ui/ActivityAuthWebView$Result;)V

    .line 88
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
