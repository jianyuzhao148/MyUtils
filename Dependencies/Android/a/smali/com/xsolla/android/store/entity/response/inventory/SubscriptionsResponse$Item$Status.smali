.class public final enum Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;
.super Ljava/lang/Enum;
.source "SubscriptionsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

.field public static final enum ACTIVE:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "active"
    .end annotation
.end field

.field public static final enum EXPIRED:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expired"
    .end annotation
.end field

.field public static final enum NONE:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "none"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;->NONE:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    const-string v2, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;->ACTIVE:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    const-string v2, "EXPIRED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;->EXPIRED:Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;->$VALUES:[Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;
    .locals 1

    const-class v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    return-object p0
.end method

.method public static values()[Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;
    .locals 1

    sget-object v0, Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;->$VALUES:[Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    invoke-virtual {v0}, [Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xsolla/android/store/entity/response/inventory/SubscriptionsResponse$Item$Status;

    return-object v0
.end method
