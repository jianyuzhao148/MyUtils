.class public final Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;
.super Ljava/lang/Object;
.source "OrderResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/store/entity/response/order/OrderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation


# instance fields
.field private final isFree:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_free"
    .end annotation
.end field

.field private final price:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

.field private final quantity:I

.field private final sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLcom/xsolla/android/store/entity/response/order/OrderResponse$Price;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->sku:Ljava/lang/String;

    iput p2, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->quantity:I

    iput-boolean p3, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->isFree:Z

    iput-object p4, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->price:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZLcom/xsolla/android/store/entity/response/order/OrderResponse$Price;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 36
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;-><init>(Ljava/lang/String;IZLcom/xsolla/android/store/entity/response/order/OrderResponse$Price;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;Ljava/lang/String;IZLcom/xsolla/android/store/entity/response/order/OrderResponse$Price;ILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->sku:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->quantity:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->isFree:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->price:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->copy(Ljava/lang/String;IZLcom/xsolla/android/store/entity/response/order/OrderResponse$Price;)Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->quantity:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->isFree:Z

    return v0
.end method

.method public final component4()Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->price:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;IZLcom/xsolla/android/store/entity/response/order/OrderResponse$Price;)Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;
    .locals 1

    new-instance v0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;-><init>(Ljava/lang/String;IZLcom/xsolla/android/store/entity/response/order/OrderResponse$Price;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->sku:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->sku:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->quantity:I

    iget v1, p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->quantity:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->isFree:Z

    iget-boolean v1, p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->isFree:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->price:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

    iget-object p1, p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->price:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

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

.method public final getPrice()Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->price:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

    return-object v0
.end method

.method public final getQuantity()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->quantity:I

    return v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->sku:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->quantity:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->isFree:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->price:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isFree()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->isFree:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->quantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->isFree:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;->price:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
