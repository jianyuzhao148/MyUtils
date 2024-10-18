.class public final Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;
.super Ljava/lang/Object;
.source "InventoryResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;,
        Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;
    }
.end annotation


# instance fields
.field private final attributes:Ljava/lang/Object;

.field private final description:Ljava/lang/String;

.field private final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/common/Group;",
            ">;"
        }
    .end annotation
.end field

.field private final imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_url"
    .end annotation
.end field

.field private final instanceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instance_id"
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final quantity:I

.field private final remainingUses:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remaining_uses"
    .end annotation
.end field

.field private final sku:Ljava/lang/String;

.field private final type:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;

.field private final virtualItemType:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "virtual_item_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;ILcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/common/Group;",
            ">;",
            "Ljava/lang/Object;",
            "I",
            "Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;",
            ")V"
        }
    .end annotation

    const-string v0, "groups"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->instanceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->sku:Ljava/lang/String;

    iput-object p3, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;

    iput-object p4, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->name:Ljava/lang/String;

    iput p5, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->quantity:I

    iput-object p6, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->description:Ljava/lang/String;

    iput-object p7, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->imageUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->groups:Ljava/util/List;

    iput-object p9, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->attributes:Ljava/lang/Object;

    iput p10, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->remainingUses:I

    iput-object p11, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->virtualItemType:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;ILcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

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
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v11, v1

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    move-object v12, v2

    goto :goto_7

    :cond_7
    move-object/from16 v12, p9

    :goto_7
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    move-object v3, p0

    move/from16 v8, p5

    move/from16 v13, p10

    .line 22
    invoke-direct/range {v3 .. v14}, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;ILcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;ILcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;ILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->instanceId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->sku:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->quantity:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->description:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->imageUrl:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->groups:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->attributes:Ljava/lang/Object;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->remainingUses:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->virtualItemType:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;ILcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;)Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->remainingUses:I

    return v0
.end method

.method public final component11()Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->virtualItemType:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->quantity:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/common/Group;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->groups:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->attributes:Ljava/lang/Object;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;ILcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;)Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/common/Group;",
            ">;",
            "Ljava/lang/Object;",
            "I",
            "Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;",
            ")",
            "Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;"
        }
    .end annotation

    const-string v0, "groups"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;ILcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->instanceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->instanceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->sku:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->sku:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->quantity:I

    iget v1, p1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->quantity:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->description:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->imageUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->imageUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->groups:Ljava/util/List;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->groups:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->attributes:Ljava/lang/Object;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->attributes:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->remainingUses:I

    iget v1, p1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->remainingUses:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->virtualItemType:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    iget-object p1, p1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->virtualItemType:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

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

.method public final getAttributes()Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->attributes:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/common/Group;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->groups:Ljava/util/List;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstanceId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuantity()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->quantity:I

    return v0
.end method

.method public final getRemainingUses()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->remainingUses:I

    return v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;

    return-object v0
.end method

.method public final getVirtualItemType()Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->virtualItemType:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->instanceId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->sku:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->quantity:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->description:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->groups:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->attributes:Ljava/lang/Object;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->remainingUses:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->virtualItemType:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->quantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", groups="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->groups:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->attributes:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", remainingUses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->remainingUses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", virtualItemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;->virtualItemType:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
