.class public abstract Lkotlinx/coroutines/channels/AbstractChannel;
.super Lkotlinx/coroutines/channels/AbstractSendChannel;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;,
        Lkotlinx/coroutines/channels/AbstractChannel$RemoveReceiveOnCancel;,
        Lkotlinx/coroutines/channels/AbstractChannel$Itr;,
        Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;,
        Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElementWithUndeliveredHandler;,
        Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;,
        Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractSendChannel<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/Channel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 5 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannelKt\n+ 6 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 7 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n*L\n1#1,1131:1\n1#2:1132\n328#3,5:1133\n161#4,4:1138\n173#4:1142\n87#4,3:1143\n174#4,6:1146\n1127#5:1152\n1127#5:1164\n35#6,11:1153\n19#7:1165\n*S KotlinDebug\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannel\n*L\n596#1:1133,5\n619#1:1138,4\n620#1:1142\n620#1:1143,3\n620#1:1146,6\n630#1:1152\n780#1:1164\n695#1:1153,11\n821#1:1165\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 516
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$enqueueReceive(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/Receive;)Z
    .locals 0

    .line 514
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceive(Lkotlinx/coroutines/channels/Receive;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$receiveSuspend(Lkotlinx/coroutines/channels/AbstractChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 514
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/AbstractChannel;->receiveSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$registerSelectReceiveMode(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/SelectInstance;ILkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 514
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/AbstractChannel;->registerSelectReceiveMode(Lkotlinx/coroutines/selects/SelectInstance;ILkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$removeReceiveOnCancel(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/channels/Receive;)V
    .locals 0

    .line 514
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/AbstractChannel;->removeReceiveOnCancel(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/channels/Receive;)V

    return-void
.end method

.method private final enqueueReceive(Lkotlinx/coroutines/channels/Receive;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Receive<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 622
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 623
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->onReceiveEnqueued()V

    :cond_0
    return p1
.end method

.method private final enqueueReceiveSelect(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .line 793
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)V

    .line 794
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceive(Lkotlinx/coroutines/channels/Receive;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 795
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    :cond_0
    return p2
.end method

.method private final receiveSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1134
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_0

    .line 598
    new-instance v1, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;

    invoke-direct {v1, v0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;-><init>(Lkotlinx/coroutines/CancellableContinuation;I)V

    goto :goto_0

    .line 599
    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElementWithUndeliveredHandler;

    iget-object v2, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v0, p1, v2}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElementWithUndeliveredHandler;-><init>(Lkotlinx/coroutines/CancellableContinuation;ILkotlin/jvm/functions/Function1;)V

    .line 601
    :cond_1
    :goto_0
    invoke-static {p0, v1}, Lkotlinx/coroutines/channels/AbstractChannel;->access$enqueueReceive(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/Receive;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 602
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/channels/AbstractChannel;->access$removeReceiveOnCancel(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/channels/Receive;)V

    goto :goto_1

    .line 606
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object p1

    .line 607
    instance-of v2, p1, Lkotlinx/coroutines/channels/Closed;

    if-eqz v2, :cond_3

    .line 608
    check-cast p1, Lkotlinx/coroutines/channels/Closed;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->resumeReceiveClosed(Lkotlinx/coroutines/channels/Closed;)V

    goto :goto_1

    .line 611
    :cond_3
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-eq p1, v2, :cond_1

    .line 612
    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->resumeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/Receive;->resumeOnCancellationFun(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 1136
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 1133
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_4

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4
    return-object p1
.end method

.method private final registerSelectReceiveMode(Lkotlinx/coroutines/selects/SelectInstance;ILkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;I",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 750
    :cond_0
    :goto_0
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 751
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isEmptyImpl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    invoke-direct {p0, p1, p3, p2}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceiveSelect(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 754
    :cond_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->pollSelectInternal(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;

    move-result-object v0

    .line 756
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    return-void

    .line 757
    :cond_3
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 758
    :cond_4
    sget-object v1, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 759
    :cond_5
    invoke-direct {p0, p3, p1, p2, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->tryStartBlockUnintercepted(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/selects/SelectInstance;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private final removeReceiveOnCancel(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/channels/Receive;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "*>;",
            "Lkotlinx/coroutines/channels/Receive<",
            "*>;)V"
        }
    .end annotation

    .line 821
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$RemoveReceiveOnCancel;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/channels/AbstractChannel$RemoveReceiveOnCancel;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/Receive;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final tryStartBlockUnintercepted(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/selects/SelectInstance;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 767
    instance-of v0, p4, Lkotlinx/coroutines/channels/Closed;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_0

    goto :goto_1

    .line 773
    :cond_0
    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect()Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 774
    :cond_1
    sget-object p3, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    check-cast p4, Lkotlinx/coroutines/channels/Closed;

    iget-object p4, p4, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-virtual {p3, p4}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object p3

    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    goto :goto_1

    .line 770
    :cond_2
    check-cast p4, Lkotlinx/coroutines/channels/Closed;

    invoke-virtual {p4}, Lkotlinx/coroutines/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_3
    if-ne p3, v1, :cond_5

    .line 1164
    sget-object p3, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    if-eqz v0, :cond_4

    check-cast p4, Lkotlinx/coroutines/channels/Closed;

    iget-object p4, p4, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-virtual {p3, p4}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_4
    invoke-virtual {p3, p4}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_0
    invoke-static {p3}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object p3

    .line 780
    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    goto :goto_1

    .line 782
    :cond_5
    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object p2

    invoke-static {p1, p4, p2}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic cancel()V
    .locals 0

    .line 514
    invoke-static {p0}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->cancel(Lkotlinx/coroutines/channels/Channel;)V

    return-void
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 654
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isClosedForReceive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 655
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->cancelInternal$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final synthetic cancel(Ljava/lang/Throwable;)Z
    .locals 0

    .line 645
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->cancelInternal$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final cancelInternal$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z
    .locals 0

    .line 660
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->close(Ljava/lang/Throwable;)Z

    move-result p1

    .line 661
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->onCancelIdempotent(Z)V

    return p1
.end method

.method protected final describeTryPoll()Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc<",
            "TE;>;"
        }
    .end annotation

    .line 705
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getQueue()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V

    return-object v0
.end method

.method protected enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Receive<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isBufferAlwaysEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 619
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getQueue()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    move-result-object v0

    .line 1139
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v3

    .line 619
    instance-of v4, v3, Lkotlinx/coroutines/channels/Send;

    xor-int/2addr v4, v2

    if-nez v4, :cond_1

    goto :goto_2

    .line 1141
    :cond_1
    invoke-virtual {v3, p1, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 620
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getQueue()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    move-result-object v0

    .line 1143
    new-instance v3, Lkotlinx/coroutines/channels/AbstractChannel$enqueueReceiveInternal$$inlined$addLastIfPrevAndIf$1;

    invoke-direct {v3, p1, p0}, Lkotlinx/coroutines/channels/AbstractChannel$enqueueReceiveInternal$$inlined$addLastIfPrevAndIf$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/channels/AbstractChannel;)V

    .line 1147
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v4

    .line 620
    instance-of v5, v4, Lkotlinx/coroutines/channels/Send;

    xor-int/2addr v5, v2

    if-nez v5, :cond_3

    goto :goto_2

    .line 1149
    :cond_3
    invoke-virtual {v4, p1, v0, v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v4

    if-eq v4, v2, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :cond_5
    :goto_2
    return v1
.end method

.method protected final getHasReceiveOrClosed()Z
    .locals 1

    .line 573
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getQueue()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    return v0
.end method

.method public final getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "TE;>;"
        }
    .end annotation

    .line 733
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$onReceive$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/AbstractChannel$onReceive$1;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;)V

    return-object v0
.end method

.method public final getOnReceiveCatching()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "TE;>;>;"
        }
    .end annotation

    .line 741
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$onReceiveCatching$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/AbstractChannel$onReceiveCatching$1;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;)V

    return-object v0
.end method

.method public getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "TE;>;"
        }
    .end annotation

    .line 514
    invoke-static {p0}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->getOnReceiveOrNull(Lkotlinx/coroutines/channels/Channel;)Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v0

    return-object v0
.end method

.method protected abstract isBufferAlwaysEmpty()Z
.end method

.method protected abstract isBufferEmpty()Z
.end method

.method public isClosedForReceive()Z
    .locals 1

    .line 577
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForReceive()Lkotlinx/coroutines/channels/Closed;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 578
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isEmptyImpl()Z

    move-result v0

    return v0
.end method

.method protected final isEmptyImpl()Z
    .locals 1

    .line 579
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getQueue()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/Send;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final iterator()Lkotlinx/coroutines/channels/ChannelIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ChannelIterator<",
            "TE;>;"
        }
    .end annotation

    .line 698
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$Itr;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/AbstractChannel$Itr;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;)V

    return-object v0
.end method

.method protected onCancelIdempotent(Z)V
    .locals 3

    .line 673
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 674
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/internal/InlineList;->constructor-impl$default(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    move-result-object v0

    .line 676
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v1

    .line 677
    instance-of v2, v1, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    if-eqz v2, :cond_0

    .line 688
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->onCancelIdempotentList-w-w6eGU(Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V

    return-void

    .line 680
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lkotlinx/coroutines/channels/Send;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 681
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove()Z

    move-result v2

    if-nez v2, :cond_3

    .line 682
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemove()V

    goto :goto_0

    .line 686
    :cond_3
    check-cast v1, Lkotlinx/coroutines/channels/Send;

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/InlineList;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 673
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot happen"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onCancelIdempotentList-w-w6eGU(Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/channels/Closed<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 1155
    :cond_0
    instance-of v0, p1, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    check-cast p1, Lkotlinx/coroutines/channels/Send;

    .line 695
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/Send;->resumeSendClosed(Lkotlinx/coroutines/channels/Closed;)V

    goto :goto_1

    :cond_1
    const-string v0, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }"

    .line 1157
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 1158
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 1159
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/Send;

    .line 695
    invoke-virtual {v0, p2}, Lkotlinx/coroutines/channels/Send;->resumeSendClosed(Lkotlinx/coroutines/channels/Closed;)V

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected onReceiveDequeued()V
    .locals 0

    return-void
.end method

.method protected onReceiveEnqueued()V
    .locals 0

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 514
    invoke-static {p0}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->poll(Lkotlinx/coroutines/channels/Channel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected pollInternal()Ljava/lang/Object;
    .locals 3

    .line 541
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/channels/Send;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 542
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/Send;->tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 544
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 545
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 546
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 549
    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/Send;->undeliveredElement()V

    goto :goto_0
.end method

.method protected pollSelectInternal(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->describeTryPoll()Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    move-result-object v0

    .line 561
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 563
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/Send;

    .line 564
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 565
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/Send;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 583
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v0

    .line 590
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v1, :cond_0

    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 592
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->receiveSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;

    iget v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 627
    iget v2, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 632
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 627
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 629
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object p1

    .line 630
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-eq p1, v2, :cond_4

    .line 1152
    instance-of v0, p1, Lkotlinx/coroutines/channels/Closed;

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    check-cast p1, Lkotlinx/coroutines/channels/Closed;

    iget-object p1, p1, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1

    .line 632
    :cond_4
    iput v3, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->label:I

    invoke-direct {p0, v3, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->receiveSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p1, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public receiveOrNull(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 514
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->receiveOrNull(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveOrClosed<",
            "TE;>;"
        }
    .end annotation

    .line 802
    invoke-super {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->onReceiveDequeued()V

    :cond_0
    return-object v0
.end method

.method public final tryReceive-PtdJZtk()Ljava/lang/Object;
    .locals 2

    .line 637
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    move-result-object v0

    .line 638
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 639
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    if-eqz v1, :cond_1

    sget-object v1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    iget-object v0, v0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 640
    :cond_1
    sget-object v1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
