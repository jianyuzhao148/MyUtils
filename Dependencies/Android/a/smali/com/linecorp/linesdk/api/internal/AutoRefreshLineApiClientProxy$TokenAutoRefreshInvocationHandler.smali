.class Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;
.super Ljava/lang/Object;
.source "AutoRefreshLineApiClientProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenAutoRefreshInvocationHandler"
.end annotation


# instance fields
.field private final autoRefreshStateCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final target:Lcom/linecorp/linesdk/api/LineApiClient;


# direct methods
.method private constructor <init>(Lcom/linecorp/linesdk/api/LineApiClient;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->target:Lcom/linecorp/linesdk/api/LineApiClient;

    .line 45
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->autoRefreshStateCache:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/api/LineApiClient;Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;-><init>(Lcom/linecorp/linesdk/api/LineApiClient;)V

    return-void
.end method

.method private isAutoRefreshEnabled(Ljava/lang/reflect/Method;)Z
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->autoRefreshStateCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->target:Lcom/linecorp/linesdk/api/LineApiClient;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 95
    :try_start_0
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-class v4, Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->autoRefreshStateCache:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 106
    :catch_0
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->autoRefreshStateCache:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method private static shouldRefreshToken(Ljava/lang/Object;)Z
    .locals 2

    .line 74
    instance-of v0, p0, Lcom/linecorp/linesdk/LineApiResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 77
    :cond_0
    check-cast p0, Lcom/linecorp/linesdk/LineApiResponse;

    .line 78
    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiError;->getHttpResponseCode()I

    move-result p0

    const/16 v0, 0x191

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    :try_start_0
    iget-object p1, p0, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->target:Lcom/linecorp/linesdk/api/LineApiClient;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    invoke-direct {p0, p2}, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->isAutoRefreshEnabled(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->shouldRefreshToken(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->target:Lcom/linecorp/linesdk/api/LineApiClient;

    invoke-interface {v0}, Lcom/linecorp/linesdk/api/LineApiClient;->refreshAccessToken()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isNetworkError()Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p1, v0

    :cond_1
    return-object p1

    .line 67
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->target:Lcom/linecorp/linesdk/api/LineApiClient;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    return-object p1

    :catch_1
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method
