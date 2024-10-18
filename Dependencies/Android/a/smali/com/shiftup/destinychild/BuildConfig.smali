.class public final Lcom/shiftup/destinychild/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final ADJUST_APP_TOKEN:Ljava/lang/String; = "5oxcn2wcqxs0"

.field public static final ADJUST_FIRST_IAP_TOKEN:Ljava/lang/String; = "xuncj7"

.field public static final ADJUST_REPEAT_IAP_TOKEN:Ljava/lang/String; = "jpse0f"

.field public static final ADJUST_SECRET:[J

.field public static final ADJUST_SETTING:Ljava/lang/String; = "production"

.field public static final APPLICATION_ID:Ljava/lang/String; = "com.linegames.dcglobal.xsolla"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = "certProductAdsDisabledXsolla"

.field public static final FLAVOR_adjust:Ljava/lang/String; = "product"

.field public static final FLAVOR_ironsource:Ljava/lang/String; = "adsDisabled"

.field public static final FLAVOR_store:Ljava/lang/String; = "xsolla"

.field public static final FLAVOR_target:Ljava/lang/String; = "cert"

.field public static final IS_SANDBOX:Z = false

.field public static final PURCHASE_ADAPTER:Lcom/shiftup/inapp/PurchaseAdapter;

.field public static final VERSION_CODE:I = 0x1d4d8

.field public static final VERSION_NAME:Ljava/lang/String; = "2.9.3x"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 24
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shiftup/destinychild/BuildConfig;->ADJUST_SECRET:[J

    .line 30
    new-instance v0, Lcom/shiftup/inapp/XsollaPurchaseAdapter;

    invoke-direct {v0}, Lcom/shiftup/inapp/XsollaPurchaseAdapter;-><init>()V

    sput-object v0, Lcom/shiftup/destinychild/BuildConfig;->PURCHASE_ADAPTER:Lcom/shiftup/inapp/PurchaseAdapter;

    return-void

    :array_0
    .array-data 8
        0x1
        0x603d1144
        0x69b5652c
        0xb3b58e0
        0x3fde7de1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
