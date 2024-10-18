.class public Lcom/shiftup/auth/AppleAdapter;
.super Lcom/shiftup/auth/AuthAdapter;
.source "AppleAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Auth/AppleAdapter"


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mRedirectURL:Ljava/lang/String;

.field private mScheme:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/shiftup/auth/AuthAdapter;-><init>()V

    const-string v0, "Auth/AppleAdapter"

    const-string v1, "Apple Login Constructor"

    .line 22
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static AppleInitTheme(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Auth/AppleAdapter"

    .line 103
    invoke-static {v0, p0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {p0}, Lcom/shiftup/auth/apple/ASWebviewActivity;->InitWebviewTheme(Ljava/lang/String;)V

    return-void
.end method

.method public static native ParseLoginUserData(Ljava/lang/String;)V
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getCurrentState()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public init(Lcom/shiftup/auth/AuthInitParam;)V
    .locals 2

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Lcom/shiftup/auth/AuthAdapter;->SetAuthState(I)V

    const-string v0, "Auth/AppleAdapter"

    const-string v1, "Apple Login Init"

    .line 54
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    instance-of v1, p1, Lcom/shiftup/auth/AppleInitParam;

    if-nez v1, :cond_0

    const-string p1, "param is not instanceof AppleInitParam"

    .line 57
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 58
    invoke-static {p1}, Lcom/shiftup/auth/AuthAdapter;->SetAuthState(I)V

    return-void

    .line 62
    :cond_0
    check-cast p1, Lcom/shiftup/auth/AppleInitParam;

    iget-object v0, p1, Lcom/shiftup/auth/AppleInitParam;->mBaseURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/shiftup/auth/AppleAdapter;->mBaseUrl:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/shiftup/auth/AppleInitParam;->mScheme:Ljava/lang/String;

    iput-object v0, p0, Lcom/shiftup/auth/AppleAdapter;->mScheme:Ljava/lang/String;

    .line 64
    iget-object p1, p1, Lcom/shiftup/auth/AppleInitParam;->mRedirectURL:Ljava/lang/String;

    iput-object p1, p0, Lcom/shiftup/auth/AppleAdapter;->mRedirectURL:Ljava/lang/String;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shiftup/auth/AuthException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 p2, 0x4

    :try_start_0
    const-string v0, "data"

    .line 32
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    .line 33
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const-string v1, "access_failed"

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v0}, Lcom/shiftup/auth/AppleAdapter;->ParseLoginUserData(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 42
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/shiftup/auth/AuthAdapter;->SetAuthState(I)V

    return p1

    :catch_0
    move-exception p3

    .line 36
    invoke-virtual {p3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 37
    invoke-static {p2}, Lcom/shiftup/auth/AuthAdapter;->SetAuthState(I)V

    return p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "Auth/AppleAdapter"

    const-string v1, "AppleAdapter onDestroy"

    .line 109
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public platformLogIn()V
    .locals 3

    const-string v0, "Auth/AppleAdapter"

    const-string v1, "Apple Login Start"

    .line 69
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 70
    invoke-static {v0}, Lcom/shiftup/auth/AuthAdapter;->SetAuthState(I)V

    .line 73
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/shiftup/auth/apple/ASWebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    iget-object v1, p0, Lcom/shiftup/auth/AppleAdapter;->mBaseUrl:Ljava/lang/String;

    const-string v2, "baseURL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/shiftup/auth/AppleAdapter;->mScheme:Ljava/lang/String;

    const-string v2, "scheme"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/shiftup/auth/AppleAdapter;->mRedirectURL:Ljava/lang/String;

    const-string v2, "redirectURL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-static {}, Lcom/shiftup/auth/AuthBridge;->getInstance()Lcom/shiftup/auth/AuthBridge;

    move-result-object v1

    sget-object v2, Lcom/shiftup/auth/AuthPlatform;->Apple:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v1, v0, v2}, Lcom/shiftup/auth/AuthBridge;->startActivityForAuth(Landroid/content/Intent;Lcom/shiftup/auth/AuthPlatform;)V

    :cond_0
    return-void
.end method

.method public platformLogOut()V
    .locals 1

    const/4 v0, 0x3

    .line 84
    invoke-static {v0}, Lcom/shiftup/auth/AuthAdapter;->SetAuthState(I)V

    return-void
.end method
