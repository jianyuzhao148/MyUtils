.class public final enum Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
.super Ljava/lang/Enum;
.source "GrantItemsByPurchaseResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Platform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

.field public static final enum ANDROID_OTHER:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android_other"
    .end annotation
.end field

.field public static final enum ANDROID_STANDALONE:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android_standalone"
    .end annotation
.end field

.field public static final enum APP_STORE_IOS:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_store_ios"
    .end annotation
.end field

.field public static final enum GOOGLE_PLAY:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "google_play"
    .end annotation
.end field

.field public static final enum IOS_OTHER:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ios_other"
    .end annotation
.end field

.field public static final enum IOS_STANDALONE:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ios_standalone"
    .end annotation
.end field

.field public static final enum NINTENDO_SHOP:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nintendo_shop"
    .end annotation
.end field

.field public static final enum PC_OTHER:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pc_other"
    .end annotation
.end field

.field public static final enum PC_STANDALONE:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pc_standalone"
    .end annotation
.end field

.field public static final enum PLAYSTATION_NETWORK:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playstation_network"
    .end annotation
.end field

.field public static final enum XBOX_LIVE:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "xbox_live"
    .end annotation
.end field

.field public static final enum XSOLLA:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "xsolla"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    const-string v2, "PLAYSTATION_NETWORK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->PLAYSTATION_NETWORK:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    const-string v2, "XBOX_LIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->XBOX_LIVE:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    const-string v2, "XSOLLA"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->XSOLLA:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    const-string v2, "PC_STANDALONE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->PC_STANDALONE:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    const-string v2, "NINTENDO_SHOP"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->NINTENDO_SHOP:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    const-string v2, "GOOGLE_PLAY"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->GOOGLE_PLAY:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    const-string v2, "APP_STORE_IOS"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->APP_STORE_IOS:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    const-string v2, "ANDROID_STANDALONE"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->ANDROID_STANDALONE:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    const-string v2, "IOS_STANDALONE"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->IOS_STANDALONE:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    const-string v2, "ANDROID_OTHER"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->ANDROID_OTHER:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    const-string v2, "IOS_OTHER"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->IOS_OTHER:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    const-string v2, "PC_OTHER"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->PC_OTHER:Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->$VALUES:[Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .locals 1

    const-class v0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    return-object p0
.end method

.method public static values()[Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    .locals 1

    sget-object v0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->$VALUES:[Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    invoke-virtual {v0}, [Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;

    return-object v0
.end method
