.class public final Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$scheduleResumeAfterDelay$$inlined$Runnable$1;
.super Ljava/lang/Object;
.source "Runnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;->scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 TestCoroutineContext.kt\nkotlinx/coroutines/test/TestCoroutineContext$Dispatcher\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n229#2:19\n230#2:21\n1#3:20\n*E\n"
.end annotation


# instance fields
.field final synthetic $continuation$inlined:Lkotlinx/coroutines/CancellableContinuation;

.field final synthetic this$0:Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$scheduleResumeAfterDelay$$inlined$Runnable$1;->$continuation$inlined:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$scheduleResumeAfterDelay$$inlined$Runnable$1;->this$0:Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 19
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$scheduleResumeAfterDelay$$inlined$Runnable$1;->$continuation$inlined:Lkotlinx/coroutines/CancellableContinuation;

    iget-object v1, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$scheduleResumeAfterDelay$$inlined$Runnable$1;->this$0:Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuation;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V

    return-void
.end method
