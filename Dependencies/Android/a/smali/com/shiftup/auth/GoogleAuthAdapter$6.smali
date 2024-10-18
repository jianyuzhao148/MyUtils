.class Lcom/shiftup/auth/GoogleAuthAdapter$6;
.super Ljava/lang/Object;
.source "GoogleAuthAdapter.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/auth/GoogleAuthAdapter;->platformLogOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/auth/GoogleAuthAdapter;


# direct methods
.method constructor <init>(Lcom/shiftup/auth/GoogleAuthAdapter;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/shiftup/auth/GoogleAuthAdapter$6;->this$0:Lcom/shiftup/auth/GoogleAuthAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 219
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    const-string v0, "su.auth.GoogleAuthAdapter"

    if-eqz p1, :cond_0

    const-string p1, "GoogleSignOut Success"

    .line 220
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "GoogleSignOut Failed"

    .line 222
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, "LOGOUT"

    .line 224
    invoke-static {p1}, Lcom/shiftup/auth/GoogleAuthAdapter;->access$002(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
