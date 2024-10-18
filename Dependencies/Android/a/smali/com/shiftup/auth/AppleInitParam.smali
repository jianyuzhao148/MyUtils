.class public Lcom/shiftup/auth/AppleInitParam;
.super Lcom/shiftup/auth/AuthInitParam;
.source "AppleInitParam.java"


# instance fields
.field public mBaseURL:Ljava/lang/String;

.field public mRedirectURL:Ljava/lang/String;

.field public mScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/shiftup/auth/AuthInitParam;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/shiftup/auth/AppleInitParam;->mBaseURL:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/shiftup/auth/AppleInitParam;->mScheme:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/shiftup/auth/AppleInitParam;->mRedirectURL:Ljava/lang/String;

    return-void
.end method
