.class public Lkotlin/ranges/CharProgression;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final first:C

.field private final last:C

.field private final step:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(CCI)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    .line 30
    iput-char p1, p0, Lkotlin/ranges/CharProgression;->first:C

    .line 35
    invoke-static {p1, p2, p3}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result p1

    int-to-char p1, p1

    iput-char p1, p0, Lkotlin/ranges/CharProgression;->last:C

    .line 40
    iput p3, p0, Lkotlin/ranges/CharProgression;->step:I

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getFirst()C
    .locals 1

    .line 30
    iget-char v0, p0, Lkotlin/ranges/CharProgression;->first:C

    return v0
.end method

.method public final getLast()C
    .locals 1

    .line 35
    iget-char v0, p0, Lkotlin/ranges/CharProgression;->last:C

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->iterator()Lkotlin/collections/CharIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lkotlin/collections/CharIterator;
    .locals 4

    .line 42
    new-instance v0, Lkotlin/ranges/CharProgressionIterator;

    iget-char v1, p0, Lkotlin/ranges/CharProgression;->first:C

    iget-char v2, p0, Lkotlin/ranges/CharProgression;->last:C

    iget v3, p0, Lkotlin/ranges/CharProgression;->step:I

    invoke-direct {v0, v1, v2, v3}, Lkotlin/ranges/CharProgressionIterator;-><init>(CCI)V

    return-object v0
.end method
