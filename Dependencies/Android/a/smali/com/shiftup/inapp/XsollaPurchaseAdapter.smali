.class public final Lcom/shiftup/inapp/XsollaPurchaseAdapter;
.super Lcom/shiftup/inapp/PurchaseAdapter;
.source "XsollaPurchaseAdapter.java"


# static fields
.field protected static final RC_LOGIN:I = 0x1389

.field private static final RC_PURCHASE:I = 0x1388

.field private static final XSOLLA_FAILURE:Ljava/lang/String; = "XSOLLA_FAIL"


# instance fields
.field private processingOrderId:I

.field private redirectHost:Ljava/lang/String;

.field private storeProjectId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "XSOLLA"

    .line 37
    invoke-direct {p0, v0}, Lcom/shiftup/inapp/PurchaseAdapter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static GetEmail()Ljava/lang/String;
    .locals 2

    .line 302
    invoke-static {}, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->IsJWTValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getJwt()Lcom/xsolla/android/login/jwt/JWT;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1}, Lcom/xsolla/android/login/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/xsolla/android/login/jwt/Claim;

    move-result-object v0

    invoke-interface {v0}, Lcom/xsolla/android/login/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static GetJWT()Ljava/lang/String;
    .locals 1

    .line 295
    invoke-static {}, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->IsJWTValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static IsJWTValid()Z
    .locals 1

    .line 309
    invoke-static {}, Lcom/xsolla/android/login/XLogin;->isTokenExpired()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static LogOut()V
    .locals 0

    .line 319
    invoke-static {}, Lcom/xsolla/android/login/XLogin;->logout()V

    return-void
.end method

.method public static RequestLogIn()V
    .locals 3

    .line 313
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 314
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x1389

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/shiftup/inapp/XsollaPurchaseAdapter;Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse$Item;)Lcom/google/gson/JsonObject;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->buildProductJsonData(Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse$Item;)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/shiftup/inapp/XsollaPurchaseAdapter;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->processingOrderId:I

    return p0
.end method

