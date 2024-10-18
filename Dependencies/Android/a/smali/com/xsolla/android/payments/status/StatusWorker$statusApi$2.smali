.class final Lcom/xsolla/android/payments/status/StatusWorker$statusApi$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StatusWorker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/payments/status/StatusWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/xsolla/android/payments/status/StatusApi;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatusWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatusWorker.kt\ncom/xsolla/android/payments/status/StatusWorker$statusApi$2\n*L\n1#1,145:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/xsolla/android/payments/status/StatusWorker$statusApi$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xsolla/android/payments/status/StatusWorker$statusApi$2;

    invoke-direct {v0}, Lcom/xsolla/android/payments/status/StatusWorker$statusApi$2;-><init>()V

    sput-object v0, Lcom/xsolla/android/payments/status/StatusWorker$statusApi$2;->INSTANCE:Lcom/xsolla/android/payments/status/StatusWorker$statusApi$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/xsolla/android/payments/status/StatusApi;
    .locals 3

    .line 33
    sget-object v0, Lcom/xsolla/android/payments/status/StatusWorker$statusApi$2$interceptor$1;->INSTANCE:Lcom/xsolla/android/payments/status/StatusWorker$statusApi$2$interceptor$1;

    .line 51
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 53
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 56
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "https://api.xsolla.com"

    .line 57
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 58
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 59
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 60
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 62
    const-class v1, Lcom/xsolla/android/payments/status/StatusApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xsolla/android/payments/status/StatusApi;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/xsolla/android/payments/status/StatusWorker$statusApi$2;->invoke()Lcom/xsolla/android/payments/status/StatusApi;

    move-result-object v0

    return-object v0
.end method
