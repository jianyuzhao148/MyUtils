.class public final Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;
.super Ljava/lang/Object;
.source "XPayments.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/payments/XPayments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckTransactionResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/payments/XPayments$CheckTransactionResult$Creator;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final errorMessage:Ljava/lang/String;

.field private final paymentStatus:Lcom/xsolla/android/payments/status/PaymentStatus;

.field private final status:Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult$Creator;

    invoke-direct {v0}, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult$Creator;-><init>()V

    sput-object v0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;Lcom/xsolla/android/payments/status/PaymentStatus;Ljava/lang/String;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->status:Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    iput-object p2, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->paymentStatus:Lcom/xsolla/android/payments/status/PaymentStatus;

    iput-object p3, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;

    iget-object v0, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->status:Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    iget-object v1, p1, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->status:Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->paymentStatus:Lcom/xsolla/android/payments/status/PaymentStatus;

    iget-object v1, p1, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->paymentStatus:Lcom/xsolla/android/payments/status/PaymentStatus;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->errorMessage:Ljava/lang/String;

    iget-object p1, p1, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->errorMessage:Ljava/lang/String;

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

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->status:Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->paymentStatus:Lcom/xsolla/android/payments/status/PaymentStatus;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->errorMessage:Ljava/lang/String;

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

    const-string v1, "CheckTransactionResult(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->status:Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->paymentStatus:Lcom/xsolla/android/payments/status/PaymentStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object p2, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->status:Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->paymentStatus:Lcom/xsolla/android/payments/status/PaymentStatus;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
