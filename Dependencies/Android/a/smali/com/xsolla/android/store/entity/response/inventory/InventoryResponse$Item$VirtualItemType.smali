.class public final enum Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;
.super Ljava/lang/Enum;
.source "InventoryResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VirtualItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

.field public static final enum CONSUMABLE:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consumable"
    .end annotation
.end field

.field public static final enum NON_CONSUMABLE:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "non_consumable"
    .end annotation
.end field

.field public static final enum NON_RENEWING_SUBSCRIPTION:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "non_renewing_subscription"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    const-string v2, "CONSUMABLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;->CONSUMABLE:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    const-string v2, "NON_CONSUMABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;->NON_CONSUMABLE:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    const-string v2, "NON_RENEWING_SUBSCRIPTION"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;->NON_RENEWING_SUBSCRIPTION:Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;->$VALUES:[Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;
    .locals 1

    const-class v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    return-object p0
.end method

.method public static values()[Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;
    .locals 1

    sget-object v0, Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;->$VALUES:[Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    invoke-virtual {v0}, [Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xsolla/android/store/entity/response/inventory/InventoryResponse$Item$VirtualItemType;

    return-object v0
.end method
