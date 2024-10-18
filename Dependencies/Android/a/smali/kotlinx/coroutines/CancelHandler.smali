.class public abstract Lkotlinx/coroutines/CancelHandler;
.super Lkotlinx/coroutines/CancelHandlerBase;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lkotlinx/coroutines/NotCompleted;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 559
    invoke-direct {p0}, Lkotlinx/coroutines/CancelHandlerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP1)TR"
        }
    .end annotation
.end method
