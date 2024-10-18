.class public Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;
.super Ljava/lang/Object;
.source "LineApiClientImpl.java"

# interfaces
.implements Lcom/linecorp/linesdk/api/LineApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;
    }
.end annotation


# static fields
.field private static final ERROR_RESPONSE_NO_TOKEN:Lcom/linecorp/linesdk/LineApiResponse;


# instance fields
.field private final accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

.field private final channelId:Ljava/lang/String;

.field private final oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

.field private final talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token is null"

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    sput-object v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->ERROR_RESPONSE_NO_TOKEN:Lcom/linecorp/linesdk/LineApiResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;Lcom/linecorp/linesdk/internal/AccessTokenCache;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->channelId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    .line 49
    iput-object p3, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    .line 50
    iput-object p4, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->logout(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->verifyToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    return-object p0
.end method

.method private callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken<",
            "TT;>;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;"
        }
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->getAccessToken()Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 67
    sget-object p1, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->ERROR_RESPONSE_NO_TOKEN:Lcom/linecorp/linesdk/LineApiResponse;

    return-object p1

    .line 69
    :cond_0
    invoke-interface {p1, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;->call(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 60
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get access token fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method private logout(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->clear()V

    .line 87
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->revokeRefreshToken(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method private verifyToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineCredential;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    .line 156
    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->verifyAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object p1

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v0

    .line 158
    invoke-static {p1, v0}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    .line 161
    :cond_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 165
    :try_start_0
    iget-object v10, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    new-instance v11, Lcom/linecorp/linesdk/internal/InternalAccessToken;

    .line 167
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->getExpiresInMillis()J

    move-result-wide v3

    .line 170
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v7

    move-object v1, v11

    move-wide v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/linecorp/linesdk/internal/InternalAccessToken;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 165
    invoke-virtual {v10, v11}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->saveAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    new-instance v7, Lcom/linecorp/linesdk/LineCredential;

    new-instance v10, Lcom/linecorp/linesdk/LineAccessToken;

    .line 181
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->getExpiresInMillis()J

    move-result-wide v3

    move-object v1, v10

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    .line 184
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->getScopes()Ljava/util/List;

    move-result-object p1

    invoke-direct {v7, v10, p1}, Lcom/linecorp/linesdk/LineCredential;-><init>(Lcom/linecorp/linesdk/LineAccessToken;Ljava/util/List;)V

    .line 178
    invoke-static {v7}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 172
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save access token fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCurrentAccessToken()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineAccessToken;",
            ">;"
        }
    .end annotation

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->getAccessToken()Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 201
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "The cached access token does not exist."

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    new-instance v7, Lcom/linecorp/linesdk/LineAccessToken;

    .line 207
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getExpiresInMillis()J

    move-result-wide v3

    .line 209
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getIssuedClientTimeMillis()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    .line 206
    invoke-static {v7}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 194
    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v2, Lcom/linecorp/linesdk/LineApiError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get access token fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-static {v1, v2}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public getProfile()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineProfile;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$3;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$3;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public logout()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "*>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$1;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$1;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public refreshAccessToken()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineAccessToken;",
            ">;"
        }
    .end annotation

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->getAccessToken()Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iget-object v2, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->channelId:Ljava/lang/String;

    .line 111
    invoke-virtual {v1, v2, v0}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->refreshToken(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    .line 118
    :cond_1
    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/internal/RefreshTokenResult;

    .line 119
    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v8, v0

    .line 121
    new-instance v0, Lcom/linecorp/linesdk/internal/InternalAccessToken;

    .line 122
    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->getExpiresInMillis()J

    move-result-wide v4

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/linecorp/linesdk/internal/InternalAccessToken;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 128
    :try_start_1
    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v1, v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->saveAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    new-instance v1, Lcom/linecorp/linesdk/LineAccessToken;

    .line 137
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getExpiresInMillis()J

    move-result-wide v4

    .line 139
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getIssuedClientTimeMillis()J

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    .line 136
    invoke-static {v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 130
    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v2, Lcom/linecorp/linesdk/LineApiError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save access token fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {v1, v2}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    .line 106
    :cond_3
    :goto_1
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token or refresh token is not found."

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    .line 99
    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v2, Lcom/linecorp/linesdk/LineApiError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get access token fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-static {v1, v2}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyToken()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineCredential;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$2;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$2;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method
