.class final Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StatusWorker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/work/ListenableWorker$Result;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.xsolla.android.payments.status.StatusWorker$doWork$2$1"
    f = "StatusWorker.kt"
    l = {
        0x48
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;


# direct methods
.method constructor <init>(Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;

    iget-object v1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    invoke-direct {v0, v1, p2}, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;-><init>(Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 66
    iget v1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->label:I

    const-string v2, "Timeout"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-wide v0, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->J$0:J

    iget-object v3, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lretrofit2/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 67
    iget-object v1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    iget-object v1, v1, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "PROJECT_ID"

    invoke-virtual {v1, v5, v4}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 68
    iget-object v4, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    iget-object v4, v4, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-virtual {v4}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v4

    const-string v5, "EXTERNAL_ID"

    invoke-virtual {v4, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v5, "inputData.getString(ARG_EXTERNAL_ID)!!"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v5, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    iget-object v5, v5, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-virtual {v5}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v5

    const-wide v6, 0x7fffffffffffffffL

    const-string v8, "START_TIME"

    invoke-virtual {v5, v8, v6, v7}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 72
    :try_start_1
    iget-object v7, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    iget-object v7, v7, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-static {v7}, Lcom/xsolla/android/payments/status/StatusWorker;->access$getStatusApi$p(Lcom/xsolla/android/payments/status/StatusWorker;)Lcom/xsolla/android/payments/status/StatusApi;

    move-result-object v7

    iput-object p1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->L$0:Ljava/lang/Object;

    iput v1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->I$0:I

    iput-object v4, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->L$1:Ljava/lang/Object;

    iput-wide v5, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->J$0:J

    iput v3, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->label:I

    invoke-interface {v7, v1, v4, p0}, Lcom/xsolla/android/payments/status/StatusApi;->getPaymentStatus(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lretrofit2/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-wide v0, v5

    .line 66
    :goto_0
    :try_start_2
    check-cast p1, Lcom/xsolla/android/payments/status/PaymentStatus;

    .line 73
    invoke-static {}, Lcom/xsolla/android/payments/status/StatusWorker;->access$getSuccessStatuses$cp()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xsolla/android/payments/status/PaymentStatus;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    iget-object v3, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    iget-object v3, v3, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-virtual {v3}, Lcom/xsolla/android/payments/status/StatusWorker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/xsolla/android/payments/status/StatusWorker;->access$broadcastSuccess(Lcom/xsolla/android/payments/status/StatusWorker;Landroid/content/Context;Lcom/xsolla/android/payments/status/PaymentStatus;)V

    .line 75
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    goto/16 :goto_3

    .line 76
    :cond_3
    invoke-static {}, Lcom/xsolla/android/payments/status/StatusWorker;->access$getInProgressStatuses$cp()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xsolla/android/payments/status/PaymentStatus;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 77
    iget-object p1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    iget-object p1, p1, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-static {p1, v0, v1}, Lcom/xsolla/android/payments/status/StatusWorker;->access$isRetryAllowed(Lcom/xsolla/android/payments/status/StatusWorker;J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 78
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    goto/16 :goto_3

    .line 80
    :cond_4
    iget-object p1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    iget-object p1, p1, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-virtual {p1}, Lcom/xsolla/android/payments/status/StatusWorker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/xsolla/android/payments/status/StatusWorker;->access$broadcastError(Lcom/xsolla/android/payments/status/StatusWorker;Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    goto/16 :goto_3

    .line 84
    :cond_5
    iget-object v3, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    iget-object v3, v3, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-virtual {v3}, Lcom/xsolla/android/payments/status/StatusWorker;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xsolla/android/payments/status/PaymentStatus;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, p1}, Lcom/xsolla/android/payments/status/StatusWorker;->access$broadcastError(Lcom/xsolla/android/payments/status/StatusWorker;Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p1
    :try_end_2
    .catch Lretrofit2/HttpException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    iget-object v0, v0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-virtual {v0}, Lcom/xsolla/android/payments/status/StatusWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/xsolla/android/payments/status/StatusWorker;->access$broadcastError(Lcom/xsolla/android/payments/status/StatusWorker;Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    goto :goto_3

    .line 104
    :catch_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    goto :goto_3

    :catch_3
    move-exception p1

    move-wide v0, v5

    .line 88
    :goto_2
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v3

    const/16 v4, 0x194

    const-string v5, "XsollaPayments"

    if-ne v3, v4, :cond_7

    const-string p1, "HTTP 404 - Transaction not found"

    .line 89
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    iget-object p1, p1, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-static {p1, v0, v1}, Lcom/xsolla/android/payments/status/StatusWorker;->access$isRetryAllowed(Lcom/xsolla/android/payments/status/StatusWorker;J)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 91
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    goto :goto_3

    .line 93
    :cond_6
    iget-object p1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    iget-object p1, p1, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-virtual {p1}, Lcom/xsolla/android/payments/status/StatusWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/xsolla/android/payments/status/StatusWorker;->access$broadcastError(Lcom/xsolla/android/payments/status/StatusWorker;Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    goto :goto_3

    .line 96
    :cond_7
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_8

    const-string p1, "HTTP 403 - Method is available only for projects with simplified integration"

    .line 97
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    goto :goto_3

    .line 100
    :cond_8
    iget-object v0, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;

    iget-object v0, v0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$2;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-virtual {v0}, Lcom/xsolla/android/payments/status/StatusWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/xsolla/android/payments/status/StatusWorker;->access$broadcastError(Lcom/xsolla/android/payments/status/StatusWorker;Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    :goto_3
    return-object p1

    .line 68
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method
