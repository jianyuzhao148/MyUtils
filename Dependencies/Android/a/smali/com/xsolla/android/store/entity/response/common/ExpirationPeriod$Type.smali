.class public final enum Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;
.super Ljava/lang/Enum;
.source "ExpirationPeriod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

.field public static final enum DAY:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "day"
    .end annotation
.end field

.field public static final enum HOUR:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hour"
    .end annotation
.end field

.field public static final enum MINUTE:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minute"
    .end annotation
.end field

.field public static final enum MONTH:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "month"
    .end annotation
.end field

.field public static final enum WEEK:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "week"
    .end annotation
.end field

.field public static final enum YEAR:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "year"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    new-instance v1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    const-string v2, "MINUTE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;->MINUTE:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    const-string v2, "HOUR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;->HOUR:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    const-string v2, "DAY"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;->DAY:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    const-string v2, "WEEK"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;->WEEK:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    const-string v2, "MONTH"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;->MONTH:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    const-string v2, "YEAR"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;->YEAR:Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;->$VALUES:[Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;
    .locals 1

    const-class v0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    return-object p0
.end method

.method public static values()[Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;
    .locals 1

    sget-object v0, Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;->$VALUES:[Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    invoke-virtual {v0}, [Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xsolla/android/store/entity/response/common/ExpirationPeriod$Type;

    return-object v0
.end method
