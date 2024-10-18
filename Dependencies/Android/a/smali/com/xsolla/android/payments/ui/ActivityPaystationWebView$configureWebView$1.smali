.class public final Lcom/xsolla/android/payments/ui/ActivityPaystationWebView$configureWebView$1;
.super Landroid/webkit/WebViewClient;
.source "ActivityPaystationWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->configureWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityPaystationWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityPaystationWebView.kt\ncom/xsolla/android/payments/ui/ActivityPaystationWebView$configureWebView$1\n*L\n1#1,90:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;


# direct methods
.method constructor <init>(Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView$configureWebView$1;->this$0:Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "uri"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView$configureWebView$1;->this$0:Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;

    invoke-static {v2}, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->access$getRedirectHost$p(Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "invoice_id"

    .line 71
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView$configureWebView$1;->this$0:Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;

    const/4 v2, -0x1

    .line 74
    new-instance v3, Lcom/xsolla/android/payments/XPayments$Result;

    sget-object v4, Lcom/xsolla/android/payments/XPayments$Status;->COMPLETED:Lcom/xsolla/android/payments/XPayments$Status;

    invoke-direct {v3, v4, v0}, Lcom/xsolla/android/payments/XPayments$Result;-><init>(Lcom/xsolla/android/payments/XPayments$Status;Ljava/lang/String;)V

    .line 72
    invoke-static {v1, v2, v3}, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->access$finishWithResult(Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;ILcom/xsolla/android/payments/XPayments$Result;)V

    .line 77
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent://"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 46
    invoke-static {p2, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    .line 50
    :try_start_0
    invoke-static {p2, p1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    .line 51
    iget-object v1, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView$configureWebView$1;->this$0:Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "intent"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView$configureWebView$1;->this$0:Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    iget-object p2, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView$configureWebView$1;->this$0:Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;

    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return p1

    .line 51
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v2

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
