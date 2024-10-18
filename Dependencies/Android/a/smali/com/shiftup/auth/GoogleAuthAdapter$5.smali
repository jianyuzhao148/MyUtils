.class Lcom/shiftup/auth/GoogleAuthAdapter$5;
.super Ljava/lang/Object;
.source "GoogleAuthAdapter.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/auth/GoogleAuthAdapter;->platformLogOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/auth/GoogleAuthAdapter;


# direct methods
.method constructor <init>(Lcom/shiftup/auth/GoogleAuthAdapter;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/shiftup/auth/GoogleAuthAdapter$5;->this$0:Lcom/shiftup/auth/GoogleAuthAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "su.auth.GoogleAuthAdapter"

    const-string v1, "GoogleSignOut Failed"

    .line 230
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string p1, "LOGOUT"

    .line 232
    invoke-static {p1}, Lcom/shiftup/auth/GoogleAuthAdapter;->access$002(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
