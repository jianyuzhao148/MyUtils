.class public final Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;
.super Ljava/lang/Object;
.source "VirtualPrice.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/store/entity/response/common/VirtualPrice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalculatedPrice"
.end annotation


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final amountWithoutDiscount:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;-><init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amount:Ljava/math/BigDecimal;

    iput-object p2, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amountWithoutDiscount:Ljava/math/BigDecimal;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 49
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;-><init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;Ljava/math/BigDecimal;Ljava/math/BigDecimal;ILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amount:Ljava/math/BigDecimal;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amountWithoutDiscount:Ljava/math/BigDecimal;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->copy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component2()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amountWithoutDiscount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final copy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;
    .locals 1

    new-instance v0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;

    invoke-direct {v0, p1, p2}, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;-><init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amount:Ljava/math/BigDecimal;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amount:Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amountWithoutDiscount:Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amountWithoutDiscount:Ljava/math/BigDecimal;

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

.method public final getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getAmountWithoutDiscount()Ljava/math/BigDecimal;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amountWithoutDiscount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amount:Ljava/math/BigDecimal;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amountWithoutDiscount:Ljava/math/BigDecimal;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalculatedPrice(amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amountWithoutDiscount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/common/VirtualPrice$CalculatedPrice;->amountWithoutDiscount:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
