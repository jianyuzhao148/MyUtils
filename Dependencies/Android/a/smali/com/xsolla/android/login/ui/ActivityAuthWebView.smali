.class public final Lcom/xsolla/android/login/ui/ActivityAuthWebView;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityAuthWebView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;,
        Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private callbackUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$finishWithResult(Lcom/xsolla/android/login/ui/ActivityAuthWebView;ILcom/xsolla/android/login/ui/ActivityAuthWebView$Result;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->finishWithResult(ILcom/xsolla/android/login/ui/ActivityAuthWebView$Result;)V

    return-void
.end method

.method public static final synthetic access$getCallbackUrl$p(Lcom/xsolla/android/login/ui/ActivityAuthWebView;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->callbackUrl:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "callbackUrl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final configureWebView()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 61
    sget v0, Lcom/xsolla/android/login/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    const-string v2, "webview"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v3, "webview.settings"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "Mozilla/5.0 (Linux; Android 4.1.1; Galaxy Nexus Build/JRO03C) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19"

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 67
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/xsolla/android/login/ui/ActivityAuthWebView$configureWebView$1;

    invoke-direct {v1, p0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView$configureWebView$1;-><init>(Lcom/xsolla/android/login/ui/ActivityAuthWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private final finishWithResult(ILcom/xsolla/android/login/ui/ActivityAuthWebView$Result;)V
    .locals 2

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result"

    .line 95
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public onBackPressed()V
    .locals 4

    .line 49
    sget v0, Lcom/xsolla/android/login/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    new-instance v1, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;

    sget-object v2, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;->CANCELLED:Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;-><init>(Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, v0, v1}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->finishWithResult(ILcom/xsolla/android/login/ui/ActivityAuthWebView$Result;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 31
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget p1, Lcom/xsolla/android/login/R$layout;->xsolla_login_activity_auth_webview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "auth_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "callback_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->callbackUrl:Ljava/lang/String;

    .line 37
    sget v0, Lcom/xsolla/android/login/R$id;->close_icon:I

    invoke-virtual {p0, v0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/xsolla/android/login/ui/ActivityAuthWebView$onCreate$1;

    invoke-direct {v1, p0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView$onCreate$1;-><init>(Lcom/xsolla/android/login/ui/ActivityAuthWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-direct {p0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->configureWebView()V

    .line 45
    sget v0, Lcom/xsolla/android/login/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 34
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method
