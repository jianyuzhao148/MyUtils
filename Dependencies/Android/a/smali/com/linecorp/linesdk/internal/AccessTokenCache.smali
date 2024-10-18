.class public Lcom/linecorp/linesdk/internal/AccessTokenCache;
.super Ljava/lang/Object;
.source "AccessTokenCache.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final encryptor:Lcom/linecorp/android/security/encryption/StringCipher;

.field private final sharedPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/linecorp/linesdk/internal/EncryptorHolder;->getEncryptor()Lcom/linecorp/android/security/encryption/StringCipher;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/android/security/encryption/StringCipher;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/android/security/encryption/StringCipher;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.linecorp.linesdk.accesstoken."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->sharedPreferenceKey:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptor:Lcom/linecorp/android/security/encryption/StringCipher;

    return-void
.end method

.method private decryptToLong(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptor:Lcom/linecorp/android/security/encryption/StringCipher;

    iget-object v3, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/linecorp/android/security/encryption/StringCipher;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method private decryptToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptor:Lcom/linecorp/android/security/encryption/StringCipher;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/linecorp/android/security/encryption/StringCipher;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encryptLong(J)Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptor:Lcom/linecorp/android/security/encryption/StringCipher;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/linecorp/android/security/encryption/StringCipher;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptor:Lcom/linecorp/android/security/encryption/StringCipher;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/linecorp/android/security/encryption/StringCipher;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->sharedPreferenceKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getAccessToken()Lcom/linecorp/linesdk/internal/InternalAccessToken;
    .locals 11

    .line 72
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->sharedPreferenceKey:Ljava/lang/String;

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    const-string v1, "accessToken"

    const/4 v2, 0x0

    .line 78
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->decryptToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "expiresIn"

    .line 79
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->decryptToLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v1, "issuedClientTime"

    .line 80
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->decryptToLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Lcom/linecorp/android/security/encryption/EncryptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v9, -0x1

    cmp-long v1, v5, v9

    if-eqz v1, :cond_1

    cmp-long v1, v7, v9

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "refreshToken"

    .line 91
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->decryptToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 92
    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/linecorp/linesdk/internal/InternalAccessToken;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {p0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->clear()V

    .line 83
    throw v0
.end method

.method public saveAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->sharedPreferenceKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accessToken"

    .line 59
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getExpiresInMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptLong(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expiresIn"

    .line 61
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getIssuedClientTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptLong(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "issuedClientTime"

    .line 63
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "refreshToken"

    .line 65
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
