.class public Lcom/xsolla/android/login/entity/response/AuthResponse;
.super Ljava/lang/Object;
.source "AuthResponse.java"


# instance fields
.field private loginUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xsolla/android/login/entity/response/AuthResponse;->loginUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/xsolla/android/login/token/TokenUtils;->getTokenFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
