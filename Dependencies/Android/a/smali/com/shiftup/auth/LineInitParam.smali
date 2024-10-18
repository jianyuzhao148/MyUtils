.class public Lcom/shiftup/auth/LineInitParam;
.super Lcom/shiftup/auth/AuthInitParam;
.source "LineInitParam.java"


# instance fields
.field public mChannelID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/shiftup/auth/AuthInitParam;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shiftup/auth/LineInitParam;->mChannelID:Ljava/lang/String;

    return-void
.end method
