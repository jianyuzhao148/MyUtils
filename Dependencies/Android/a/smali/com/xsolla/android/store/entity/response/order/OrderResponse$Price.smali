.class public final Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;
.super Ljava/lang/Object;
.source "OrderResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/store/entity/response/order/OrderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Price"
.end annotation


# instance fields
.field private final amount:Ljava/lang/String;

.field private final amountWithoutDiscount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount_without_discount"
    .end annotation
.end field

.field private final currency:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amount:Ljava/lang/String;

    iput-object p2, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amountWithoutDiscount:Ljava/lang/String;

    iput-object p3, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->currency:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 43
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amount:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amountWithoutDiscount:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->currency:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amountWithoutDiscount:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;
    .locals 1

    new-instance v0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

    invoke-direct {v0, p1, p2, p3}, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amount:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amount:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amountWithoutDiscount:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amountWithoutDiscount:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->currency:Ljava/lang/String;

    iget-object p1, p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->currency:Ljava/lang/String;

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

.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getAmountWithoutDiscount()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amountWithoutDiscount:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amount:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amountWithoutDiscount:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->currency:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Price(amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amountWithoutDiscount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->amountWithoutDiscount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
