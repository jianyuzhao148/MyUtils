.class public final Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;
.super Ljava/lang/Object;
.source "GrantItemsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse$Operation;,
        Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse$Item;,
        Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse$Platform;
    }
.end annotation


# instance fields
.field private final count:I

.field private final operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse$Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse$Operation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "operations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->count:I

    iput-object p2, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->operations:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;ILjava/util/List;ILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->count:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->operations:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->copy(ILjava/util/List;)Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->count:I

    return v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse$Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->operations:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ILjava/util/List;)Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse$Operation;",
            ">;)",
            "Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;"
        }
    .end annotation

    const-string v0, "operations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;

    invoke-direct {v0, p1, p2}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;

    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->count:I

    iget v1, p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->count:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->operations:Ljava/util/List;

    iget-object p1, p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->operations:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCount()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->count:I

    return v0
.end method

.method public final getOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse$Operation;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->operations:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->count:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->operations:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GrantItemsResponse(count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsResponse;->operations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
