.class public final Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;
.super Ljava/lang/Object;
.source "GrantItemsByPurchaseResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation


# instance fields
.field private final amount:Ljava/lang/String;

.field private final comment:Ljava/lang/String;

.field private final currency:Ljava/lang/String;

.field private final externalPurchaseDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_purchase_date"
    .end annotation
.end field

.field private final externalPurchaseId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_purchase_id"
    .end annotation
.end field

.field private final orderId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_id"
    .end annotation
.end field

.field private final platform:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

.field private final userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    iput-object p3, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->comment:Ljava/lang/String;

    iput p4, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->orderId:I

    iput-object p5, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseId:Ljava/lang/String;

    iput-object p6, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseDate:Ljava/lang/String;

    iput-object p7, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->amount:Ljava/lang/String;

    iput-object p8, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->currency:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    move-object v3, p0

    move/from16 v7, p4

    .line 18
    invoke-direct/range {v3 .. v11}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;-><init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->userId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->comment:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->orderId:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseDate:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->amount:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->currency:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->copy(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->orderId:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;
    .locals 10

    new-instance v9, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;-><init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->userId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->comment:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->comment:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->orderId:I

    iget v1, p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->orderId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseDate:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseDate:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->amount:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->amount:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->currency:Ljava/lang/String;

    iget-object p1, p1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->currency:Ljava/lang/String;

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

    .line 17
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getExternalPurchaseDate()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getExternalPurchaseId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->orderId:I

    return v0
.end method

.method public final getPlatform()Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->comment:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->orderId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseId:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseDate:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->amount:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->currency:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operation(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->orderId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", externalPurchaseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", externalPurchaseDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->externalPurchaseDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
