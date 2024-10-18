.class Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;
.super Ljava/lang/Object;
.source "LineAuthenticationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;,
        Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;
    }
.end annotation


# static fields
.field private static intentResultFromLineAPP:Landroid/content/Intent;


# instance fields
.field private final accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

.field private final activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

.field private final authApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

.field private final authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

.field private final browserAuthenticationApi:Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

.field private final config:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

.field private final params:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

.field private final talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V
    .locals 9

    .line 69
    new-instance v3, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getOpenidDiscoveryDocumentUrl()Landroid/net/Uri;

    move-result-object v1

    .line 74
    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getApiBaseUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v0, v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    new-instance v4, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getApiBaseUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v5, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

    invoke-direct {v5, p3}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;)V

    new-instance v6, Lcom/linecorp/linesdk/internal/AccessTokenCache;

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/linecorp/linesdk/internal/AccessTokenCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p4

    .line 69
    invoke-direct/range {v0 .. v8}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;Lcom/linecorp/linesdk/internal/AccessTokenCache;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V

    return-void
.end method

.method constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;Lcom/linecorp/linesdk/internal/AccessTokenCache;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    .line 95
    iput-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->config:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    .line 96
    iput-object p3, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    .line 97
    iput-object p4, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    .line 98
    iput-object p5, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->browserAuthenticationApi:Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

    .line 99
    iput-object p6, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    .line 100
    iput-object p7, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    .line 101
    iput-object p8, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->params:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    return-void
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    return-object p0
.end method

.method static synthetic access$400()Landroid/content/Intent;
    .locals 1

    .line 39
    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->intentResultFromLineAPP:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$402(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 39
    sput-object p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->intentResultFromLineAPP:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$500(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->config:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    return-object p0
.end method

.method static synthetic access$600(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    return-object p0
.end method

.method static synthetic access$800(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)Lcom/linecorp/linesdk/internal/AccessTokenCache;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    return-object p0
.end method

.method public static setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 132
    sput-object p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->intentResultFromLineAPP:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method createPKCECode()Lcom/linecorp/linesdk/internal/pkce/PKCECode;
    .locals 1

    .line 127
    invoke-static {}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->newCode()Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    move-result-object v0

    return-object v0
.end method

.method handleCancel()V
    .locals 4

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$1;)V

    const-wide/16 v2, 0x3e8

    .line 170
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method handleIntentFromLineApp(Landroid/content/Intent;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->authenticationIntentReceived()V

    .line 138
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->browserAuthenticationApi:Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

    .line 139
    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->getAuthenticationResultFrom(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->authenticationIntentHandled()V

    .line 143
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->isAuthenticationAgentError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->getLineApiError()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->authenticationAgentError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->getLineApiError()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->onAuthenticationFinished(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    return-void

    .line 149
    :cond_1
    new-instance v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 154
    iget-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    .line 155
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getStatus()Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    move-result-object p1

    sget-object p2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_RECEIVED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$1;)V

    const-wide/16 v0, 0x3e8

    .line 161
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method startLineAuthentication()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->authenticationStarted()V

    .line 108
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->createPKCECode()Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v1, v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->setPKCECode(Lcom/linecorp/linesdk/internal/pkce/PKCECode;)V

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->browserAuthenticationApi:Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

    iget-object v2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    iget-object v3, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->config:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    iget-object v4, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->params:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->getRequest(Landroid/content/Context;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->isLineAppAuthentication()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->getStartActivityOptions()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->getStartActivityOptions()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->setSentRedirectUri(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 120
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->authenticationIntentHandled()V

    .line 121
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->activity:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Ljava/lang/Exception;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->onAuthenticationFinished(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    :goto_1
    return-void
.end method
