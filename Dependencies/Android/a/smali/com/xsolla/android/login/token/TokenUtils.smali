.class public Lcom/xsolla/android/login/token/TokenUtils;
.super Ljava/lang/Object;
.source "TokenUtils.java"


# instance fields
.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "XSOLLA_LOGIN"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xsolla/android/login/token/TokenUtils;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getTokenFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "token"

    .line 45
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearToken()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/xsolla/android/login/token/TokenUtils;->preferences:Landroid/content/SharedPreferences;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "jwtToken"

    .line 39
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getJwt()Lcom/xsolla/android/login/jwt/JWT;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/xsolla/android/login/token/TokenUtils;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 22
    :cond_0
    new-instance v1, Lcom/xsolla/android/login/jwt/JWT;

    invoke-direct {v1, v0}, Lcom/xsolla/android/login/jwt/JWT;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/xsolla/android/login/token/TokenUtils;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "jwtToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveToken(Ljava/lang/String;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/xsolla/android/login/token/TokenUtils;->preferences:Landroid/content/SharedPreferences;

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "jwtToken"

    .line 28
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 29
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
