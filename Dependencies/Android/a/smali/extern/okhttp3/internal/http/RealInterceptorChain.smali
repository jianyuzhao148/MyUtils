.class public final Lextern/okhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lextern/okhttp3/Interceptor$Chain;


# instance fields
.field private final call:Lextern/okhttp3/Call;

.field private calls:I

.field private final connectTimeout:I

.field private final connection:Lextern/okhttp3/internal/connection/RealConnection;

.field private final eventListener:Lextern/okhttp3/EventListener;

.field private final httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lextern/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final readTimeout:I

.field private final request:Lextern/okhttp3/Request;

.field private final streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

.field private final writeTimeout:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/internal/connection/RealConnection;ILextern/okhttp3/Request;Lextern/okhttp3/Call;Lextern/okhttp3/EventListener;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lextern/okhttp3/Interceptor;",
            ">;",
            "Lextern/okhttp3/internal/connection/StreamAllocation;",
            "Lextern/okhttp3/internal/http/HttpCodec;",
            "Lextern/okhttp3/internal/connection/RealConnection;",
            "I",
            "Lextern/okhttp3/Request;",
            "Lextern/okhttp3/Call;",
            "Lextern/okhttp3/EventListener;",
            "III)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 55
    iput-object p4, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connection:Lextern/okhttp3/internal/connection/RealConnection;

    .line 56
    iput-object p2, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    .line 57
    iput-object p3, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

    .line 58
    iput p5, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    .line 59
    iput-object p6, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->request:Lextern/okhttp3/Request;

    .line 60
    iput-object p7, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->call:Lextern/okhttp3/Call;

    .line 61
    iput-object p8, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->eventListener:Lextern/okhttp3/EventListener;

    .line 62
    iput p9, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    .line 63
    iput p10, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    .line 64
    iput p11, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    return-void
.end method


# virtual methods
.method public call()Lextern/okhttp3/Call;
    .locals 1

    .line 110
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->call:Lextern/okhttp3/Call;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    .line 72
    iget v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    return v0
.end method

.method public connection()Lextern/okhttp3/Connection;
    .locals 1

    .line 68
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connection:Lextern/okhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public eventListener()Lextern/okhttp3/EventListener;
    .locals 1

    .line 114
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->eventListener:Lextern/okhttp3/EventListener;

    return-object v0
.end method

.method public httpStream()Lextern/okhttp3/internal/http/HttpCodec;
    .locals 1

    .line 106
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

    return-object v0
.end method

.method public proceed(Lextern/okhttp3/Request;)Lextern/okhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

    iget-object v2, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connection:Lextern/okhttp3/internal/connection/RealConnection;

    invoke-virtual {p0, p1, v0, v1, v2}, Lextern/okhttp3/internal/http/RealInterceptorChain;->proceed(Lextern/okhttp3/Request;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/internal/connection/RealConnection;)Lextern/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public proceed(Lextern/okhttp3/Request;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/internal/connection/RealConnection;)Lextern/okhttp3/Response;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 127
    iget v1, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v2, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 129
    iget v1, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->calls:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 132
    iget-object v1, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_1

    iget-object v1, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connection:Lextern/okhttp3/internal/connection/RealConnection;

    invoke-virtual/range {p1 .. p1}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v1, v4}, Lextern/okhttp3/internal/connection/RealConnection;->supportsUrl(Lextern/okhttp3/HttpUrl;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v5, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    sub-int/2addr v5, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_1
    :goto_0
    iget-object v1, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

    const-string v4, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->calls:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    .line 139
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v6, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    sub-int/2addr v6, v2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_3
    :goto_1
    new-instance v1, Lextern/okhttp3/internal/http/RealInterceptorChain;

    iget-object v6, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v5, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v10, v5, 0x1

    iget-object v12, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->call:Lextern/okhttp3/Call;

    iget-object v13, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->eventListener:Lextern/okhttp3/EventListener;

    iget v14, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v15, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    iget v11, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    move-object v5, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v16, v11

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v16}, Lextern/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/internal/connection/RealConnection;ILextern/okhttp3/Request;Lextern/okhttp3/Call;Lextern/okhttp3/EventListener;III)V

    .line 147
    iget-object v5, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v6, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lextern/okhttp3/Interceptor;

    .line 148
    invoke-interface {v5, v1}, Lextern/okhttp3/Interceptor;->intercept(Lextern/okhttp3/Interceptor$Chain;)Lextern/okhttp3/Response;

    move-result-object v6

    if-eqz p3, :cond_5

    .line 151
    iget v7, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/2addr v7, v2

    iget-object v8, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget v1, v1, Lextern/okhttp3/internal/http/RealInterceptorChain;->calls:I

    if-ne v1, v2, :cond_4

    goto :goto_2

    .line 152
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    const-string v1, "interceptor "

    if-eqz v6, :cond_7

    .line 161
    invoke-virtual {v6}, Lextern/okhttp3/Response;->body()Lextern/okhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_6

    return-object v6

    .line 162
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a response with no body"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_7
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public readTimeoutMillis()I
    .locals 1

    .line 82
    iget v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    return v0