.method static synthetic access$102(Lcom/shiftup/inapp/XsollaPurchaseAdapter;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->processingOrderId:I

    return p1
.end method

.method private buildProductJsonData(Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse$Item;)Lcom/google/gson/JsonObject;
    .locals 6

    .line 108
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 109
    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse$Item;->getPrice()Lcom/xsolla/android/store/entity/response/common/Price;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/response/common/Price;->getCurrency()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {p1}, Lcom/xsolla/android/store/entity/response/common/Price;->getAmountDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 114
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "%.2f %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "price"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "currency"

    .line 115
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "decimal_price"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method private static native nativeOnXsollaLoginResponse(Z)V
.end method


# virtual methods
.method public FinalizePurchase(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "PurchaseAdapter"

    const-string v1, "There is no finalization step in xsolla."

    .line 129
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 130
    invoke-static {v0, p1}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnFinalizationResponse(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public GenericFinalizePurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "PurchaseAdapter"

    const-string p2, "There is no generic finalization step in xsolla."

    .line 283
    invoke-static {p1, p2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 284
    invoke-static {p1, p1}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnGenericFinalizationResponse(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public GenericPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string p1, "INVALID_RESPONSE"

    const-string v0, "Given json:"

    const-string v1, "PurchaseAdapter"

    const/4 v2, 0x0

    .line 137
    :try_start_0
    sget-object v3, Lcom/shiftup/inapp/PurchaseAdapter;->sGson:Lcom/google/gson/Gson;

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v3, p2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    const-string v4, "token"

    .line 139
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "order_id"

    .line 140
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v5

    const-string v6, "is_sandbox"

    .line 141
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    const-string v6, "Succeed to parse server response JSON"

    .line 143
    invoke-static {v1, v6}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "access token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "order ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iput v5, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->processingOrderId:I

    .line 149
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    .line 150
    invoke-static {v5}, Lcom/xsolla/android/payments/XPayments;->createIntentBuilder(Landroid/content/Context;)Lcom/xsolla/android/payments/XPayments$IntentBuilder;

    move-result-object v6

    new-instance v7, Lcom/xsolla/android/payments/data/AccessToken;

    invoke-direct {v7, v4}, Lcom/xsolla/android/payments/data/AccessToken;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v6, v7}, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->accessToken(Lcom/xsolla/android/payments/data/AccessToken;)Lcom/xsolla/android/payments/XPayments$IntentBuilder;

    .line 152
    invoke-virtual {v6, v3}, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->isSandbox(Z)Lcom/xsolla/android/payments/XPayments$IntentBuilder;

    iget-object v3, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->redirectHost:Ljava/lang/String;

    .line 153
    invoke-virtual {v6, v3}, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->redirectHost(Ljava/lang/String;)Lcom/xsolla/android/payments/XPayments$IntentBuilder;

    .line 154
    invoke-virtual {v6}, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x1388

    .line 156
    invoke-virtual {v5, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 166
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid json format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {v1, p2}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {p1, v2}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnGenericPurchaseResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v3

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid json syntax: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {v1, p2}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {p1, v2}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnGenericPurchaseResponse(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method protected GetSinglePurchaseData()Ljava/lang/String;
    .locals 2

    const-string v0, "PurchaseAdapter"

    const-string v1, "There is no purchase restoring logic in xsolla."

    .line 290
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public Initialize(Ljava/lang/String;)V
    .locals 5

    const-string v0, "INVALID_JSON"

    const-string v1, "PurchaseAdapter"

    .line 42
    :try_start_0
    sget-object v2, Lcom/shiftup/inapp/PurchaseAdapter;->sGson:Lcom/google/gson/Gson;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    const-string v3, "login_project_id"

    .line 44
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "store_project_id"

    .line 45
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    iput v4, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->storeProjectId:I

    const-string v4, "redirect"

    .line 46
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v4, "host"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->redirectHost:Ljava/lang/String;

    const-string v2, "Succeed to parse init JSON data"

    .line 48
    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "login project ID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "store project ID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->storeProjectId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "redirect host: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->redirectHost:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xsolla/android/login/XLogin;->init(Ljava/lang/String;Landroid/content/Context;Lcom/xsolla/android/login/XLogin$SocialConfig;)V

    .line 54
    iget v2, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->storeProjectId:I

    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xsolla/android/store/XStore;->init(ILjava/lang/String;)V

    .line 56
    invoke-static {v4}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnInitialize(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 65
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid json format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v1, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v0}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnInitialize(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v2

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid json syntax: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v1, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v0}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnInitialize(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public OnActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 p3, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1389

    const-string v2, "!"

    const-string v3, "PurchaseAdapter"

    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_1

    const-string p1, "Xsolla login succeed"

    .line 181
    invoke-static {v3, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Xsolla login failed with code "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_1
    iget p1, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->storeProjectId:I

    invoke-static {}, Lcom/xsolla/android/login/XLogin;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xsolla/android/store/XStore;->init(ILjava/lang/String;)V

    .line 188
    invoke-static {v0}, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->nativeOnXsollaLoginResponse(Z)V

    goto :goto_3

    :cond_2
    const/16 v1, 0x1388

    if-ne p1, v1, :cond_5

    if-nez v0, :cond_4

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Purchase failed with code "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iput p3, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->processingOrderId:I

    if-nez p2, :cond_3

    const-string p1, "CANCELED"

    goto :goto_2

    :cond_3
    const-string p1, "UNKNOWN_ERROR"

    :goto_2
    const/4 p2, 0x0

    .line 200
    invoke-static {p1, p2}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnPurchaseResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 207
    :cond_4
    iget p1, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter;->processingOrderId:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Result code is OK, checking status of order "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance p2, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;

    invoke-direct {p2, p0, p1}, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;-><init>(Lcom/shiftup/inapp/XsollaPurchaseAdapter;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/xsolla/android/store/XStore;->getOrder(Ljava/lang/String;Lcom/xsolla/android/store/api/XStoreCallback;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public Purchase(Ljava/lang/String;)Z
    .locals 1

    const-string p1, "PurchaseAdapter"

    const-string v0, "Non-generic purchase is not supported for xsolla."

    .line 123
    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public QueryProductData([Ljava/lang/String;)V
    .locals 1

    .line 74
    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "{}"

    .line 76
    invoke-static {p1, v0}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnProductDataResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    new-instance p1, Lcom/shiftup/inapp/XsollaPurchaseAdapter$1;

    invoke-direct {p1, p0}, Lcom/shiftup/inapp/XsollaPurchaseAdapter$1;-><init>(Lcom/shiftup/inapp/XsollaPurchaseAdapter;)V

    invoke-static {p1}, Lcom/xsolla/android/store/XStore;->getVirtualItems(Lcom/xsolla/android/store/api/XStoreCallback;)V

    return-void
.end method
