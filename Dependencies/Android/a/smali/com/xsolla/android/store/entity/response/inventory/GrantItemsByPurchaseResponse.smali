.class public final Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse;
.super Ljava/lang/Object;
.source "GrantItemsByPurchaseResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;,
        Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Platform;
    }
.end annotation


# instance fields
.field private final count:I

.field private final operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "operations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse;->count:I

    iput-object p2, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse;->operations:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse;->count:I

    return v0
.end method

.method public final getOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse$Operation;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/xsolla/android/store/entity/response/inventory/GrantItemsByPurchaseResponse;->operations:Ljava/util/List;

    return-object v0
.end method
