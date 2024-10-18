.class public Lcom/xsolla/android/store/XStore;
.super Ljava/lang/Object;
.source "XStore.java"


# static fields
.field private static instance:Lcom/xsolla/android/store/XStore;


# instance fields
.field private requestExecutor:Lcom/xsolla/android/store/RequestExecutor;


# direct methods
.method private constructor <init>(Lcom/xsolla/android/store/RequestExecutor;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/xsolla/android/store/XStore;->requestExecutor:Lcom/xsolla/android/store/RequestExecutor;

    return-void
.end method

.method private static getInstance()Lcom/xsolla/android/store/XStore;
    .locals 2

    .line 48
    sget-object v0, Lcom/xsolla/android/store/XStore;->instance:Lcom/xsolla/android/store/XStore;

    if-eqz v0, :cond_0

    return-object v0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XStore SDK not initialized. You should call \"XStore.init(project-id, token)\" first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getOrder(Ljava/lang/String;Lcom/xsolla/android/store/api/XStoreCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xsolla/android/store/api/XStoreCallback<",
            "Lcom/xsolla/android/store/entity/response/order/OrderResponse;",
            ">;)V"
        }
    .end annotation

    .line 355
    invoke-static {}, Lcom/xsolla/android/store/XStore;->getRequestExecutor()Lcom/xsolla/android/store/RequestExecutor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xsolla/android/store/RequestExecutor;->getOrder(Ljava/lang/String;Lcom/xsolla/android/store/api/XStoreCallback;)V

    return-void
.end method

.method private static getRequestExecutor()Lcom/xsolla/android/store/RequestExecutor;
    .locals 1

    .line 55
    invoke-static {}, Lcom/xsolla/android/store/XStore;->getInstance()Lcom/xsolla/android/store/XStore;

    move-result-object v0

    iget-object v0, v0, Lcom/xsolla/android/store/XStore;->requestExecutor:Lcom/xsolla/android/store/RequestExecutor;

    return-object v0
.end method

.method public static getVirtualItems(Lcom/xsolla/android/store/api/XStoreCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xsolla/android/store/api/XStoreCallback<",
            "Lcom/xsolla/android/store/entity/response/items/VirtualItemsResponse;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-static {}, Lcom/xsolla/android/store/XStore;->getRequestExecutor()Lcom/xsolla/android/store/RequestExecutor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/xsolla/android/store/RequestExecutor;->getVirtualItems(Lcom/xsolla/android/store/entity/request/items/ItemsRequestOptions;Lcom/xsolla/android/store/api/XStoreCallback;)V

    return-void
.end method

.method public static init(ILjava/lang/String;)V
    .locals 2

    .line 60
    new-instance v0, Lcom/xsolla/android/store/XStore$1;

    invoke-direct {v0, p1}, Lcom/xsolla/android/store/XStore$1;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 86
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://store.xsolla.com"

    .line 87
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 88
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 89
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 90
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 93
    const-class v0, Lcom/xsolla/android/store/api/StoreApi;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xsolla/android/store/api/StoreApi;

    .line 95
    new-instance v0, Lcom/xsolla/android/store/RequestExecutor;

    invoke-direct {v0, p0, p1}, Lcom/xsolla/android/store/RequestExecutor;-><init>(ILcom/xsolla/android/store/api/StoreApi;)V

    .line 96
    new-instance p0, Lcom/xsolla/android/store/XStore;

    invoke-direct {p0, v0}, Lcom/xsolla/android/store/XStore;-><init>(Lcom/xsolla/android/store/RequestExecutor;)V

    sput-object p0, Lcom/xsolla/android/store/XStore;->instance:Lcom/xsolla/android/store/XStore;

    return-void
.end method
