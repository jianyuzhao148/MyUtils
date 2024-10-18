.class public Lcom/shiftup/auth/GoogleAuthAdapter;
.super Lcom/shiftup/auth/AuthAdapter;
.source "GoogleAuthAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "su.auth.GoogleAuthAdapter"

.field private static mGoogleAccountId:Ljava/lang/String;

.field private static mGoogleAuthCode:Ljava/lang/String;

.field private static mGoogleEmail:Ljava/lang/String;

.field private static mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private static mGoogleState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/shiftup/auth/AuthAdapter;-><init>()V

    const-string v0, "su.auth.GoogleAuthAdapter"

    const-string v1, "Google Auth Adapter Constructor"

    .line 41
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    sput-object p0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    sput-object p0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public static getEmail()Ljava/lang/String;
    .locals 1

    .line 299
    sget-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleEmail:Ljava/lang/String;

    return-object v0
.end method

.method public static getGoogleLastAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 3

    .line 252
    :try_start_0
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "su.auth.GoogleAuthAdapter"

    const-string v2, "getGoogleLastAccount Exception!"

    .line 254
    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static googleGetTokenState()Ljava/lang/String;
    .locals 2

    .line 283
    sget-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "TRY_LOGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    sget-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "WAITING"

    return-object v0
.end method

