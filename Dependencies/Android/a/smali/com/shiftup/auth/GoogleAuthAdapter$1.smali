.class Lcom/shiftup/auth/GoogleAuthAdapter$1;
.super Ljava/lang/Object;
.source "GoogleAuthAdapter.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/auth/GoogleAuthAdapter;->updateGoogleSignIn(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "su.auth.GoogleAuthAdapter"

    const-string v1, "updateGoogleSignIn failed"

    .line 109
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "FAILED"

    .line 111
    invoke-static {p1}, Lcom/shiftup/auth/GoogleAuthAdapter;->access$002(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
