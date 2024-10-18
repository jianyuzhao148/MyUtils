.class public final Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;
.super Ljava/lang/Object;
.source "CreateOrderRequestBody.kt"


# instance fields
.field private final currency:Ljava/lang/String;

.field private final locale:Ljava/lang/String;

.field private final sandbox:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/xsolla/android/store/entity/request/payment/PaymentOptions;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/request/payment/PaymentOptions;->getCurrency()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "USD"

    :goto_0
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/request/payment/PaymentOptions;->getLocale()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "en"

    :goto_1
    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/request/payment/PaymentOptions;->isSandbox()Z

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    .line 8
    :goto_2
    invoke-direct {p0, v0, v1, p1}, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->currency:Ljava/lang/String;

    iput-object p2, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->locale:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->sandbox:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-string p1, "USD"

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const-string p2, "en"

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->currency:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->locale:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->sandbox:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->copy(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->sandbox:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;
    .locals 1

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;

    invoke-direct {v0, p1, p2, p3}, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->currency:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->locale:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->locale:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->sandbox:Z

    iget-boolean p1, p1, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->sandbox:Z

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

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public final getSandbox()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->sandbox:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->currency:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->locale:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->sandbox:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateOrderRequestBody(currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sandbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xsolla/android/store/entity/request/payment/CreateOrderRequestBody;->sandbox:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
