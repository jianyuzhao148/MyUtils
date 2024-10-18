.class public final Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;
.super Lcom/xsolla/android/payments/ui/ActivityPaystation;
.source "ActivityPaystationWebView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private redirectHost:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xsolla/android/payments/ui/ActivityPaystation;-><init>()V

    return-void
.end method

.method public static final synthetic access$finishWithResult(Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;ILcom/xsolla/android/payments/XPayments$Result;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->finishWithResult(ILcom/xsolla/android/payments/XPayments$Result;)V

    return-void
.end method

.method public static final synthetic access$getRedirectHost$p(Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->redirectHost:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "redirectHost"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final configureWebView()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 43
    sget v0, Lcom/xsolla/android/payments/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    const-string v2, "webview"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v3, "webview.settings"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView$configureWebView$1;

    invoke-direct {v1, p0}, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView$configureWebView$1;-><init>(Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private final finishWithResult(ILcom/xsolla/android/payments/XPayments$Result;)V
    .locals 2

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result"

    .line 84
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public onBackPressed()V
    .locals 4

    .line 31
    sget v0, Lcom/xsolla/android/payments/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0, v0}, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 36
    new-instance v1, Lcom/xsolla/android/payments/XPayments$Result;

    sget-object v2, Lcom/xsolla/android/payments/XPayments$Status;->CANCELLED:Lcom/xsolla/android/payments/XPayments$Status;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/payments/XPayments$Result;-><init>(Lcom/xsolla/android/payments/XPayments$Status;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->finishWithResult(ILcom/xsolla/android/payments/XPayments$Result;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget p1, Lcom/xsolla/android/payments/R$layout;->xsolla_payments_activity_paystation:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->url:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "redir"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->redirectHost:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->configureWebView()V

    .line 27
    sget p1, Lcom/xsolla/android/payments/R$id;->webview:I

    invoke-virtual {p0, p1}, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "url"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 23
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method
