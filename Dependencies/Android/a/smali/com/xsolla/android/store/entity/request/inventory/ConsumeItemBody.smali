.class public final Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;
.super Ljava/lang/Object;
.source "ConsumeItemBody.kt"


# instance fields
.field private final instanceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instance_id"
    .end annotation
.end field

.field private final quantity:Ljava/lang/Integer;

.field private final sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->sku:Ljava/lang/String;

    iput-object p2, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->quantity:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->instanceId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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
    invoke-direct {p0, p1, p2, p3}, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->sku:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->quantity:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->instanceId:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->copy(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;
    .locals 1

    const-string v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;

    invoke-direct {v0, p1, p2, p3}, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->sku:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->sku:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->quantity:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->quantity:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->instanceId:Ljava/lang/String;

    iget-object p1, p1, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->instanceId:Ljava/lang/String;

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

.method public final getInstanceId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuantity()Ljava/lang/Integer;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->sku:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->quantity:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->instanceId:Ljava/lang/String;

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

    const-string v1, "ConsumeItemBody(sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->quantity:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/request/inventory/ConsumeItemBody;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
