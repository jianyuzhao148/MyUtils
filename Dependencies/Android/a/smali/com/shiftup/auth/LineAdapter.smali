.class public Lcom/shiftup/auth/LineAdapter;
.super Lcom/shiftup/auth/AuthAdapter;
.source "LineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shiftup/auth/LineAdapter$State;
    }
.end annotation


# instance fields
.field private LINE_CHANNEL_ID:Ljava/lang/String;

.field private loginInfo:Lorg/json/JSONObject;

.field private mLineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

.field private mLineId:Ljava/lang/String;

.field private mLineState:Ljava/lang/String;

.field private mLineToken:Ljava/lang/String;

.field private mState:Lcom/shiftup/auth/LineAdapter$State;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/shiftup/auth/AuthAdapter;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->loginInfo:Lorg/json/JSONObject;

    .line 40
    sget-object v0, Lcom/shiftup/auth/LineAdapter$State;->INIT:Lcom/shiftup/auth/LineAdapter$State;

    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mState:Lcom/shiftup/auth/LineAdapter$State;

    return-void
.end method


# virtual methods
.method public LineLoadCachedToken()Z
    .locals 8

    const-string v0, "Moderato"

    const-string v1, "Line Load cached token"

    .line 150
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/shiftup/auth/LineAdapter;->mLineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "Line Load cached token api client is null"

    .line 152
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 156
    :cond_0
    invoke-interface {v1}, Lcom/linecorp/linesdk/api/LineApiClient;->getCurrentAccessToken()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 161
    :cond_1
    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/LineAccessToken;

    if-nez v1, :cond_2

    const-string v1, "lineAccessToken is null"

    .line 163
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 167
    :cond_2
    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineAccessToken;->getExpiresInMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_5

    const-string v3, "getExpiresInMillis > 0"

    .line 168
    invoke-static {v0, v3}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/shiftup/auth/LineAdapter;->mLineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    invoke-interface {v3}, Lcom/linecorp/linesdk/api/LineApiClient;->getProfile()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    .line 174
    :cond_3
    invoke-virtual {v3}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/linecorp/linesdk/LineProfile;

    if-nez v3, :cond_4

    const-string v1, "no line profile"

    .line 176
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    const-string v2, "Line Load cached token success"

    .line 180
    invoke-static {v0, v2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3}, Lcom/linecorp/linesdk/LineProfile;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineId:Ljava/lang/String;

    .line 182
    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineAccessToken;->getTokenString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineToken:Ljava/lang/String;

    const-string v0, "SUCCESS"

    .line 183
    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineState:Ljava/lang/String;

    .line 184
    sget-object v0, Lcom/shiftup/auth/LineAdapter$State;->SUCCESS:Lcom/shiftup/auth/LineAdapter$State;

    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mState:Lcom/shiftup/auth/LineAdapter$State;

    const/4 v0, 0x1

    return v0

    :cond_5
    return v2
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentState()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineState:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineId:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/shiftup/auth/AuthInitParam;)V
    .locals 2

    const-string v0, "Moderato"

    const-string v1, "InitLine"

    .line 92
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 95
    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineId:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineToken:Ljava/lang/String;

    const-string v0, "INITIALIZED"

    .line 97
    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineState:Ljava/lang/String;

    .line 99
    instance-of v0, p1, Lcom/shiftup/auth/LineInitParam;

    if-nez v0, :cond_0

    const-string p1, "LineAdapter"

    const-string v0, "param is not instanceof LineInitParam"

    .line 100
    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_0
    check-cast p1, Lcom/shiftup/auth/LineInitParam;

    iget-object p1, p1, Lcom/shiftup/auth/LineInitParam;->mChannelID:Ljava/lang/String;

    iput-object p1, p0, Lcom/shiftup/auth/LineAdapter;->LINE_CHANNEL_ID:Ljava/lang/String;

    .line 105
    sget-object p1, Lcom/shiftup/auth/LineAdapter$State;->INIT:Lcom/shiftup/auth/LineAdapter$State;

    iput-object p1, p0, Lcom/shiftup/auth/LineAdapter;->mState:Lcom/shiftup/auth/LineAdapter$State;

    .line 107
    iget-object p1, p0, Lcom/shiftup/auth/LineAdapter;->mLineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    if-nez p1, :cond_1

    .line 108
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetAppContext()Landroid/content/Context;

    move-result-object p1

    .line 109
    new-instance v0, Lcom/linecorp/linesdk/api/LineApiClientBuilder;

    iget-object v1, p0, Lcom/shiftup/auth/LineAdapter;->LINE_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/api/LineApiClientBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->build()Lcom/linecorp/linesdk/api/LineApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/shiftup/auth/LineAdapter;->mLineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shiftup/auth/AuthException;
        }
    .end annotation

    .line 45
    invoke-static {p3}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginResultFromIntent(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ResponseCode RC_LINE_LOGIN "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Moderato"

    invoke-static {p3, p2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object p2, Lcom/shiftup/auth/LineAdapter$1;->$SwitchMap$com$linecorp$linesdk$LineApiResponseCode:[I

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, ""

    if-eq p2, v0, :cond_0

    const-string p2, "LINE Login FAILED!"

    .line 78
    invoke-static {p3, p2}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-object v2, p0, Lcom/shiftup/auth/LineAdapter;->mLineToken:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/shiftup/auth/LineAdapter;->mLineId:Ljava/lang/String;

    const-string p1, "FAILED"

    .line 83
    iput-object p1, p0, Lcom/shiftup/auth/LineAdapter;->mLineState:Ljava/lang/String;

    .line 84
    sget-object p1, Lcom/shiftup/auth/LineAdapter$State;->FAILED:Lcom/shiftup/auth/LineAdapter$State;

    iput-object p1, p0, Lcom/shiftup/auth/LineAdapter;->mState:Lcom/shiftup/auth/LineAdapter$State;

    const-string p1, "Line Login Failed!"

    .line 85
    invoke-virtual {p0, p1}, Lcom/shiftup/auth/AuthAdapter;->AuthError(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p1, "LINE Login Canceled by user!!"

    .line 68
    invoke-static {p3, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object v2, p0, Lcom/shiftup/auth/LineAdapter;->mLineToken:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lcom/shiftup/auth/LineAdapter;->mLineId:Ljava/lang/String;

    const-string p1, "CANCEL"

    .line 71
    iput-object p1, p0, Lcom/shiftup/auth/LineAdapter;->mLineState:Ljava/lang/String;

    .line 72
    sget-object p1, Lcom/shiftup/auth/LineAdapter$State;->INIT:Lcom/shiftup/auth/LineAdapter$State;

    iput-object p1, p0, Lcom/shiftup/auth/LineAdapter;->mState:Lcom/shiftup/auth/LineAdapter$State;

    .line 74
    invoke-virtual {p0}, Lcom/shiftup/auth/AuthAdapter;->AuthCancel()V

    return v1

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineCredential()Lcom/linecorp/linesdk/LineCredential;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineCredential;->getAccessToken()Lcom/linecorp/linesdk/LineAccessToken;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineAccessToken;->getTokenString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/shiftup/auth/LineAdapter;->mLineToken:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineProfile()Lcom/linecorp/linesdk/LineProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineProfile;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shiftup/auth/LineAdapter;->mLineId:Ljava/lang/String;

    const-string p1, "SUCCESS"

    .line 53
    iput-object p1, p0, Lcom/shiftup/auth/LineAdapter;->mLineState:Ljava/lang/String;

    .line 54
    sget-object p1, Lcom/shiftup/auth/LineAdapter$State;->SUCCESS:Lcom/shiftup/auth/LineAdapter$State;

    iput-object p1, p0, Lcom/shiftup/auth/LineAdapter;->mState:Lcom/shiftup/auth/LineAdapter$State;

    .line 57
    :try_start_0
    iget-object p1, p0, Lcom/shiftup/auth/LineAdapter;->loginInfo:Lorg/json/JSONObject;

    const-string p2, "AccessToken"

    iget-object p3, p0, Lcom/shiftup/auth/LineAdapter;->mLineToken:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object p1, p0, Lcom/shiftup/auth/LineAdapter;->loginInfo:Lorg/json/JSONObject;

    const-string p2, "UserId"

    iget-object p3, p0, Lcom/shiftup/auth/LineAdapter;->mLineId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object p1, p0, Lcom/shiftup/auth/LineAdapter;->loginInfo:Lorg/json/JSONObject;

    const-string p2, "CurrentState"

    iget-object p3, p0, Lcom/shiftup/auth/LineAdapter;->mLineState:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 64
    :goto_0
    iget-object p1, p0, Lcom/shiftup/auth/LineAdapter;->loginInfo:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/shiftup/auth/AuthAdapter;->AuthSuccess(Lorg/json/JSONObject;)V

    return v0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "Moderato"

    const-string v1, "LineAdapter onDestroy"

    .line 221
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public platformLogIn()V
    .locals 7

    const-string v0, "Moderato"

    const-string v1, "LineLogin"

    .line 116
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    .line 117
    iput-object v1, p0, Lcom/shiftup/auth/LineAdapter;->mLineToken:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/shiftup/auth/LineAdapter;->mLineId:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/shiftup/auth/LineAdapter;->LineLoadCachedToken()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LineLoadCachedToken failed"

    .line 120
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TRY_LOGIN"

    .line 121
    iput-object v1, p0, Lcom/shiftup/auth/LineAdapter;->mLineState:Ljava/lang/String;

    .line 122
    sget-object v1, Lcom/shiftup/auth/LineAdapter$State;->TRYING:Lcom/shiftup/auth/LineAdapter$State;

    iput-object v1, p0, Lcom/shiftup/auth/LineAdapter;->mState:Lcom/shiftup/auth/LineAdapter$State;

    .line 125
    :try_start_0
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetAppContext()Landroid/content/Context;

    move-result-object v1

    .line 126
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    .line 127
    iget-object v2, p0, Lcom/shiftup/auth/LineAdapter;->LINE_CHANNEL_ID:Ljava/lang/String;

    new-instance v3, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    invoke-direct {v3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/linecorp/linesdk/Scope;

    const/4 v5, 0x0

    sget-object v6, Lcom/linecorp/linesdk/Scope;->PROFILE:Lcom/linecorp/linesdk/Scope;

    aput-object v6, v4, v5

    .line 131
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->scopes(Ljava/util/List;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    .line 132
    invoke-virtual {v3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->build()Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    move-result-object v3

    .line 127
    invoke-static {v1, v2, v3}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginIntent(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object v1

    .line 133
    invoke-static {}, Lcom/shiftup/auth/AuthBridge;->getInstance()Lcom/shiftup/auth/AuthBridge;

    move-result-object v2

    sget-object v3, Lcom/shiftup/auth/AuthPlatform;->Line:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v2, v1, v3}, Lcom/shiftup/auth/AuthBridge;->startActivityForAuth(Landroid/content/Intent;Lcom/shiftup/auth/AuthPlatform;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "line login failed 4"

    .line 135
    invoke-static {v0, v2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "FAILED"

    .line 136
    iput-object v2, p0, Lcom/shiftup/auth/LineAdapter;->mLineState:Ljava/lang/String;

    .line 137
    sget-object v2, Lcom/shiftup/auth/LineAdapter$State;->FAILED:Lcom/shiftup/auth/LineAdapter$State;

    iput-object v2, p0, Lcom/shiftup/auth/LineAdapter;->mState:Lcom/shiftup/auth/LineAdapter$State;

    .line 138
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v1, "line login failed 4 end"

    .line 139
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "LineLoadCachedToken success"

    .line 143
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SUCCESS"

    .line 144
    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineState:Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/shiftup/auth/LineAdapter$State;->SUCCESS:Lcom/shiftup/auth/LineAdapter$State;

    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mState:Lcom/shiftup/auth/LineAdapter$State;

    :goto_0
    return-void
.end method

.method public platformLogOut()V
    .locals 2

    const-string v0, "Moderato"

    const-string v1, "LineLogOut"

    .line 194
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    invoke-interface {v0}, Lcom/linecorp/linesdk/api/LineApiClient;->logout()Lcom/linecorp/linesdk/LineApiResponse;

    const-string v0, ""

    .line 198
    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineId:Ljava/lang/String;

    .line 199
    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineToken:Ljava/lang/String;

    const-string v0, "LOGOUT"

    .line 200
    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mLineState:Ljava/lang/String;

    .line 201
    sget-object v0, Lcom/shiftup/auth/LineAdapter$State;->INIT:Lcom/shiftup/auth/LineAdapter$State;

    iput-object v0, p0, Lcom/shiftup/auth/LineAdapter;->mState:Lcom/shiftup/auth/LineAdapter$State;

    return-void
.end method
