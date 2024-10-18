.class public final Lcom/xsolla/android/store/entity/response/common/InventoryOption;
.super Ljava/lang/Object;
.source "InventoryOption.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/store/entity/response/common/InventoryOption$Creator;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final consumable:Lcom/xsolla/android/store/entity/response/common/Consumable;

.field private final expirationPeriod:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration_period"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xsolla/android/store/entity/response/common/InventoryOption$Creator;

    invoke-direct {v0}, Lcom/xsolla/android/store/entity/response/common/InventoryOption$Creator;-><init>()V

    sput-object v0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/xsolla/android/store/entity/response/common/InventoryOption;-><init>(Lcom/xsolla/android/store/entity/response/common/Consumable;Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/xsolla/android/store/entity/response/common/Consumable;Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->consumable:Lcom/xsolla/android/store/entity/response/common/Consumable;

    iput-object p2, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->expirationPeriod:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xsolla/android/store/entity/response/common/Consumable;Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/xsolla/android/store/entity/response/common/InventoryOption;-><init>(Lcom/xsolla/android/store/entity/response/common/Consumable;Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/common/InventoryOption;Lcom/xsolla/android/store/entity/response/common/Consumable;Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;ILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/common/InventoryOption;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->consumable:Lcom/xsolla/android/store/entity/response/common/Consumable;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->expirationPeriod:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->copy(Lcom/xsolla/android/store/entity/response/common/Consumable;Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;)Lcom/xsolla/android/store/entity/response/common/InventoryOption;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/xsolla/android/store/entity/response/common/Consumable;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->consumable:Lcom/xsolla/android/store/entity/response/common/Consumable;

    return-object v0
.end method

.method public final component2()Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->expirationPeriod:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;

    return-object v0
.end method

.method public final copy(Lcom/xsolla/android/store/entity/response/common/Consumable;Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;)Lcom/xsolla/android/store/entity/response/common/InventoryOption;
    .locals 1

    new-instance v0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;

    invoke-direct {v0, p1, p2}, Lcom/xsolla/android/store/entity/response/common/InventoryOption;-><init>(Lcom/xsolla/android/store/entity/response/common/Consumable;Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/common/InventoryOption;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/common/InventoryOption;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->consumable:Lcom/xsolla/android/store/entity/response/common/Consumable;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->consumable:Lcom/xsolla/android/store/entity/response/common/Consumable;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->expirationPeriod:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;

    iget-object p1, p1, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->expirationPeriod:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;

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

.method public final getConsumable()Lcom/xsolla/android/store/entity/response/common/Consumable;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->consumable:Lcom/xsolla/android/store/entity/response/common/Consumable;

    return-object v0
.end method

.method public final getExpirationPeriod()Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->expirationPeriod:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->consumable:Lcom/xsolla/android/store/entity/response/common/Consumable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->expirationPeriod:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;

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

    const-string v1, "InventoryOption(consumable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->consumable:Lcom/xsolla/android/store/entity/response/common/Consumable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expirationPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->expirationPeriod:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->consumable:Lcom/xsolla/android/store/entity/response/common/Consumable;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/xsolla/android/store/entity/response/common/InventoryOption;->expirationPeriod:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
