.class public final Lcom/facebook/internal/LockOnGetVariable;
.super Ljava/lang/Object;
.source "LockOnGetVariable.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private initLatch:Ljava/util/concurrent/CountDownLatch;

.field private storedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 44
    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/internal/-$$Lambda$LockOnGetVariable$nVIePorHlXgCx7hL20uf8fBA-xU;

    invoke-direct {v2, p0, p1}, Lcom/facebook/internal/-$$Lambda$LockOnGetVariable$nVIePorHlXgCx7hL20uf8fBA-xU;-><init>(Lcom/facebook/internal/LockOnGetVariable;Ljava/util/concurrent/Callable;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/facebook/internal/LockOnGetVariable;Ljava/util/concurrent/Callable;)Ljava/lang/Void;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/LockOnGetVariable;->storedValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object p0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_1
    throw p1
.end method

.method public static synthetic lambda$nVIePorHlXgCx7hL20uf8fBA-xU(Lcom/facebook/internal/LockOnGetVariable;Ljava/util/concurrent/Callable;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/internal/LockOnGetVariable;->_init_$lambda-0(Lcom/facebook/internal/LockOnGetVariable;Ljava/util/concurrent/Callable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
