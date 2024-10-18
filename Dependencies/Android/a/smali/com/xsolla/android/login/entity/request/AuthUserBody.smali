.class public Lcom/xsolla/android/login/entity/request/AuthUserBody;
.super Ljava/lang/Object;
.source "AuthUserBody.java"


# instance fields
.field private password:Ljava/lang/String;

.field private remember_me:Z

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lcom/xsolla/android/login/entity/request/AuthUserBody;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xsolla/android/login/entity/request/AuthUserBody;->username:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/xsolla/android/login/entity/request/AuthUserBody;->password:Ljava/lang/String;

    .line 15
    iput-boolean p3, p0, Lcom/xsolla/android/login/entity/request/AuthUserBody;->remember_me:Z

    return-void
.end method
