.class final Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "StatusWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/payments/status/StatusWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.xsolla.android.payments.status.StatusWorker"
    f = "StatusWorker.kt"
    l = {
        0x41
    }
    m = "doWork"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/xsolla/android/payments/status/StatusWorker;


# direct methods
.method constructor <init>(Lcom/xsolla/android/payments/status/StatusWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;->label:I

    iget-object p1, p0, Lcom/xsolla/android/payments/status/StatusWorker$doWork$1;->this$0:Lcom/xsolla/android/payments/status/StatusWorker;

    invoke-virtual {p1, p0}, Lcom/xsolla/android/payments/status/StatusWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
