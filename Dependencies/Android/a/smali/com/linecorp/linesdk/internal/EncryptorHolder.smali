.class public Lcom/linecorp/linesdk/internal/EncryptorHolder;
.super Ljava/lang/Object;
.source "EncryptorHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/EncryptorHolder$EncryptorInitializationTask;
    }
.end annotation


# static fields
.field private static final ENCRYPTOR:Lcom/linecorp/android/security/encryption/StringCipher;

.field private static volatile s_isInitializationStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/linecorp/android/security/encryption/StringCipher;

    const-string v1, "com.linecorp.linesdk.sharedpreference.encryptionsalt"

    const/16 v2, 0x1388

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/android/security/encryption/StringCipher;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/linecorp/linesdk/internal/EncryptorHolder;->ENCRYPTOR:Lcom/linecorp/android/security/encryption/StringCipher;

    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/linecorp/linesdk/internal/EncryptorHolder;->s_isInitializationStarted:Z

    return-void
.end method

.method static synthetic access$000()Lcom/linecorp/android/security/encryption/StringCipher;
    .locals 1

    .line 14
    sget-object v0, Lcom/linecorp/linesdk/internal/EncryptorHolder;->ENCRYPTOR:Lcom/linecorp/android/security/encryption/StringCipher;

    return-object v0
.end method

.method public static getEncryptor()Lcom/linecorp/android/security/encryption/StringCipher;
    .locals 1

    .line 37
    sget-object v0, Lcom/linecorp/linesdk/internal/EncryptorHolder;->ENCRYPTOR:Lcom/linecorp/android/security/encryption/StringCipher;

    return-object v0
.end method

.method public static initializeOnWorkerThread(Landroid/content/Context;)V
    .locals 2

    .line 28
    sget-boolean v0, Lcom/linecorp/linesdk/internal/EncryptorHolder;->s_isInitializationStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 29
    sput-boolean v0, Lcom/linecorp/linesdk/internal/EncryptorHolder;->s_isInitializationStarted:Z

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/linecorp/linesdk/internal/EncryptorHolder$EncryptorInitializationTask;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/internal/EncryptorHolder$EncryptorInitializationTask;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
