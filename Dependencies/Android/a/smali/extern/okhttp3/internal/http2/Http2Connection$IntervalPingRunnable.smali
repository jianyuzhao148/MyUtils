.class final Lextern/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;
.super Lextern/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IntervalPingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lextern/okhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lextern/okhttp3/internal/http2/Http2Connection;)V
    .locals 2

    .line 390
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    const/4 v0, 0x1

    .line 391
    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping"

    invoke-direct {p0, p1, v0}, Lextern/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .line 396
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 397
    :try_start_0
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$100(Lextern/okhttp3/internal/http2/Http2Connection;)J

    move-result-wide v1

    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-static {v3}, Lextern/okhttp3/internal/http2/Http2Connection;->access$200(Lextern/okhttp3/internal/http2/Http2Connection;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-gez v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 400
    :cond_0
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$208(Lextern/okhttp3/internal/http2/Http2Connection;)J

    const/4 v1, 0x0

    .line 403
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 405
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Connection;->access$000(Lextern/okhttp3/internal/http2/Http2Connection;)V

    goto :goto_1

    .line 407
    :cond_1
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, v6, v5, v6}, Lextern/okhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 403
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
