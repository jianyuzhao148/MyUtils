.class public final Lcom/xsolla/android/payments/XPayments;
.super Ljava/lang/Object;
.source "XPayments.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/payments/XPayments$IntentBuilder;,
        Lcom/xsolla/android/payments/XPayments$Result;,
        Lcom/xsolla/android/payments/XPayments$Status;,
        Lcom/xsolla/android/payments/XPayments$CheckTransactionResult;,
        Lcom/xsolla/android/payments/XPayments$CheckTransactionResultStatus;,
        Lcom/xsolla/android/payments/XPayments$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xsolla/android/payments/XPayments$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xsolla/android/payments/XPayments$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xsolla/android/payments/XPayments$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xsolla/android/payments/XPayments;->Companion:Lcom/xsolla/android/payments/XPayments$Companion;

    return-void
.end method

.method public static final createIntentBuilder(Landroid/content/Context;)Lcom/xsolla/android/payments/XPayments$IntentBuilder;
    .locals 1

    sget-object v0, Lcom/xsolla/android/payments/XPayments;->Companion:Lcom/xsolla/android/payments/XPayments$Companion;

    invoke-virtual {v0, p0}, Lcom/xsolla/android/payments/XPayments$Companion;->createIntentBuilder(Landroid/content/Context;)Lcom/xsolla/android/payments/XPayments$IntentBuilder;

    move-result-object p0

    return-object p0
.end method
