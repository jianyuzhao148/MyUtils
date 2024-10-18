.class public final enum Lcom/xsolla/android/payments/XPayments$Status;
.super Ljava/lang/Enum;
.source "XPayments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/payments/XPayments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xsolla/android/payments/XPayments$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xsolla/android/payments/XPayments$Status;

.field public static final enum CANCELLED:Lcom/xsolla/android/payments/XPayments$Status;

.field public static final enum COMPLETED:Lcom/xsolla/android/payments/XPayments$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xsolla/android/payments/XPayments$Status;

    new-instance v1, Lcom/xsolla/android/payments/XPayments$Status;

    const-string v2, "COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/payments/XPayments$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/payments/XPayments$Status;->COMPLETED:Lcom/xsolla/android/payments/XPayments$Status;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/payments/XPayments$Status;

    const-string v2, "CANCELLED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/payments/XPayments$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/payments/XPayments$Status;->CANCELLED:Lcom/xsolla/android/payments/XPayments$Status;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/payments/XPayments$Status;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/payments/XPayments$Status;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/xsolla/android/payments/XPayments$Status;->$VALUES:[Lcom/xsolla/android/payments/XPayments$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xsolla/android/payments/XPayments$Status;
    .locals 1

    const-class v0, Lcom/xsolla/android/payments/XPayments$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xsolla/android/payments/XPayments$Status;

    return-object p0
.end method

.method public static values()[Lcom/xsolla/android/payments/XPayments$Status;
    .locals 1

    sget-object v0, Lcom/xsolla/android/payments/XPayments$Status;->$VALUES:[Lcom/xsolla/android/payments/XPayments$Status;

    invoke-virtual {v0}, [Lcom/xsolla/android/payments/XPayments$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xsolla/android/payments/XPayments$Status;

    return-object v0
.end method
