.class public final Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;
.super Ljava/lang/Object;
.source "RevokeItemsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation


# instance fields
.field private final comment:Ljava/lang/String;

.field private final platform:Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;

.field private final userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;-><init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;

    iput-object p3, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->comment:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 11
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;-><init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;Ljava/lang/String;ILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->userId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->comment:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->copy(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;Ljava/lang/String;)Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;Ljava/lang/String;)Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;
    .locals 1

    new-instance v0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;

    invoke-direct {v0, p1, p2, p3}, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;-><init>(Ljava/lang/String;Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->userId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->comment:Ljava/lang/String;

    iget-object p1, p1, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->comment:Ljava/lang/String;

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

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatform()Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->comment:Ljava/lang/String;

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

    const-string v1, "Operation(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->platform:Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Platform;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/inventory/RevokeItemsResponse$Operation;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
