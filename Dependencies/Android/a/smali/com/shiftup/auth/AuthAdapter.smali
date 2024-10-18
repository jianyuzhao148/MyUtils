.class public abstract Lcom/shiftup/auth/AuthAdapter;
.super Ljava/lang/Object;
.source "AuthAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shiftup/auth/AuthAdapter$AuthState;
    }
.end annotation


# static fields
.field public static final AUTH_STATE_CANCELED:I = 0x5

.field public static final AUTH_STATE_FAILED:I = 0x4

.field public static final AUTH_STATE_INITIALIZED:I = 0x0

.field public static final AUTH_STATE_LOGOUT:I = 0x6

.field public static final AUTH_STATE_SUCCESS:I = 0x3

.field public static final AUTH_STATE_TRY_LOGIN:I = 0x1

.field public static final AUTH_STATE_WAITING:I = 0x2


# instance fields
.field protected callback:Lcom/shiftup/auth/IAuthCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native SetAuthState(I)V
.end method


# virtual methods
.method protected AuthCancel()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/shiftup/auth/AuthAdapter;->callback:Lcom/shiftup/auth/IAuthCallback;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/shiftup/auth/IAuthCallback;->onCancel()V

    :cond_0
    return-void
.end method

.method protected AuthError(Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/shiftup/auth/AuthAdapter;->callback:Lcom/shiftup/auth/IAuthCallback;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p1}, Lcom/shiftup/auth/IAuthCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected AuthSuccess(Lorg/json/JSONObject;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shiftup/auth/AuthAdapter;->callback:Lcom/shiftup/auth/IAuthCallback;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1}, Lcom/shiftup/auth/IAuthCallback;->onSuccess(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public SetCallback(Lcom/shiftup/auth/IAuthCallback;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/shiftup/auth/AuthAdapter;->callback:Lcom/shiftup/auth/IAuthCallback;

    return-void
.end method

.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getCurrentState()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract init(Lcom/shiftup/auth/AuthInitParam;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shiftup/auth/AuthException;
        }
    .end annotation
.end method

.method public abstract onDestroy()V
.end method

.method public abstract platformLogIn()V
.end method

.method public abstract platformLogOut()V
.end method
