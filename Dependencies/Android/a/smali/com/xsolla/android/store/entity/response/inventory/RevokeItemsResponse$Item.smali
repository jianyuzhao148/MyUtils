.class public final Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;
.super Ljava/lang/Object;
.source "RevokeItemsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation


# instance fields
.field private final quantity:I

.field private final sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->sku:Ljava/lang/String;

    iput p2, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->quantity:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 42
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;Ljava/lang/String;IILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->sku:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->quantity:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->copy(Ljava/lang/String;I)Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->quantity:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;
    .locals 1

    new-instance v0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;

    invoke-direct {v0, p1, p2}, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->sku:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->sku:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->quantity:I

    iget p1, p1, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->quantity:I

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

.method public final getQuantity()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->quantity:I

    return v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->sku:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->quantity:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Item;->quantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
