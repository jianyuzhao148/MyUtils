.class public final Lcom/xsolla/android/store/entity/response/order/OrderResponse;
.super Ljava/lang/Object;
.source "OrderResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;,
        Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;,
        Lcom/xsolla/android/store/entity/response/order/OrderResponse$Item;,
        Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;,
        Lcom/xsolla/android/store/entity/response/order/OrderResponse$VirtualPrice;
    }
.end annotation


# instance fields
.field private final content:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;

.field private final orderId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_id"
    .end annotation
.end field

.field private final status:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;


# direct methods
.method public constructor <init>(ILcom/xsolla/android/store/entity/response/order/OrderResponse$Status;Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->orderId:I

    iput-object p2, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->status:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;

    iput-object p3, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->content:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/xsolla/android/store/entity/response/order/OrderResponse$Status;Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/xsolla/android/store/entity/response/order/OrderResponse;-><init>(ILcom/xsolla/android/store/entity/response/order/OrderResponse$Status;Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/order/OrderResponse;ILcom/xsolla/android/store/entity/response/order/OrderResponse$Status;Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;ILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/order/OrderResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->orderId:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->status:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->content:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->copy(ILcom/xsolla/android/store/entity/response/order/OrderResponse$Status;Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;)Lcom/xsolla/android/store/entity/response/order/OrderResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->orderId:I

    return v0
.end method

.method public final component2()Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->status:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;

    return-object v0
.end method

.method public final component3()Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->content:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;

    return-object v0
.end method

.method public final copy(ILcom/xsolla/android/store/entity/response/order/OrderResponse$Status;Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;)Lcom/xsolla/android/store/entity/response/order/OrderResponse;
    .locals 1

    new-instance v0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/xsolla/android/store/entity/response/order/OrderResponse;-><init>(ILcom/xsolla/android/store/entity/response/order/OrderResponse$Status;Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse;

    iget v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->orderId:I

    iget v1, p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->orderId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->status:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->status:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->content:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;

    iget-object p1, p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->content:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;

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

.method public final getContent()Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->content:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;

    return-object v0
.end method

.method public final getOrderId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->orderId:I

    return v0
.end method

.method public final getStatus()Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->status:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->orderId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->status:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->content:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrderResponse(orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->orderId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->status:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->content:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
