.class public Lcom/xsolla/android/login/entity/request/RegisterUserBody;
.super Ljava/lang/Object;
.source "RegisterUserBody.java"


# instance fields
.field private email:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xsolla/android/login/entity/request/RegisterUserBody;->username:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/xsolla/android/login/entity/request/RegisterUserBody;->email:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/xsolla/android/login/entity/request/RegisterUserBody;->password:Ljava/lang/String;

    return-void
.end method
