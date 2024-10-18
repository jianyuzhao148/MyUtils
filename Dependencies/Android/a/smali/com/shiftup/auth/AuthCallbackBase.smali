.class public abstract Lcom/shiftup/auth/AuthCallbackBase;
.super Ljava/lang/Object;
.source "AuthCallbackBase.java"

# interfaces
.implements Lcom/shiftup/auth/IAuthCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "Auth/AuthCallbackBase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "Auth/AuthCallbackBase"

    const-string v1, "AuthCallbackBase OnCancel"

    .line 12
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const-string p1, "Auth/AuthCallbackBase"

    const-string v0, "AuthCallbackBase OnError"

    .line 14
    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1

    const-string p1, "Auth/AuthCallbackBase"

    const-string v0, "AuthCallbackBase OnSuccess"

    .line 10
    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
