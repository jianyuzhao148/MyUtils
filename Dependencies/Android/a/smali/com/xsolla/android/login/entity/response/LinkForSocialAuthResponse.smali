.class public Lcom/xsolla/android/login/entity/response/LinkForSocialAuthResponse;
.super Ljava/lang/Object;
.source "LinkForSocialAuthResponse.java"


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xsolla/android/login/entity/response/LinkForSocialAuthResponse;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xsolla/android/login/entity/response/LinkForSocialAuthResponse;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/xsolla/android/login/token/TokenUtils;->getTokenFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xsolla/android/login/entity/response/LinkForSocialAuthResponse;->url:Ljava/lang/String;

    return-object v0
.end method
