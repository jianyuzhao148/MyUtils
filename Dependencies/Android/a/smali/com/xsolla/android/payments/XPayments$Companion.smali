.class public final Lcom/xsolla/android/payments/XPayments$Companion;
.super Ljava/lang/Object;
.source "XPayments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/payments/XPayments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXPayments.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XPayments.kt\ncom/xsolla/android/payments/XPayments$Companion\n+ 2 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n+ 3 Data.kt\nandroidx/work/DataKt\n*L\n1#1,161:1\n29#2:162\n31#3,5:163\n*E\n*S KotlinDebug\n*F\n+ 1 XPayments.kt\ncom/xsolla/android/payments/XPayments$Companion\n*L\n50#1:162\n51#1,5:163\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xsolla/android/payments/XPayments$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntentBuilder(Landroid/content/Context;)Lcom/xsolla/android/payments/XPayments$IntentBuilder;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/xsolla/android/payments/XPayments$IntentBuilder;

    invoke-direct {v0, p1}, Lcom/xsolla/android/payments/XPayments$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
