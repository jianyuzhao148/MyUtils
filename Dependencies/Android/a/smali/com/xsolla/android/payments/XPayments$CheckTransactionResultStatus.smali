.class public final enum Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;
.super Ljava/lang/Enum;
.source "XPayments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/payments/XPayments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckTransactionResultStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

.field public static final enum FAIL:Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

.field public static final enum SUCCESS:Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    new-instance v1, Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    const-string v2, "SUCCESS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;->SUCCESS:Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    const-string v2, "FAIL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;->FAIL:Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;->$VALUES:[Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;
    .locals 1

    const-class v0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    return-object p0
.end method

.method public static values()[Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;
    .locals 1

    sget-object v0, Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;->$VALUES:[Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    invoke-virtual {v0}, [Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;

    return-object v0
.end method
