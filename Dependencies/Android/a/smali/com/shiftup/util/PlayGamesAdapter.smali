.class public Lcom/shiftup/util/PlayGamesAdapter;
.super Ljava/lang/Object;
.source "PlayGamesAdapter.java"


# static fields
.field private static final RC_ACHIEVEMENT:I = 0x232c

.field private static final RC_RECOVER_PLAY_SERVICES:I = 0x232a

.field private static final TAG:Ljava/lang/String; = "su.util.PlayGamesAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsGooglePlayServicesAvailable()Z
    .locals 4

    const-string v0, "su.util.PlayGamesAdapter"

    const-string v1, "IsGooglePlayServicesAvailable"

    .line 29
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v3, "IsGooglePlayServicesAvailable : Not available"

    .line 37
    invoke-static {v0, v3}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 42
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsGooglePlayServicesAvailable : RecoverableError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/shiftup/util/PlayGamesAdapter$1;

    invoke-direct {v3, v1}, Lcom/shiftup/util/PlayGamesAdapter$1;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "IsGooglePlayServicesAvailable Exception!!"

    .line 61
    invoke-static {v0, v2}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static googlePlayShowAchievement()V
    .locals 2

    const-string v0, "su.util.PlayGamesAdapter"

    const-string v1, "GoogleShowAchievement"

    .line 78
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/shiftup/auth/GoogleAuthAdapter;->isGoogleConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/shiftup/auth/GoogleAuthAdapter;->getGoogleLastAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/shiftup/util/PlayGamesAdapter$3;

    invoke-direct {v1}, Lcom/shiftup/util/PlayGamesAdapter$3;-><init>()V

    .line 83
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/shiftup/util/PlayGamesAdapter$2;

    invoke-direct {v1}, Lcom/shiftup/util/PlayGamesAdapter$2;-><init>()V

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static googlePlaySubmitAchievement(Ljava/lang/String;)I
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleSubmitAchievement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "su.util.PlayGamesAdapter"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/shiftup/auth/GoogleAuthAdapter;->isGoogleConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 73
    :cond_0
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/shiftup/auth/GoogleAuthAdapter;->getGoogleLastAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
