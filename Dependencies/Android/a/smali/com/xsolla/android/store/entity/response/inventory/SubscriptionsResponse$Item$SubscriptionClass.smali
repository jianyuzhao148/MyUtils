.class public final enum Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;
.super Ljava/lang/Enum;
.source "SubscriptionsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubscriptionClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

.field public static final enum CONSUMABLE:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consumable"
    .end annotation
.end field

.field public static final enum NON_RENEWING_SUBSCRIPTION:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "non_renewing_subscription"
    .end annotation
.end field

.field public static final enum PERMANENT:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "permanent"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    const-string v2, "NON_RENEWING_SUBSCRIPTION"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;->NON_RENEWING_SUBSCRIPTION:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    const-string v2, "PERMANENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;->PERMANENT:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    const-string v2, "CONSUMABLE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;->CONSUMABLE:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;->$VALUES:[Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;
    .locals 1

    const-class v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    return-object p0
.end method

.method public static values()[Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;
    .locals 1

    sget-object v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;->$VALUES:[Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    invoke-virtual {v0}, [Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$SubscriptionClass;

    return-object v0
.end method
