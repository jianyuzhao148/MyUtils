.class public final Lextern/okhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/internal/http2/Http2Connection$Listener;,
        Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;,
        Lextern/okhttp3/internal/http2/Http2Connection$Builder;,
        Lextern/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;,
        Lextern/okhttp3/internal/http2/Http2Connection$PingRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final AWAIT_PING:I = 0x3

.field static final DEGRADED_PING:I = 0x2

.field static final DEGRADED_PONG_TIMEOUT_NS:J = 0x3b9aca00L

.field static final INTERVAL_PING:I = 0x1

.field static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final listenerExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private awaitPingsSent:J

.field private awaitPongsReceived:J

.field bytesLeftInWriteWindow:J

.field final client:Z

.field final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private degradedPingsSent:J

.field private degradedPongDeadlineNs:J

.field private degradedPongsReceived:J

.field final hostname:Ljava/lang/String;

.field private intervalPingsSent:J

.field private intervalPongsReceived:J

.field lastGoodStreamId:I

.field final listener:Lextern/okhttp3/internal/http2/Http2Connection$Listener;

.field nextStreamId:I

.field okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

.field final peerSettings:Lextern/okhttp3/internal/http2/Settings;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field final pushObserver:Lextern/okhttp3/internal/http2/PushObserver;

.field final readerRunnable:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lextern/okhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final writer:Lextern/okhttp3/internal/http2/Http2Writer;

.field private final writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 84
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    const-string v7, "OkHttp Http2Connection"

    .line 86
    invoke-static {v7, v0}, Lextern/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lextern/okhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lextern/okhttp3/internal/http2/Http2Connection$Builder;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 112
    iput-wide v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    .line 113
    iput-wide v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    .line 114
    iput-wide v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    .line 115
    iput-wide v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    .line 116
    iput-wide v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    .line 117
    iput-wide v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    .line 120
    iput-wide v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->degradedPongDeadlineNs:J

    .line 127
    iput-wide v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 136
    new-instance v2, Lextern/okhttp3/internal/http2/Settings;

    invoke-direct {v2}, Lextern/okhttp3/internal/http2/Settings;-><init>()V

    iput-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

    .line 140
    new-instance v2, Lextern/okhttp3/internal/http2/Settings;

    invoke-direct {v2}, Lextern/okhttp3/internal/http2/Settings;-><init>()V

    iput-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    .line 902
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 149
    iget-object v2, v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lextern/okhttp3/internal/http2/PushObserver;

    iput-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->pushObserver:Lextern/okhttp3/internal/http2/PushObserver;

    .line 150
    iget-boolean v2, v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    iput-boolean v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->client:Z

    .line 151
    iget-object v2, v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lextern/okhttp3/internal/http2/Http2Connection$Listener;

    iput-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->listener:Lextern/okhttp3/internal/http2/Http2Connection$Listener;

    .line 153
    iget-boolean v2, v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    iput v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 154
    iget-boolean v2, v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v2, :cond_1

    .line 155
    iget v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/2addr v2, v3

    iput v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 162
    :cond_1
    iget-boolean v2, v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    const/4 v3, 0x7

    if-eqz v2, :cond_2

    .line 163
    iget-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

    const/high16 v5, 0x1000000

    invoke-virtual {v2, v3, v5}, Lextern/okhttp3/internal/http2/Settings;->set(II)Lextern/okhttp3/internal/http2/Settings;

    .line 166
    :cond_2
    iget-object v2, v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    iput-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    .line 168
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "OkHttp %s Writer"

    .line 169
    invoke-static {v6, v5}, Lextern/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lextern/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 170
    iget v2, v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    if-eqz v2, :cond_3

    .line 171
    iget-object v8, v0, Lextern/okhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lextern/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;

    invoke-direct {v9, v0}, Lextern/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;)V

    iget v2, v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    int-to-long v10, v2

    iget v2, v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    int-to-long v12, v2

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v8 .. v14}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 176
    :cond_3
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-wide/16 v18, 0x3c

    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v21, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v21 .. v21}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v6, v5, v7

    const-string v6, "OkHttp %s Push Observer"

    .line 178
    invoke-static {v6, v5}, Lextern/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lextern/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v22

    move-object v15, v2

    invoke-direct/range {v15 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 179
    iget-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    const v4, 0xffff

    invoke-virtual {v2, v3, v4}, Lextern/okhttp3/internal/http2/Settings;->set(II)Lextern/okhttp3/internal/http2/Settings;

    .line 180
    iget-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    const/4 v3, 0x5

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Lextern/okhttp3/internal/http2/Settings;->set(II)Lextern/okhttp3/internal/http2/Settings;

    .line 181
    iget-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v2}, Lextern/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 182
    iget-object v2, v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    .line 183
    new-instance v2, Lextern/okhttp3/internal/http2/Http2Writer;

    iget-object v3, v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->sink:Lextern/okio/BufferedSink;

    iget-boolean v4, v0, Lextern/okhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v2, v3, v4}, Lextern/okhttp3/internal/http2/Http2Writer;-><init>(Lextern/okio/BufferedSink;Z)V

    iput-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    .line 185
    new-instance v2, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v3, Lextern/okhttp3/internal/http2/Http2Reader;

    iget-object v1, v1, Lextern/okhttp3/internal/http2/Http2Connection$Builder;->source:Lextern/okio/BufferedSource;

    iget-boolean v4, v0, Lextern/okhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v3, v1, v4}, Lextern/okhttp3/internal/http2/Http2Reader;-><init>(Lextern/okio/BufferedSource;Z)V

    invoke-direct {v2, v0, v3}, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Lextern/okhttp3/internal/http2/Http2Reader;)V

    iput-object v2, v0, Lextern/okhttp3/internal/http2/Http2Connection;->readerRunnable:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    return-void
