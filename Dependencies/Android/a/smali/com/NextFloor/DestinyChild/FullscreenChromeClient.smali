.class public Lcom/NextFloor/DestinyChild/FullscreenChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "FullscreenChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/NextFloor/DestinyChild/FullscreenChromeClient$FullscreenHolder;
    }
.end annotation


# static fields
.field private static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private final callback:Landroidx/activity/result/ActivityResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultCallback<",
            "Landroidx/activity/result/ActivityResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mFullscreenContainer:Landroid/widget/FrameLayout;

.field private final mLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalOrientation:I

.field private uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 48
    new-instance v0, Lcom/NextFloor/DestinyChild/-$$Lambda$FullscreenChromeClient$y7jjaciKDEP_o7JIaVfoJ9YgAIE;

    invoke-direct {v0, p0}, Lcom/NextFloor/DestinyChild/-$$Lambda$FullscreenChromeClient$y7jjaciKDEP_o7JIaVfoJ9YgAIE;-><init>(Lcom/NextFloor/DestinyChild/FullscreenChromeClient;)V

    iput-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->callback:Landroidx/activity/result/ActivityResultCallback;

    .line 57
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 58
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 60
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/NextFloor/DestinyChild/-$$Lambda$FullscreenChromeClient$2E8NlDlSh78wm9XX2uMcBsLTDoA;->INSTANCE:Lcom/NextFloor/DestinyChild/-$$Lambda$FullscreenChromeClient$2E8NlDlSh78wm9XX2uMcBsLTDoA;

    .line 58
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/activity/result/ActivityResult;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$1(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    return-void
.end method

.method private setFullscreen(Z)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 133
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 135
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 136
    iget-object p1, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 140
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$FullscreenChromeClient(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->lambda$new$0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0}, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->setFullscreen(Z)V

    .line 97
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 98
    iget-object v1, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 100
    iput-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mCustomView:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 102
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p3}, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mOriginalOrientation:I

    .line 72
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 73
    new-instance v1, Lcom/NextFloor/DestinyChild/FullscreenChromeClient$FullscreenHolder;

    iget-object v2, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v1, v2}, Lcom/NextFloor/DestinyChild/FullscreenChromeClient$FullscreenHolder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 74
    sget-object v2, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v1, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mCustomView:Landroid/view/View;

    const/4 v0, 0x1

    .line 77
    invoke-direct {p0, v0}, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->setFullscreen(Z)V

    .line 78
    iput-object p2, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 79
    iget-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 81
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 109
    iget-object p1, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 110
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 111
    iput-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 114
    :cond_0
    iput-object p2, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 116
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 118
    :try_start_0
    iget-object p2, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->mLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 120
    :catch_0
    iput-object v0, p0, Lcom/NextFloor/DestinyChild/FullscreenChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    const-string p1, "Moderato"

    const-string p2, "Cannot Open File Chooser"

    .line 121
    invoke-static {p1, p2}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
