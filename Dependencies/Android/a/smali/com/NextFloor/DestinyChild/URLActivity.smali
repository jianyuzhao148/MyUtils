.class public Lcom/NextFloor/DestinyChild/URLActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "URLActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/NextFloor/DestinyChild/URLActivity$myWebClient;
    }
.end annotation


# static fields
.field protected static final cFULLSENSOR:I = 0x3

.field protected static final cLANDSCAPE:I = 0x2

.field protected static final cPORTRAIT:I = 0x1

.field static m_backButtonName:Ljava/lang/String; = ""

.field static m_orientation:I = 0x0

.field static m_url:Ljava/lang/String; = ""

.field static m_webView:Landroid/webkit/WebView;


# instance fields
.field private btn_left:Landroidx/appcompat/widget/AppCompatImageButton;

.field private btn_refresh:Landroidx/appcompat/widget/AppCompatImageButton;

.field private btn_right:Landroidx/appcompat/widget/AppCompatImageButton;

.field private m_isLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/NextFloor/DestinyChild/URLActivity;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/NextFloor/DestinyChild/URLActivity;->m_isLoading:Z

    return p1
.end method


# virtual methods
.method public RefreshButtons()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/URLActivity;->btn_left:Landroidx/appcompat/widget/AppCompatImageButton;

    sget-object v1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/NextFloor/DestinyChild/URLActivity;->SetImageButton(Landroidx/appcompat/widget/AppCompatImageButton;Z)V

    .line 233
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/URLActivity;->btn_right:Landroidx/appcompat/widget/AppCompatImageButton;

    sget-object v1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/NextFloor/DestinyChild/URLActivity;->SetImageButton(Landroidx/appcompat/widget/AppCompatImageButton;Z)V

    .line 234
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/URLActivity;->btn_refresh:Landroidx/appcompat/widget/AppCompatImageButton;

    iget-boolean v1, p0, Lcom/NextFloor/DestinyChild/URLActivity;->m_isLoading:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/NextFloor/DestinyChild/URLActivity;->SetImageButton(Landroidx/appcompat/widget/AppCompatImageButton;Z)V

    return-void
.end method

.method public SetImageButton(Landroidx/appcompat/widget/AppCompatImageButton;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xff

    if-eqz p2, :cond_1

    const/16 p2, 0xdf

    const/16 v1, 0xa8

    const/16 v2, 0x21

    .line 244
    invoke-static {v0, p2, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x33

    .line 248
    invoke-static {v0, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/URLActivity;->btn_left:Landroidx/appcompat/widget/AppCompatImageButton;

    if-ne p1, v0, :cond_0

    .line 213
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 214
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 215
    invoke-virtual {p0}, Lcom/NextFloor/DestinyChild/URLActivity;->RefreshButtons()V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/URLActivity;->btn_right:Landroidx/appcompat/widget/AppCompatImageButton;

    if-ne p1, v0, :cond_1

    .line 219
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    .line 221
    invoke-virtual {p0}, Lcom/NextFloor/DestinyChild/URLActivity;->RefreshButtons()V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/URLActivity;->btn_refresh:Landroidx/appcompat/widget/AppCompatImageButton;

    if-ne p1, v0, :cond_2

    .line 225
    iget-boolean p1, p0, Lcom/NextFloor/DestinyChild/URLActivity;->m_isLoading:Z

    if-nez p1, :cond_2

    .line 226
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 205
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 75
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b008e

    .line 76
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f08006c

    .line 78
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 80
    new-instance v0, Lcom/NextFloor/DestinyChild/URLActivity$1;

    invoke-direct {v0, p0}, Lcom/NextFloor/DestinyChild/URLActivity$1;-><init>(Lcom/NextFloor/DestinyChild/URLActivity;)V

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_orientation:I

    const-string v0, "Moderato"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "URLActivity Force Portrait"

    .line 94
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 95
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-string p1, "URLActivity Force LandScape"

    .line 99
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 100
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const-string p1, "URLActivity Full Sensor"

    .line 104
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 105
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    :goto_0
    const p1, 0x7f08021c

    .line 108
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    sput-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    .line 109
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 110
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 111
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 112
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 113
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 114
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    const/high16 v0, 0x2000000

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 115
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 117
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/NextFloor/DestinyChild/URLActivity$2;

    invoke-direct {v0, p0}, Lcom/NextFloor/DestinyChild/URLActivity$2;-><init>(Lcom/NextFloor/DestinyChild/URLActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 152
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;

    invoke-direct {v0, p0}, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 153
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    sget-object v0, Lcom/NextFloor/DestinyChild/URLActivity;->m_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const p1, 0x7f08006d

    .line 156
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object p1, p0, Lcom/NextFloor/DestinyChild/URLActivity;->btn_left:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz p1, :cond_3

    .line 159
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const p1, 0x7f08006f

    .line 161
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object p1, p0, Lcom/NextFloor/DestinyChild/URLActivity;->btn_right:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz p1, :cond_4

    .line 164
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const p1, 0x7f08006e

    .line 166
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object p1, p0, Lcom/NextFloor/DestinyChild/URLActivity;->btn_refresh:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz p1, :cond_5

    .line 169
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_5
    invoke-virtual {p0}, Lcom/NextFloor/DestinyChild/URLActivity;->RefreshButtons()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 48
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_2

    .line 54
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    sget-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 68
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
