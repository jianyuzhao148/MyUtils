.class Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;
.super Lcom/xsolla/android/store/api/XStoreCallback;
.source "XsollaPurchaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/inapp/XsollaPurchaseAdapter;->OnActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xsolla/android/store/api/XStoreCallback<",
        "Lcom/xsolla/android/store/entity/response/order/OrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/inapp/XsollaPurchaseAdapter;

.field private thisCallback:Lcom/xsolla/android/store/api/XStoreCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xsolla/android/store/api/XStoreCallback<",
            "Lcom/xsolla/android/store/entity/response/order/OrderResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$strOrderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaPurchaseAdapter;Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;->this$0:Lcom/shiftup/inapp/XsollaPurchaseAdapter;

    iput-object p2, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;->val$strOrderId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xsolla/android/store/api/XStoreCallback;-><init>()V

    .line 213
    iput-object p0, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;->thisCallback:Lcom/xsolla/android/store/api/XStoreCallback;

    return-void
.end method

.method static synthetic access$200(Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;)Lcom/xsolla/android/store/api/XStoreCallback;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;->thisCallback:Lcom/xsolla/android/store/api/XStoreCallback;

    return-object p0
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;)V
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get order status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PurchaseAdapter"

    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Temporary failure"

    .line 255
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v0, "Payment was success but the payment server is failing. Do you want to retry?"

    .line 257
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2$2;

    invoke-direct {v0, p0}, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2$2;-><init>(Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;)V

    const-string v1, "Yes"

    .line 258
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2$1;

    invoke-direct {v0, p0}, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2$1;-><init>(Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;)V

    const-string v1, "No"

    .line 264
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 272
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 274
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/shiftup/util/SoftNavigationManager;->UpdateSoftNavigation(Landroid/view/View;)V

    .line 275
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected onSuccess(Lcom/xsolla/android/store/entity/response/order/OrderResponse;)V
    .locals 5

    .line 217
    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->getStatus()Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Order status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PurchaseAdapter"

    invoke-static {v2, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v1, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;->DONE:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;->PAID:Lcom/xsolla/android/store/entity/response/order/OrderResponse$Status;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Order is not charged!"

    .line 245
    invoke-static {v2, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ORDER_NOT_CHARGED"

    .line 246
    invoke-static {p1, v3}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnGenericPurchaseResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    :goto_0
    const-string v0, "Order is charged."

    .line 223
    invoke-static {v2, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/response/order/OrderResponse;->getContent()Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Content;->getPrice()Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;

    move-result-object p1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Order price: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->getAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Order currency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"order_id\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;->this$0:Lcom/shiftup/inapp/XsollaPurchaseAdapter;

    invoke-static {v1}, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->access$100(Lcom/shiftup/inapp/XsollaPurchaseAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"jwt\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"decimal_price\":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->getAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"currency\":\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/response/order/OrderResponse$Price;->getCurrency()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON Data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;->this$0:Lcom/shiftup/inapp/XsollaPurchaseAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->access$102(Lcom/shiftup/inapp/XsollaPurchaseAdapter;I)I

    .line 242
    invoke-static {v3, p1}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnGenericPurchaseResponse(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 211
    check-cast p1, Lcom/xsolla/android/store/entity/response/order/OrderResponse;

    invoke-virtual {p0, p1}, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;->onSuccess(Lcom/xsolla/android/store/entity/response/order/OrderResponse;)V

    return-void
.end method
