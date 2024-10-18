.class Lcom/xsolla/android/store/RequestExecutor;
.super Ljava/lang/Object;
.source "RequestExecutor.java"


# instance fields
.field private projectId:I

.field private storeApi:Lcom/xsolla/android/store/api/StoreApi;


# direct methods
.method public constructor <init>(ILcom/xsolla/android/store/api/StoreApi;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/xsolla/android/store/RequestExecutor;->projectId:I

    .line 31
    iput-object p2, p0, Lcom/xsolla/android/store/RequestExecutor;->storeApi:Lcom/xsolla/android/store/api/StoreApi;

    return-void
.end method


# virtual methods
.method public getOrder(Ljava/lang/String;Lcom/xsolla/android/store/api/XStoreCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xsolla/android/store/api/XStoreCallback<",
            "Lcom/xsolla/android/store/entity/response/order/OrderResponse;",
            ">;)V"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/xsolla/android/store/RequestExecutor;->storeApi:Lcom/xsolla/android/store/api/StoreApi;

    iget v1, p0, Lcom/xsolla/android/store/RequestExecutor;->projectId:I

    invoke-interface {v0, v1, p1}, Lcom/xsolla/android/store/api/StoreApi;->getOrder(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getVirtualItems(Lcom/xsolla/android/store/entity/request/items/ItemsRequestOptions;Lcom/xsolla/android/store/api/XStoreCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xsolla/android/store/entity/request/items/ItemsRequestOptions;",
            "Lcom/xsolla/android/store/api/XStoreCallback<",
            "Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse;",
            ">;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xsolla/android/store/RequestExecutor;->storeApi:Lcom/xsolla/android/store/api/StoreApi;

    iget v1, p0, Lcom/xsolla/android/store/RequestExecutor;->projectId:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/request/items/ItemsRequestOptions;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/request/items/ItemsRequestOptions;->getOffset()Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/request/items/ItemsRequestOptions;->getLocale()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    if-eqz p1, :cond_3

    .line 40
    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/request/items/ItemsRequestOptions;->getAdditionalFields()Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v2

    :goto_3
    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p1

    .line 35
    invoke-interface/range {v0 .. v5}, Lcom/xsolla/android/store/api/StoreApi;->getVirtualItems(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lretrofit2/Call;

    move-result-object p1

    .line 41
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
