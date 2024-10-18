.class public final Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;
.super Ljava/lang/Object;
.source "SubscriptionsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;,
        Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;,
        Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;
    }
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final expiredAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expired_at"
    .end annotation
.end field

.field private final imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_url"
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final sku:Ljava/lang/String;

.field private final status:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

.field private final subscriptionClass:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscription_class"
    .end annotation
.end field

.field private final type:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->sku:Ljava/lang/String;

    iput-object p2, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;

    iput-object p3, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->subscriptionClass:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    iput-object p4, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->description:Ljava/lang/String;

    iput-object p6, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->imageUrl:Ljava/lang/String;

    iput-wide p7, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->expiredAt:J

    iput-object p9, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->status:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

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
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move-object v9, v2

    goto :goto_5

    :cond_5
    move-object/from16 v9, p6

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    move-object v3, p0

    move-wide/from16 v10, p7

    .line 17
    invoke-direct/range {v3 .. v12}, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;-><init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;ILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->sku:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->subscriptionClass:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->description:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->imageUrl:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-wide v8, v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->expiredAt:J

    goto :goto_6

    :cond_6
    move-wide/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->status:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p9

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-wide/from16 p7, v8

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->copy(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;)Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;

    return-object v0
.end method

.method public final component3()Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->subscriptionClass:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->expiredAt:J

    return-wide v0
.end method

.method public final component8()Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->status:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;)Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;
    .locals 11

    new-instance v10, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;-><init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->sku:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->sku:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->subscriptionClass:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->subscriptionClass:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->description:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->imageUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->imageUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->expiredAt:J

    iget-wide v2, p1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->expiredAt:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->status:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    iget-object p1, p1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->status:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

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

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiredAt()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->expiredAt:J

    return-wide v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->status:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    return-object v0
.end method

.method public final getSubscriptionClass()Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->subscriptionClass:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    return-object v0
.end method

.method public final getType()Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->sku:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->subscriptionClass:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->description:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->expiredAt:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->status:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->type:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->subscriptionClass:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiredAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->expiredAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;->status:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
