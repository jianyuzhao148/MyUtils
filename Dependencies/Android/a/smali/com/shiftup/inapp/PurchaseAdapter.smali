.class public Lcom/shiftup/inapp/PurchaseAdapter;
.super Ljava/lang/Object;
.source "PurchaseAdapter.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "PurchaseAdapter"

.field protected static sGson:Lcom/google/gson/Gson;

.field protected static sInstance:Lcom/shiftup/inapp/PurchaseAdapter;


# instance fields
.field private final storeKind:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/shiftup/inapp/PurchaseAdapter;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/shiftup/inapp/PurchaseAdapter;->storeKind:Ljava/lang/String;

    return-void
.end method

.method public static GetStoreKind()Ljava/lang/String;
    .locals 1

    .line 148
    sget-object v0, Lcom/shiftup/inapp/PurchaseAdapter;->sInstance:Lcom/shiftup/inapp/PurchaseAdapter;

    iget-object v0, v0, Lcom/shiftup/inapp/PurchaseAdapter;->storeKind:Ljava/lang/String;

    return-object v0
.end method

.method public static HandleActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/shiftup/inapp/PurchaseAdapter;->sInstance:Lcom/shiftup/inapp/PurchaseAdapter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/shiftup/inapp/PurchaseAdapter;->OnActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method private static RequestFinalizeGenericPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 239
    sget-object v0, Lcom/shiftup/inapp/PurchaseAdapter;->sInstance:Lcom/shiftup/inapp/PurchaseAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/shiftup/inapp/PurchaseAdapter;->GenericFinalizePurchase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static RequestFinalizePurchase(Ljava/lang/String;)Z
    .locals 1

    .line 235
    sget-object v0, Lcom/shiftup/inapp/PurchaseAdapter;->sInstance:Lcom/shiftup/inapp/PurchaseAdapter;

    invoke-virtual {v0, p0}, Lcom/shiftup/inapp/PurchaseAdapter;->FinalizePurchase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static RequestGenericPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 231
    sget-object v0, Lcom/shiftup/inapp/PurchaseAdapter;->sInstance:Lcom/shiftup/inapp/PurchaseAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/shiftup/inapp/PurchaseAdapter;->GenericPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static RequestInit(Ljava/lang/String;)V
    .locals 1

    .line 212
    sget-object v0, Lcom/shiftup/inapp/PurchaseAdapter;->sInstance:Lcom/shiftup/inapp/PurchaseAdapter;

    invoke-virtual {v0, p0}, Lcom/shiftup/inapp/PurchaseAdapter;->Initialize(Ljava/lang/String;)V

    return-void
.end method

.method private static RequestProductData(Ljava/lang/String;)V
    .locals 2

    .line 216
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 217
    const-class v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 219
    sget-object v0, Lcom/shiftup/inapp/PurchaseAdapter;->sInstance:Lcom/shiftup/inapp/PurchaseAdapter;

    invoke-virtual {v0, p0}, Lcom/shiftup/inapp/PurchaseAdapter;->QueryProductData([Ljava/lang/String;)V

    return-void
.end method

.method private static RequestPurchase(Ljava/lang/String;)Z
    .locals 1

    .line 227
    sget-object v0, Lcom/shiftup/inapp/PurchaseAdapter;->sInstance:Lcom/shiftup/inapp/PurchaseAdapter;

    invoke-virtual {v0, p0}, Lcom/shiftup/inapp/PurchaseAdapter;->Purchase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static RetrievePurchaseData()Ljava/lang/String;
    .locals 1

    .line 223
    sget-object v0, Lcom/shiftup/inapp/PurchaseAdapter;->sInstance:Lcom/shiftup/inapp/PurchaseAdapter;

    invoke-virtual {v0}, Lcom/shiftup/inapp/PurchaseAdapter;->GetSinglePurchaseData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SetAdapter(Lcom/shiftup/inapp/PurchaseAdapter;)V
    .locals 0

    .line 140
    sput-object p0, Lcom/shiftup/inapp/PurchaseAdapter;->sInstance:Lcom/shiftup/inapp/PurchaseAdapter;

    return-void
.end method

.method protected static native nativeOnFinalizationResponse(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected static native nativeOnGenericFinalizationResponse(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected static native nativeOnGenericPurchaseResponse(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected static native nativeOnInitialize(Ljava/lang/String;)V
.end method

.method protected static native nativeOnProductDataResponse(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected static native nativeOnPurchaseResponse(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public FinalizePurchase(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public GenericFinalizePurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public GenericPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected GetSinglePurchaseData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Initialize(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public OnActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public Purchase(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public QueryProductData([Ljava/lang/String;)V
    .locals 0

    return-void
.end method