.end method

.method static synthetic access$000(Lextern/okhttp3/internal/http2/Http2Connection;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Http2Connection;->failConnection()V

    return-void
.end method

.method static synthetic access$100(Lextern/okhttp3/internal/http2/Http2Connection;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    return-wide v0
.end method

.method static synthetic access$108(Lextern/okhttp3/internal/http2/Http2Connection;)J
    .locals 4

    .line 59
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    return-wide v0
.end method

.method static synthetic access$200(Lextern/okhttp3/internal/http2/Http2Connection;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    return-wide v0
.end method

.method static synthetic access$208(Lextern/okhttp3/internal/http2/Http2Connection;)J
    .locals 4

    .line 59
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    return-wide v0
.end method

.method static synthetic access$300(Lextern/okhttp3/internal/http2/Http2Connection;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    return p0
.end method

.method static synthetic access$302(Lextern/okhttp3/internal/http2/Http2Connection;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    return p1
.end method

.method static synthetic access$400()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 59
    sget-object v0, Lextern/okhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 59
    iget-object p0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$608(Lextern/okhttp3/internal/http2/Http2Connection;)J
    .locals 4

    .line 59
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    return-wide v0
.end method

.method static synthetic access$708(Lextern/okhttp3/internal/http2/Http2Connection;)J
    .locals 4

    .line 59
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    return-wide v0
.end method

.method private failConnection()V
    .locals 2

    .line 524
    :try_start_0
    sget-object v0, Lextern/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    sget-object v1, Lextern/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lextern/okhttp3/internal/http2/Http2Connection;->close(Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private newStream(ILjava/util/List;Z)Lextern/okhttp3/internal/http2/Http2Stream;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lextern/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    .line 252
    iget-object v7, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    monitor-enter v7

    .line 253
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    iget v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_0

    .line 255
    sget-object v0, Lextern/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0}, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown(Lextern/okhttp3/internal/http2/ErrorCode;)V

    .line 257
    :cond_0
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v0, :cond_7

    .line 260
    iget v8, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 261
    iget v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 262
    new-instance v9, Lextern/okhttp3/internal/http2/Http2Stream;

    const/4 v5, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lextern/okhttp3/internal/http2/Http2Stream;-><init>(ILextern/okhttp3/internal/http2/Http2Connection;ZZLextern/okhttp3/Headers;)V

    if-eqz p3, :cond_2

    .line 263
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2

    iget-wide v0, v9, Lextern/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    .line 264
    :goto_1
    invoke-virtual {v9}, Lextern/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    .line 269
    :try_start_2
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, v6, v8, p1, p2}, Lextern/okhttp3/internal/http2/Http2Writer;->synStream(ZIILjava/util/List;)V

    goto :goto_2

    .line 270
    :cond_4
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v0, :cond_6

    .line 273
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, v8, p2}, Lextern/okhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V

    .line 275
    :goto_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_5

    .line 278
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lextern/okhttp3/internal/http2/Http2Writer;->flush()V

    :cond_5
    return-object v9

    .line 271
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 258
    :cond_7
    :try_start_4
    new-instance p1, Lextern/okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lextern/okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 267
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 275
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method private declared-synchronized pushExecutorExecute(Lextern/okhttp3/internal/NamedRunnable;)V
    .locals 1

    monitor-enter p0

    .line 992
    :try_start_0
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v0, :cond_0

    .line 993
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized awaitPong()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 436
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    iget-wide v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 437
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 439
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    sget-object v0, Lextern/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    sget-object v1, Lextern/okhttp3/internal/http2/ErrorCode;->CANCEL:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lextern/okhttp3/internal/http2/Http2Connection;->close(Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method close(Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 478
    :try_start_0
    invoke-virtual {p0, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown(Lextern/okhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 484
    :goto_0
    monitor-enter p0

    .line 485
    :try_start_1
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lextern/okhttp3/internal/http2/Http2Stream;

    .line 487
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 489
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 492
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 494
    :try_start_2
    invoke-virtual {v3, p2}, Lextern/okhttp3/internal/http2/Http2Stream;->close(Lextern/okhttp3/internal/http2/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    if-eqz p1, :cond_1

    move-object p1, v3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 503
    :cond_2
    :try_start_3
    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p2}, Lextern/okhttp3/internal/http2/Http2Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    if-nez p1, :cond_3

    move-object p1, p2

    .line 510
    :cond_3
    :goto_3
    :try_start_4
    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 516
    :goto_4
    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 517
    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_4

    return-void

    .line 519
    :cond_4
    throw p1

    :catchall_0
    move-exception p1

    .line 489
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Writer;->flush()V

    return-void
.end method

.method public getProtocol()Lextern/okhttp3/Protocol;
    .locals 1

    .line 190
    sget-object v0, Lextern/okhttp3/Protocol;->HTTP_2:Lextern/okhttp3/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lextern/okhttp3/internal/http2/Http2Stream;
    .locals 1

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lextern/okhttp3/internal/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isHealthy(J)Z
    .locals 6

    monitor-enter p0

    .line 567
    :try_start_0
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 570
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    iget-wide v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->degradedPongDeadlineNs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x1

    .line 572
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .locals 2

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lextern/okhttp3/internal/http2/Settings;->getMaxConcurrentStreams(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;Z)Lextern/okhttp3/internal/http2/Http2Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lextern/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0, p1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lextern/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized openStreamCount()I
    .locals 1

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method pushDataLater(ILextern/okio/BufferedSource;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 960
    new-instance v5, Lextern/okio/Buffer;

    invoke-direct {v5}, Lextern/okio/Buffer;-><init>()V

    int-to-long v0, p3

    .line 961
    invoke-interface {p2, v0, v1}, Lextern/okio/BufferedSource;->require(J)V

    .line 962
    invoke-interface {p2, v5, v0, v1}, Lextern/okio/BufferedSource;->read(Lextern/okio/Buffer;J)J

    .line 963
    invoke-virtual {v5}, Lextern/okio/Buffer;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    .line 964
    new-instance p2, Lextern/okhttp3/internal/http2/Http2Connection$6;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, p2

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lextern/okhttp3/internal/http2/Http2Connection$6;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILextern/okio/Buffer;IZ)V

    invoke-direct {p0, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lextern/okhttp3/internal/NamedRunnable;)V

    return-void

    .line 963
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lextern/okio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method pushHeadersLater(ILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .line 935
    :try_start_0
    new-instance v7, Lextern/okhttp3/internal/http2/Http2Connection$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v7

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lextern/okhttp3/internal/http2/Http2Connection$5;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-direct {p0, v7}, Lextern/okhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lextern/okhttp3/internal/NamedRunnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method pushRequestLater(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 905
    monitor-enter p0

    .line 906
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    sget-object p2, Lextern/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILextern/okhttp3/internal/http2/ErrorCode;)V

    .line 908
    monitor-exit p0

    return-void

    .line 910
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 911
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    :try_start_1
    new-instance v0, Lextern/okhttp3/internal/http2/Http2Connection$4;

    const-string v4, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lextern/okhttp3/internal/http2/Http2Connection$4;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-direct {p0, v0}, Lextern/okhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lextern/okhttp3/internal/NamedRunnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    .line 911
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method pushResetLater(ILextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 7

    .line 981
    new-instance v6, Lextern/okhttp3/internal/http2/Http2Connection$7;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v2, "OkHttp %s Push Reset[%s]"

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lextern/okhttp3/internal/http2/Http2Connection$7;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILextern/okhttp3/internal/http2/ErrorCode;)V

    invoke-direct {p0, v6}, Lextern/okhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lextern/okhttp3/internal/NamedRunnable;)V

    return-void
.end method

.method public pushStream(ILjava/util/List;Z)Lextern/okhttp3/internal/http2/Http2Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lextern/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v0, :cond_0

    .line 232
    invoke-direct {p0, p1, p2, p3}, Lextern/okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lextern/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    return-object p1

    .line 231
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Client cannot push requests."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method pushedStream(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized removeStream(I)Lextern/okhttp3/internal/http2/Http2Stream;
    .locals 1

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lextern/okhttp3/internal/http2/Http2Stream;

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method sendDegradedPingLater()V
    .locals 6

    .line 591
    monitor-enter p0

    .line 592
    :try_start_0
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    iget-wide v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    monitor-exit p0

    return-void

    .line 593
    :cond_0
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    .line 594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->degradedPongDeadlineNs:J

    .line 595
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :try_start_1
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lextern/okhttp3/internal/http2/Http2Connection$3;

    const-string v2, "OkHttp %s ping"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3}, Lextern/okhttp3/internal/http2/Http2Connection$3;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    .line 595
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setSettings(Lextern/okhttp3/internal/http2/Settings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 556
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 557
    :try_start_1
    iget-boolean v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v1, :cond_0

    .line 560
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v1, p1}, Lextern/okhttp3/internal/http2/Settings;->merge(Lextern/okhttp3/internal/http2/Settings;)V

    .line 561
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    :try_start_2
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v1, p1}, Lextern/okhttp3/internal/http2/Http2Writer;->settings(Lextern/okhttp3/internal/http2/Settings;)V

    .line 563
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 558
    :cond_0
    :try_start_3
    new-instance p1, Lextern/okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lextern/okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 561
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 563
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public shutdown(Lextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 453
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 454
    :try_start_1
    iget-boolean v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v1, :cond_0

    .line 455
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 457
    :try_start_3
    iput-boolean v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    .line 458
    iget v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 459
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 462
    :try_start_4
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    sget-object v3, Lextern/okhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v2, v1, p1, v3}, Lextern/okhttp3/internal/http2/Http2Writer;->goAway(ILextern/okhttp3/internal/http2/ErrorCode;[B)V

    .line 463
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 459
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 463
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 534
    invoke-virtual {p0, v0}, Lextern/okhttp3/internal/http2/Http2Connection;->start(Z)V

    return-void
.end method

.method start(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 543
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lextern/okhttp3/internal/http2/Http2Writer;->connectionPreface()V

    .line 544
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {p1, v0}, Lextern/okhttp3/internal/http2/Http2Writer;->settings(Lextern/okhttp3/internal/http2/Settings;)V

    .line 545
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lextern/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    .line 547
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lextern/okhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    .line 550
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->readerRunnable:Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method declared-synchronized updateConnectionFlowControl(J)V
    .locals 3

    monitor-enter p0

    .line 215
    :try_start_0
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 216
    iget-wide p1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    .line 217
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    invoke-virtual {p0, p1, v0, v1}, Lextern/okhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    const-wide/16 p1, 0x0

    .line 218
    iput-wide p1, p0, Lextern/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeData(IZLextern/okio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 304
    iget-object p4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p4, p2, p1, p3, v0}, Lextern/okhttp3/internal/http2/Http2Writer;->data(ZILextern/okio/Buffer;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 310
    monitor-enter p0

    .line 312
    :goto_1
    :try_start_0
    iget-wide v3, p0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    .line 315
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 316
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_2
    :try_start_1
    iget-wide v3, p0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 326
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v3}, Lextern/okhttp3/internal/http2/Http2Writer;->maxDataLength()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 327
    iget-wide v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 328
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 331
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Lextern/okhttp3/internal/http2/Http2Writer;->data(ZILextern/okio/Buffer;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 321
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 322
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 328
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method writePing()V
    .locals 4

    .line 428
    monitor-enter p0

    .line 429
    :try_start_0
    iget-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    .line 430
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const v2, 0x4f4b6f6b

    .line 431
    invoke-virtual {p0, v0, v1, v2}, Lextern/okhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    return-void

    :catchall_0
    move-exception v0

    .line 430
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method writePing(ZII)V
    .locals 1

    .line 414
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2, p3}, Lextern/okhttp3/internal/http2/Http2Writer;->ping(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Http2Connection;->failConnection()V

    :goto_0
    return-void
.end method

.method writePingAndAwaitPong()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 422
    invoke-virtual {p0}, Lextern/okhttp3/internal/http2/Http2Connection;->writePing()V

    .line 423
    invoke-virtual {p0}, Lextern/okhttp3/internal/http2/Http2Connection;->awaitPong()V

    return-void
.end method

.method writeSynReply(IZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3}, Lextern/okhttp3/internal/http2/Http2Writer;->synReply(ZILjava/util/List;)V

    return-void
.end method

.method writeSynReset(ILextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2}, Lextern/okhttp3/internal/http2/Http2Writer;->rstStream(ILextern/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method writeSynResetLater(ILextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 8

    .line 337
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lextern/okhttp3/internal/http2/Http2Connection$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lextern/okhttp3/internal/http2/Http2Connection$1;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILextern/okhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .locals 9

    .line 357
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lextern/okhttp3/internal/http2/Http2Connection$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    .line 358
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lextern/okhttp3/internal/http2/Http2Connection$2;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 357
    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
