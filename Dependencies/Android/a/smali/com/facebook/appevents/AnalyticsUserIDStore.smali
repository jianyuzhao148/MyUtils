.class public final Lcom/facebook/appevents/AnalyticsUserIDStore;
.super Ljava/lang/Object;
.source "AnalyticsUserIDStore.kt"


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/AnalyticsUserIDStore;

.field private static final TAG:Ljava/lang/String;

.field private static volatile initialized:Z

.field private static final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/appevents/AnalyticsUserIDStore;

    invoke-direct {v0}, Lcom/facebook/appevents/AnalyticsUserIDStore;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->INSTANCE:Lcom/facebook/appevents/AnalyticsUserIDStore;

    .line 31
    const-class v0, Lcom/facebook/appevents/AnalyticsUserIDStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnalyticsUserIDStore::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUserID()Ljava/lang/String;
    .locals 2

    .line 69
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->TAG:Ljava/lang/String;

    const-string v1, "initStore should have been called before calling setUserID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->INSTANCE:Lcom/facebook/appevents/AnalyticsUserIDStore;

    invoke-direct {v0}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initAndWait()V

    .line 73
    :cond_0
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 75
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private final initAndWait()V
    .locals 4

    .line 82
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 87
    :try_start_0
    sget-boolean v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 91
    :cond_1
    :try_start_1
    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "com.facebook.appevents.AnalyticsUserIDStore.userID"

    const/4 v3, 0x0

    .line 92
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;

    const/4 v1, 0x1

    .line 93
    sput-boolean v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public static final initStore()V
    .locals 2

    .line 39
    sget-boolean v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/facebook/appevents/InternalAppEventsLogger;->Companion:Lcom/facebook/appevents/InternalAppEventsLogger$Companion;

    invoke-virtual {v0}, Lcom/facebook/appevents/InternalAppEventsLogger$Companion;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/-$$Lambda$AnalyticsUserIDStore$yT--LBE0dE-_BrIXJRAUY1FXQcI;->INSTANCE:Lcom/facebook/appevents/-$$Lambda$AnalyticsUserIDStore$yT--LBE0dE-_BrIXJRAUY1FXQcI;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final initStore$lambda-0()V
    .locals 1

    .line 42
    sget-object v0, Lcom/facebook/appevents/AnalyticsUserIDStore;->INSTANCE:Lcom/facebook/appevents/AnalyticsUserIDStore;

    invoke-direct {v0}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initAndWait()V

    return-void
.end method

.method public static synthetic lambda$yT--LBE0dE-_BrIXJRAUY1FXQcI()V
    .locals 0

    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->initStore$lambda-0()V

    return-void
.end method
