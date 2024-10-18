.class public final Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;
.super Ljava/lang/Object;
.source "CreateOrderByVirtualCurrencyResponse.kt"


# instance fields
.field private final orderId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;->orderId:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;IILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;->orderId:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;->copy(I)Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;->orderId:I

    return v0
.end method

.method public final copy(I)Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;
    .locals 1

    new-instance v0, Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;

    invoke-direct {v0, p1}, Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;

    iget v0, p0, Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;->orderId:I

    iget p1, p1, Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;->orderId:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getOrderId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;->orderId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;->orderId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateOrderByVirtualCurrencyResponse(orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xsolla/android/store/entity/response/payment/CreateOrderByVirtualCurrencyResponse;->orderId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
