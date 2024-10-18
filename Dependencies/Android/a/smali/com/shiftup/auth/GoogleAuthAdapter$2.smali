.class Lcom/shiftup/auth/GoogleAuthAdapter$2;
.super Ljava/lang/Object;
.source "GoogleAuthAdapter.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/auth/GoogleAuthAdapter;->updateGoogleSignIn(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/games/Player;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/games/Player;)V
    .locals 2

    const-string v0, "su.auth.GoogleAuthAdapter"

    const-string v1, "updateGoogleSignIn success"

    .line 101
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shiftup/auth/GoogleAuthAdapter;->access$102(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "SUCCESS"

    .line 103
    invoke-static {p1}, Lcom/shiftup/auth/GoogleAuthAdapter;->access$002(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-virtual {p0, p1}, Lcom/shiftup/auth/GoogleAuthAdapter$2;->onSuccess(Lcom/google/android/gms/games/Player;)V

    return-void
.end method
