.class public final Lcom/xsolla/android/payments/status/StatusWorker;
.super Landroidx/work/CoroutineWorker;
.source "StatusWorker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatusWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatusWorker.kt\ncom/xsolla/android/payments/status/StatusWorker\n*L\n1#1,145:1\n*E\n"
.end annotation


# static fields
.field private static final inProgressStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final successStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final statusApi$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "done"

    const-string v1, "lost"

    .line 28
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xsolla/android/payments/status/StatusWorker;->successStatuses:Ljava/util/List;

    const-string v0, "created"

    const-string v1, "processing"

    const-string v2, "authorized"

    .line 29
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xsolla/android/payments/status/StatusWorker;->inProgressStatuses:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/xsolla/android/payments/status/StatusWorker;->context:Landroid/content/Context;

    .line 32
    sget-object p1, Lcom/xsolla/android/payments/status/StatusWorker$statusApi$2;->INSTANCE:Lcom/xsolla/android/payments/status/StatusWorker$statusApi$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/xsolla/android/payments/status/StatusWorker;->statusApi$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$broadcastError(Lcom/xsolla/android/payments/status/StatusWorker;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xsolla/android/payments/status/StatusWorker;->broadcastError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$broadcastSuccess(Lcom/xsolla/android/payments/status/StatusWorker;Landroid/content/Context;Lcom/xsolla/android/payments/status/PaymentStatus;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xsolla/android/payments/status/StatusWorker;->broadcastSuccess(Landroid/content/Context;Lcom/xsolla/android/payments/status/PaymentStatus;)V

    return-void
.end method

.method public static final synthetic access$getInProgressStatuses$cp()Ljava/util/List;
    .locals 1

    .line 21
    sget-object v0, Lcom/xsolla/android/payments/status/StatusWorker;->inProgressStatuses:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getStatusApi$p(Lcom/xsolla/android/payments/status/StatusWorker;)Lcom/xsolla/android/payments/status/StatusApi;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xsolla/android/payments/status/StatusWorker;->getStatusApi()Lcom/xsolla/android/payments/status/StatusApi;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSuccessStatuses$cp()Ljava/util/List;
    .locals 1

    .line 21
    sget-object v0, Lcom/xsolla/android/payments/status/StatusWorker;->successStatuses:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$isRetryAllowed(Lcom/xsolla/android/payments/status/StatusWorker;J)Z
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xsolla/android/payments/status/StatusWorker;->isRetryAllowed(J)Z

    move-result p0

    return p0
.end method

.method private final broadcastError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xsolla.android.payments.status"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    new-instance v1, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;

    .line 136
    sget-object v2, Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;->FAIL:Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    const/4 v3, 0x0

    .line 135
    invoke-direct {v1, v2, v3, p2}, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;-><init>(Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;Lcom/xsolla/android/payments/status/PaymentStatus;Ljava/lang/String;)V

    const-string p2, "status"

    .line 134
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final broadcastSuccess(Landroid/content/Context;Lcom/xsolla/android/payments/status/PaymentStatus;)V
    .locals 4

    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xsolla.android.payments.status"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    new-instance v1, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;

    .line 121
    sget-object v2, Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;->SUCCESS:Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    const/4 v3, 0x0

    .line 120
    invoke-direct {v1, v2, p2, v3}, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;-><init>(Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;Lcom/xsolla/android/payments/status/PaymentStatus;Ljava/lang/String;)V

    const-string p2, "status"

    .line 119
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final getStatusApi()Lcom/xsolla/android/payments/status/StatusApi;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/payments/status/StatusWorker;->statusApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xsolla/android/payments/status/StatusApi;

    return-object v0
.end method

.method private final isRetryAllowed(J)Z
    .locals 3

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const p1, 0x927c0

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;

    iget v1, v0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;

    invoke-direct {v0, p0, p1}, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;-><init>(Lcom/xsolla/android/payments/status/StatusWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 65
    iget v2, v0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 110
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v2, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;-><init>(Lcom/xsolla/android/payments/status/StatusWorker;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string v0, "withContext(Dispatchers.\u2026        }\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xsolla/android/payments/status/StatusWorker;->context:Landroid/content/Context;

    return-object v0
.end method
