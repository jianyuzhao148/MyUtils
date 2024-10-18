.class public final Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;
.super Ljava/lang/Object;
.source "VirtualCurrencyPackageResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse$Item;
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse$Item;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;->items:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;Ljava/util/List;ILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;->items:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;->copy(Ljava/util/List;)Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse$Item;",
            ">;)",
            "Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;

    invoke-direct {v0, p1}, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;->items:Ljava/util/List;

    iget-object p1, p1, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;->items:Ljava/util/List;

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

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse$Item;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualCurrencyPackageResponse(items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/items/VirtualCurrencyPackageResponse;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
