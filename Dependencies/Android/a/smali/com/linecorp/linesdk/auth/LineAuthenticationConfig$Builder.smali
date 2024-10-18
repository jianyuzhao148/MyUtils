.class public Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;
.super Ljava/lang/Object;
.source "LineAuthenticationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private apiBaseUrl:Landroid/net/Uri;

.field private final channelId:Ljava/lang/String;

.field private isEncryptorPreparationDisabled:Z

.field private isLineAppAuthenticationDisabled:Z

.field private openidDiscoveryDocumentUrl:Landroid/net/Uri;

.field private webLoginPageUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->channelId:Ljava/lang/String;

    const-string p1, "https://access.line.me/.well-known/openid-configuration"

    .line 165
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->openidDiscoveryDocumentUrl:Landroid/net/Uri;

    const-string p1, "https://api.line.me/"

    .line 166
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->apiBaseUrl:Landroid/net/Uri;

    const-string p1, "https://access.line.me/oauth2/v2.1/login"

    .line 167
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->webLoginPageUrl:Landroid/net/Uri;

    return-void

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "channelId is empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;)Landroid/net/Uri;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->openidDiscoveryDocumentUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;)Landroid/net/Uri;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->apiBaseUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$400(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;)Landroid/net/Uri;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->webLoginPageUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$500(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->isLineAppAuthenticationDisabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->isEncryptorPreparationDisabled:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
    .locals 2

    .line 206
    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;-><init>(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$1;)V

    return-object v0
.end method

.method public disableLineAppAuthentication()Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->isLineAppAuthenticationDisabled:Z

    return-object p0
.end method
