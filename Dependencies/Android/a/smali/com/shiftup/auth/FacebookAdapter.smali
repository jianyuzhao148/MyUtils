.class public Lcom/shiftup/auth/FacebookAdapter;
.super Lcom/shiftup/auth/AuthAdapter;
.source "FacebookAdapter.java"


# instance fields
.field TAG:Ljava/lang/String;

.field mFacebookId:Ljava/lang/String;

.field mFacebookToken:Ljava/lang/String;

.field private m_facebookAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private m_facebookCallbackManager:Lcom/facebook/CallbackManager;

.field private m_shareDialog:Lcom/facebook/share/widget/ShareDialog;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/shiftup/auth/AuthAdapter;-><init>()V

    const-string v0, "su.auth.FacebookAdapter"

    .line 24
    iput-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookId:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    return-void
.end method

.method public static isFacebookRequestCode(I)Z
    .locals 0

    .line 178
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->isFacebookRequestCode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public FacebookRefreshCachedToken()Z
    .locals 4

    .line 121
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 123
    iput-object v1, p0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->TAG:Ljava/lang/String;

    const-string v1, "We dont\' have old facebook token "

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 128
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 132
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 134
    iput-object v1, p0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    return v2

    .line 138
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookId:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We have old facebook token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public SetFacebookRegisterCallback()V
    .locals 3

    .line 57
    new-instance v0, Lcom/shiftup/auth/FacebookAdapter$1;

    invoke-direct {v0, p0}, Lcom/shiftup/auth/FacebookAdapter$1;-><init>(Lcom/shiftup/auth/FacebookAdapter;)V

    iput-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->m_facebookAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 70
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shiftup/auth/FacebookAdapter;->m_facebookCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/shiftup/auth/FacebookAdapter$2;

    invoke-direct {v2, p0}, Lcom/shiftup/auth/FacebookAdapter$2;-><init>(Lcom/shiftup/auth/FacebookAdapter;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentState()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookId:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/shiftup/auth/AuthInitParam;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/shiftup/auth/FacebookAdapter;->TAG:Ljava/lang/String;

    const-string v0, "FacebookInit"

    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/shiftup/auth/FacebookAdapter;->m_facebookCallbackManager:Lcom/facebook/CallbackManager;

    .line 49
    invoke-virtual {p0}, Lcom/shiftup/auth/FacebookAdapter;->SetFacebookRegisterCallback()V

    const-string p1, ""

    .line 51
    iput-object p1, p0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookId:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    const/4 p1, 0x0

    .line 53
    invoke-static {p1}, Lcom/shiftup/auth/AuthAdapter;->SetAuthState(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shiftup/auth/AuthException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->m_facebookCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->m_facebookAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->stopTracking()V

    :cond_0
    return-void
.end method

.method public platformLogIn()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FacebookLogin"

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 106
    invoke-static {v0}, Lcom/shiftup/auth/AuthAdapter;->SetAuthState(I)V

    .line 108
    invoke-virtual {p0}, Lcom/shiftup/auth/FacebookAdapter;->FacebookRefreshCachedToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FacebookRequest"

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "public_profile"

    const-string v3, "email"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 115
    invoke-static {v0}, Lcom/shiftup/auth/AuthAdapter;->SetAuthState(I)V

    :goto_0
    return-void
.end method

.method public platformLogOut()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FacebookLogOut"

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    const-string v0, ""

    .line 148
    iput-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookId:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    const/4 v0, 0x6

    .line 151
    invoke-static {v0}, Lcom/shiftup/auth/AuthAdapter;->SetAuthState(I)V

    return-void
.end method
