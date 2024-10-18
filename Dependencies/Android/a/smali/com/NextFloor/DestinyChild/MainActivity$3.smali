.class Lcom/NextFloor/DestinyChild/MainActivity$3;
.super Lcom/shiftup/auth/AuthCallbackBase;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NextFloor/DestinyChild/MainActivity;->InitLine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/NextFloor/DestinyChild/MainActivity;


# direct methods
.method constructor <init>(Lcom/NextFloor/DestinyChild/MainActivity;)V
    .locals 0

    .line 1425
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/MainActivity$3;->this$0:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-direct {p0}, Lcom/shiftup/auth/AuthCallbackBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1445
    invoke-static {}, Lcom/shiftup/auth/AuthBridge;->getInstance()Lcom/shiftup/auth/AuthBridge;

    const-string v0, "# Line Open API Login Cancel Callbacks!"

    invoke-static {v0}, Lcom/shiftup/auth/AuthBridge;->onCancelCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Moderato"

    .line 1450
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-static {}, Lcom/shiftup/auth/AuthBridge;->getInstance()Lcom/shiftup/auth/AuthBridge;

    const-string p1, "# Line Open API Login Error Callbacks!"

    invoke-static {p1}, Lcom/shiftup/auth/AuthBridge;->onErrorCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "Moderato"

    :try_start_0
    const-string v1, "AccessToken"

    .line 1429
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "UserId"

    .line 1430
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "CurrentState"

    .line 1431
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "MainActivity Auth OnSuccess start"

    .line 1433
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    invoke-static {}, Lcom/shiftup/auth/AuthBridge;->getInstance()Lcom/shiftup/auth/AuthBridge;

    const-string p1, "# Line Open API Login Success Callbacks!"

    invoke-static {p1}, Lcom/shiftup/auth/AuthBridge;->onSuccessCallback(Ljava/lang/String;)V

    const-string p1, "MainActivity Auth OnSuccess end"

    .line 1435
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MainActivity Auth OnSuccess Unknown Error"

    .line 1439
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p1, "MainActivity Auth OnSuccess JsonException Error"

    .line 1437
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