.end method

.method public request()Lextern/okhttp3/Request;
    .locals 1

    .line 118
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->request:Lextern/okhttp3/Request;

    return-object v0
.end method

.method public streamAllocation()Lextern/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .line 102
    iget-object v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method

.method public withConnectTimeout(ILjava/util/concurrent/TimeUnit;)Lextern/okhttp3/Interceptor$Chain;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-long v1, v1

    const-string v3, "timeout"

    move-object/from16 v4, p2

    .line 76
    invoke-static {v3, v1, v2, v4}, Lextern/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v13

    .line 77
    new-instance v1, Lextern/okhttp3/internal/http/RealInterceptorChain;

    iget-object v5, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget-object v6, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    iget-object v7, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

    iget-object v8, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connection:Lextern/okhttp3/internal/connection/RealConnection;

    iget v9, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v10, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->request:Lextern/okhttp3/Request;

    iget-object v11, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->call:Lextern/okhttp3/Call;

    iget-object v12, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->eventListener:Lextern/okhttp3/EventListener;

    iget v14, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    iget v15, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    move-object v4, v1

    invoke-direct/range {v4 .. v15}, Lextern/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/internal/connection/RealConnection;ILextern/okhttp3/Request;Lextern/okhttp3/Call;Lextern/okhttp3/EventListener;III)V

    return-object v1
.end method

.method public withReadTimeout(ILjava/util/concurrent/TimeUnit;)Lextern/okhttp3/Interceptor$Chain;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-long v1, v1

    const-string v3, "timeout"

    move-object/from16 v4, p2

    .line 86
    invoke-static {v3, v1, v2, v4}, Lextern/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v14

    .line 87
    new-instance v1, Lextern/okhttp3/internal/http/RealInterceptorChain;

    iget-object v5, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget-object v6, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    iget-object v7, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

    iget-object v8, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connection:Lextern/okhttp3/internal/connection/RealConnection;

    iget v9, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v10, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->request:Lextern/okhttp3/Request;

    iget-object v11, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->call:Lextern/okhttp3/Call;

    iget-object v12, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->eventListener:Lextern/okhttp3/EventListener;

    iget v13, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v15, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    move-object v4, v1

    invoke-direct/range {v4 .. v15}, Lextern/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/internal/connection/RealConnection;ILextern/okhttp3/Request;Lextern/okhttp3/Call;Lextern/okhttp3/EventListener;III)V

    return-object v1
.end method

.method public withWriteTimeout(ILjava/util/concurrent/TimeUnit;)Lextern/okhttp3/Interceptor$Chain;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-long v1, v1

    const-string v3, "timeout"

    move-object/from16 v4, p2

    .line 96
    invoke-static {v3, v1, v2, v4}, Lextern/okhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v15

    .line 97
    new-instance v1, Lextern/okhttp3/internal/http/RealInterceptorChain;

    iget-object v5, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget-object v6, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lextern/okhttp3/internal/connection/StreamAllocation;

    iget-object v7, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lextern/okhttp3/internal/http/HttpCodec;

    iget-object v8, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connection:Lextern/okhttp3/internal/connection/RealConnection;

    iget v9, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v10, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->request:Lextern/okhttp3/Request;

    iget-object v11, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->call:Lextern/okhttp3/Call;

    iget-object v12, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->eventListener:Lextern/okhttp3/EventListener;

    iget v13, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v14, v0, Lextern/okhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    move-object v4, v1

    invoke-direct/range {v4 .. v15}, Lextern/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lextern/okhttp3/internal/connection/StreamAllocation;Lextern/okhttp3/internal/http/HttpCodec;Lextern/okhttp3/internal/connection/RealConnection;ILextern/okhttp3/Request;Lextern/okhttp3/Call;Lextern/okhttp3/EventListener;III)V

    return-object v1
.end method

.method public writeTimeoutMillis()I
    .locals 1

    .line 92
    iget v0, p0, Lextern/okhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    return v0
.end method
