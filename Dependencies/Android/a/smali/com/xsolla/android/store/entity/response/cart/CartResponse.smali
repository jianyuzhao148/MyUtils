.class public final Lcom/xsolla/android/store/entity/response/cart/CartResponse;
.super Ljava/lang/Object;
.source "CartResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/store/entity/response/cart/CartResponse$Item;
    }
.end annotation


# instance fields
.field private final cartId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cart_id"
    .end annotation
.end field

.field private final isFree:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_free"
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/cart/CartResponse$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final price:Lcom/xsolla/android/store/entity/response/common/Price;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/common/Price;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xsolla/android/store/entity/response/common/Price;",
            "Z",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/cart/CartResponse$Item;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->cartId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->price:Lcom/xsolla/android/store/entity/response/common/Price;

    iput-boolean p3, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->isFree:Z

    iput-object p4, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->items:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/common/Price;ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xsolla/android/store/entity/response/cart/CartResponse;-><init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/common/Price;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/cart/CartResponse;Ljava/lang/String;Lcom/xsolla/android/store/entity/response/common/Price;ZLjava/util/List;ILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/cart/CartResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->cartId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->price:Lcom/xsolla/android/store/entity/response/common/Price;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->isFree:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->items:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->copy(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/common/Price;ZLjava/util/List;)Lcom/xsolla/android/store/entity/response/cart/CartResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->cartId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/xsolla/android/store/entity/response/common/Price;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->price:Lcom/xsolla/android/store/entity/response/common/Price;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->isFree:Z

    return v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/cart/CartResponse$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/common/Price;ZLjava/util/List;)Lcom/xsolla/android/store/entity/response/cart/CartResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xsolla/android/store/entity/response/common/Price;",
            "Z",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/cart/CartResponse$Item;",
            ">;)",
            "Lcom/xsolla/android/store/entity/response/cart/CartResponse;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xsolla/android/store/entity/response/cart/CartResponse;-><init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/common/Price;ZLjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/cart/CartResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/cart/CartResponse;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->cartId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->cartId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->price:Lcom/xsolla/android/store/entity/response/common/Price;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->price:Lcom/xsolla/android/store/entity/response/common/Price;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->isFree:Z

    iget-boolean v1, p1, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->isFree:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->items:Ljava/util/List;

    iget-object p1, p1, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->items:Ljava/util/List;

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

.method public final getCartId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->cartId:Ljava/lang/String;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/cart/CartResponse$Item;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPrice()Lcom/xsolla/android/store/entity/response/common/Price;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->price:Lcom/xsolla/android/store/entity/response/common/Price;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->cartId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->price:Lcom/xsolla/android/store/entity/response/common/Price;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->isFree:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->items:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final isFree()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->isFree:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CartResponse(cartId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->cartId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->price:Lcom/xsolla/android/store/entity/response/common/Price;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->isFree:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/cart/CartResponse;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
