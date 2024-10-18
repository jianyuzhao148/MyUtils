.class Lcom/shiftup/auth/GoogleAuthAdapter$4;
.super Ljava/lang/Object;
.source "GoogleAuthAdapter.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/auth/GoogleAuthAdapter;->googleSilentSignIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string p1, "su.auth.GoogleAuthAdapter"

    const-string v0, "GoogieSilentSignIn Failed, Try Intent Sign in"

    .line 162
    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/shiftup/auth/GoogleAuthAdapter;->googleIntentSignIn()V

    return-void
.end method
