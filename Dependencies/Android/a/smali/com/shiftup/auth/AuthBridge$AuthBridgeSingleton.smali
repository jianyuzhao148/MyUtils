.class Lcom/shiftup/auth/AuthBridge$AuthBridgeSingleton;
.super Ljava/lang/Object;
.source "AuthBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shiftup/auth/AuthBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthBridgeSingleton"
.end annotation


# static fields
.field private static final instance:Lcom/shiftup/auth/AuthBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/shiftup/auth/AuthBridge;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shiftup/auth/AuthBridge;-><init>(Lcom/shiftup/auth/AuthBridge$1;)V

    sput-object v0, Lcom/shiftup/auth/AuthBridge$AuthBridgeSingleton;->instance:Lcom/shiftup/auth/AuthBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/shiftup/auth/AuthBridge;
    .locals 1

    .line 30
    sget-object v0, Lcom/shiftup/auth/AuthBridge$AuthBridgeSingleton;->instance:Lcom/shiftup/auth/AuthBridge;

    return-object v0
.end method
