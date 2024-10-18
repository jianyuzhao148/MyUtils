.class Lcom/shiftup/auth/AuthBridge$1;
.super Lcom/shiftup/auth/AuthCallbackBase;
.source "AuthBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/auth/AuthBridge;->AppleInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/auth/AuthBridge;


# direct methods
.method constructor <init>(Lcom/shiftup/auth/AuthBridge;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/shiftup/auth/AuthBridge$1;->this$0:Lcom/shiftup/auth/AuthBridge;

    invoke-direct {p0}, Lcom/shiftup/auth/AuthCallbackBase;-><init>()V

    return-void
.end method
