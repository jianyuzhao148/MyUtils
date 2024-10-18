.class Lcom/shiftup/inapp/XsollaPurchaseAdapter$1;
.super Lcom/xsolla/android/store/api/XStoreCallback;
.source "XsollaPurchaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/inapp/XsollaPurchaseAdapter;->QueryProductData([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xsolla/android/store/api/XStoreCallback<",
        "Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/inapp/XsollaPurchaseAdapter;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaPurchaseAdapter;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter$1;->this$0:Lcom/shiftup/inapp/XsollaPurchaseAdapter;

    invoke-direct {p0}, Lcom/xsolla/android/store/api/XStoreCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get virtual item list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PurchaseAdapter"

    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "XSOLLA_FAIL"

    const/4 v0, 0x0

    .line 102
    invoke-static {p1, v0}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnProductDataResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse;)V
    .locals 4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " virtual item(s)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PurchaseAdapter"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 90
    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse$Item;

    .line 91
    invoke-virtual {v1}, Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse$Item;->getSku()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter$1;->this$0:Lcom/shiftup/inapp/XsollaPurchaseAdapter;

    invoke-static {v3, v1}, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->access$000(Lcom/shiftup/inapp/XsollaPurchaseAdapter;Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse$Item;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 94
    sget-object v1, Lcom/shiftup/inapp/PurchaseAdapter;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnProductDataResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse;

    invoke-virtual {p0, p1}, Lcom/shiftup/inapp/XsollaPurchaseAdapter$1;->onSuccess(Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse;)V

    return-void
.end method
