.class public Lcom/shiftup/auth/GoogleInitParam;
.super Lcom/shiftup/auth/AuthInitParam;
.source "GoogleInitParam.java"


# instance fields
.field public DEFAULT_CLIENT_ID:Ljava/lang/String;

.field public SERVER_CLIENT_ID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/shiftup/auth/AuthInitParam;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/shiftup/auth/GoogleInitParam;->DEFAULT_CLIENT_ID:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/shiftup/auth/GoogleInitParam;->SERVER_CLIENT_ID:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/shiftup/auth/GoogleInitParam;->DEFAULT_CLIENT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/shiftup/auth/AuthInitParam;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/shiftup/auth/GoogleInitParam;->DEFAULT_CLIENT_ID:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/shiftup/auth/GoogleInitParam;->SERVER_CLIENT_ID:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/shiftup/auth/GoogleInitParam;->DEFAULT_CLIENT_ID:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/shiftup/auth/GoogleInitParam;->SERVER_CLIENT_ID:Ljava/lang/String;

    return-void
.end method