.method public static googleIntentSignIn()V
    .locals 3

    .line 171
    sget-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez v0, :cond_0

    const-string v0, "FAILED"

    .line 172
    sput-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    return-void

    .line 177
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    .line 178
    invoke-static {}, Lcom/shiftup/auth/AuthBridge;->getInstance()Lcom/shiftup/auth/AuthBridge;

    move-result-object v1

    sget-object v2, Lcom/shiftup/auth/AuthPlatform;->Google:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v1, v0, v2}, Lcom/shiftup/auth/AuthBridge;->startActivityForAuth(Landroid/content/Intent;Lcom/shiftup/auth/AuthPlatform;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "su.auth.GoogleAuthAdapter"

    const-string v2, "googleIntentSignIn Exception!!"

    .line 180
    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 182
    invoke-static {}, Lcom/shiftup/auth/GoogleAuthAdapter;->resetGoogleAuthData()V

    :goto_0
    return-void
.end method

.method public static googleSilentSignIn()V
    .locals 3

    const-string v0, "su.auth.GoogleAuthAdapter"

    const-string v1, "GoogleSilentSignIn start"

    .line 145
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v1, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->silentSignIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GoogleSilentSignIn isSuccessful"

    .line 148
    invoke-static {v0, v2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 149
    invoke-static {v1, v0}, Lcom/shiftup/auth/GoogleAuthAdapter;->handleSignInResult(Lcom/google/android/gms/tasks/Task;Z)V

    goto :goto_0

    .line 152
    :cond_0
    new-instance v0, Lcom/shiftup/auth/GoogleAuthAdapter$3;

    invoke-direct {v0}, Lcom/shiftup/auth/GoogleAuthAdapter$3;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 159
    new-instance v0, Lcom/shiftup/auth/GoogleAuthAdapter$4;

    invoke-direct {v0}, Lcom/shiftup/auth/GoogleAuthAdapter$4;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void
.end method

.method public static handleSignInResult(Lcom/google/android/gms/tasks/Task;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "su.auth.GoogleAuthAdapter"

    .line 188
    :try_start_0
    const-class v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 189
    invoke-static {p0}, Lcom/shiftup/auth/GoogleAuthAdapter;->updateGoogleSignIn(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "handleSignInResult Exception!"

    .line 200
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {v0, p0}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 202
    invoke-static {}, Lcom/shiftup/auth/GoogleAuthAdapter;->resetGoogleAuthData()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 192
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSignInResult ApiException! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/shiftup/auth/GoogleAuthAdapter;->resetGoogleAuthData()V

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleSignInStatusCodes SIGN_IN_REQUIRED "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "TRY_LOGIN"

    .line 197
    sput-object p0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public static isGoogleConnected()Z
    .locals 3

    .line 238
    sget-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 240
    :cond_0
    invoke-static {}, Lcom/shiftup/auth/GoogleAuthAdapter;->getGoogleLastAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 243
    :cond_1
    sget-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    const-string v2, "SUCCESS"

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static popupGooglePlayService(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    const v0, 0x1020002

    .line 80
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 81
    invoke-static {p0, p1}, Lcom/google/android/gms/games/Games;->getGamesClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/GamesClient;

    move-result-object p0

    const/16 p1, 0x31

    .line 82
    invoke-interface {p0, p1}, Lcom/google/android/gms/games/GamesClient;->setGravityForPopups(I)Lcom/google/android/gms/tasks/Task;

    .line 83
    invoke-interface {p0, v0}, Lcom/google/android/gms/games/GamesClient;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static resetGoogleAuthData()V
    .locals 1

    const-string v0, ""

    .line 292
    sput-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleAccountId:Ljava/lang/String;

    .line 293
    sput-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleAuthCode:Ljava/lang/String;

    .line 294
    sput-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleEmail:Ljava/lang/String;

    const-string v0, "FAILED"

    .line 295
    sput-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    return-void
.end method

.method public static updateGoogleSignIn(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3

    const-string v0, "su.auth.GoogleAuthAdapter"

    const-string v1, "updateGoogleSignIn have signInAccount"

    .line 88
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 91
    invoke-static {v1, p0}, Lcom/shiftup/auth/GoogleAuthAdapter;->popupGooglePlayService(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleAuthCode:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleEmail:Ljava/lang/String;

    .line 96
    invoke-static {v1, p0}, Lcom/google/android/gms/games/Games;->getPlayersClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object p0

    .line 97
    invoke-interface {p0}, Lcom/google/android/gms/games/PlayersClient;->getCurrentPlayer()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v1, Lcom/shiftup/auth/GoogleAuthAdapter$2;

    invoke-direct {v1}, Lcom/shiftup/auth/GoogleAuthAdapter$2;-><init>()V

    .line 98
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v1, Lcom/shiftup/auth/GoogleAuthAdapter$1;

    invoke-direct {v1}, Lcom/shiftup/auth/GoogleAuthAdapter$1;-><init>()V

    .line 106
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "updateGoogleSignIn Exception!!"

    .line 115
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {v0, p0}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 118
    invoke-static {}, Lcom/shiftup/auth/GoogleAuthAdapter;->resetGoogleAuthData()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 271
    sget-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleAuthCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCurrentState()Ljava/lang/String;
    .locals 1

    .line 279
    sget-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 263
    sget-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleAccountId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public init(Lcom/shiftup/auth/AuthInitParam;)V
    .locals 3

    const-string v0, "su.auth.GoogleAuthAdapter"

    const-string v1, "Google Auth Init"

    .line 53
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "INITIALIZED"

    .line 55
    sput-object v1, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    .line 57
    check-cast p1, Lcom/shiftup/auth/GoogleInitParam;

    iget-object v1, p1, Lcom/shiftup/auth/GoogleInitParam;->DEFAULT_CLIENT_ID:Ljava/lang/String;

    .line 58
    iget-object p1, p1, Lcom/shiftup/auth/GoogleInitParam;->SERVER_CLIENT_ID:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, p1

    .line 64
    :cond_0
    new-instance p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 66
    invoke-virtual {p1, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    .line 70
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    sput-object p1, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 72
    invoke-static {}, Lcom/shiftup/auth/GoogleAuthAdapter;->getGoogleLastAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "INIT Google account is already, signed in."

    .line 74
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/shiftup/auth/GoogleAuthAdapter;->googleSilentSignIn()V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shiftup/auth/AuthException;
        }
    .end annotation

    .line 46
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const/4 p2, 0x0

    .line 47
    invoke-static {p1, p2}, Lcom/shiftup/auth/GoogleAuthAdapter;->handleSignInResult(Lcom/google/android/gms/tasks/Task;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "su.auth.GoogleAuthAdapter"

    const-string v1, "GoogleAdapter onDestroy"

    .line 304
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public platformLogIn()V
    .locals 2

    const-string v0, "su.auth.GoogleAuthAdapter"

    const-string v1, "Google Sign in Start"

    .line 124
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez v0, :cond_0

    const-string v0, "FAILED"

    .line 127
    sput-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    return-void

    .line 131
    :cond_0
    sget-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    const-string v1, "TRY_LOGIN"

    if-ne v0, v1, :cond_1

    return-void

    .line 135
    :cond_1
    sput-object v1, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/shiftup/auth/GoogleAuthAdapter;->googleSilentSignIn()V

    return-void
.end method

.method public platformLogOut()V
    .locals 3

    const-string v0, "su.auth.GoogleAuthAdapter"

    const-string v1, "Google Sign Out"

    .line 208
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez v0, :cond_0

    const-string v0, "FAILED"

    .line 210
    sput-object v0, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    return-void

    :cond_0
    const-string v1, "WAITING"

    .line 214
    sput-object v1, Lcom/shiftup/auth/GoogleAuthAdapter;->mGoogleState:Ljava/lang/String;

    .line 215
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/shiftup/auth/GoogleAuthAdapter$6;

    invoke-direct {v2, p0}, Lcom/shiftup/auth/GoogleAuthAdapter$6;-><init>(Lcom/shiftup/auth/GoogleAuthAdapter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/shiftup/auth/GoogleAuthAdapter$5;

    invoke-direct {v1, p0}, Lcom/shiftup/auth/GoogleAuthAdapter$5;-><init>(Lcom/shiftup/auth/GoogleAuthAdapter;)V

    .line 227
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
