.class public final Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;
.super Ljava/lang/Object;
.source "ExpirationPeriod.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Creator;,
        Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final type:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Creator;

    invoke-direct {v0}, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Creator;-><init>()V

    sput-object v0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;I)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->type:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    iput p2, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->value:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;IILjava/lang/Object;)Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->type:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->value:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->copy(Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;I)Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;
    .locals 1

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->type:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->value:I

    return v0
.end method

.method public final copy(Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;I)Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;

    invoke-direct {v0, p1, p2}, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;-><init>(Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;I)V

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

    instance-of v0, p1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->type:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    iget-object v1, p1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->type:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->value:I

    iget p1, p1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->value:I

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

.method public final getType()Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->type:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->type:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->value:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExpirationPeriod(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->type:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->value:I

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

    iget-object p2, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->type:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
