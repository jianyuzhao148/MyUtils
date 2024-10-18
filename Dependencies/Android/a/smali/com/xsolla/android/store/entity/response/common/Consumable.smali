.class public final Lcom/xsolla/android/store/entity/response/common/Consumable;
.super Ljava/lang/Object;
.source "Consumable.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/store/entity/response/common/Consumable$Creator;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final usagesCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "usages_count"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xsolla/android/store/entity/response/common/Consumable$Creator;

    invoke-direct {v0}, Lcom/xsolla/android/store/entity/response/common/Consumable$Creator;-><init>()V

    sput-object v0, Lcom/xsolla/android/store/entity/response/common/Consumable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xsolla/android/store/entity/response/common/Consumable;->usagesCount:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/common/Consumable;IILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/common/Consumable;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/xsolla/android/store/entity/response/common/Consumable;->usagesCount:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xsolla/android/store/entity/response/common/Consumable;->copy(I)Lcom/xsolla/android/store/entity/response/common/Consumable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/xsolla/android/store/entity/response/common/Consumable;->usagesCount:I

    return v0
.end method

.method public final copy(I)Lcom/xsolla/android/store/entity/response/common/Consumable;
    .locals 1

    new-instance v0, Lcom/xsolla/android/store/entity/response/common/Consumable;

    invoke-direct {v0, p1}, Lcom/xsolla/android/store/entity/response/common/Consumable;-><init>(I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/common/Consumable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/common/Consumable;

    iget v0, p0, Lcom/xsolla/android/store/entity/response/common/Consumable;->usagesCount:I

    iget p1, p1, Lcom/xsolla/android/store/entity/response/common/Consumable;->usagesCount:I

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

.method public final getUsagesCount()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/xsolla/android/store/entity/response/common/Consumable;->usagesCount:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/xsolla/android/store/entity/response/common/Consumable;->usagesCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Consumable(usagesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xsolla/android/store/entity/response/common/Consumable;->usagesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/xsolla/android/store/entity/response/common/Consumable;->usagesCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
