.class Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Lextern/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"

# interfaces
.implements Lextern/okhttp3/internal/http2/Http2Reader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReaderRunnable"
.end annotation


# instance fields
.field final reader:Lextern/okhttp3/internal/http2/Http2Reader;

.field final synthetic this$0:Lextern/okhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lextern/okhttp3/internal/http2/Http2Connection;Lextern/okhttp3/internal/http2/Http2Reader;)V
    .locals 2

    .line 666
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    const/4 v0, 0x1

    .line 667
    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lextern/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    iput-object p2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lextern/okhttp3/internal/http2/Http2Reader;

    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    return-void
.end method

.method public alternateService(ILjava/lang/String;Lextern/okio/ByteString;Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method applyAndAckSettings(ZLextern/okhttp3/internal/http2/Settings;)V
    .locals 5

    .line 785
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 786
    :try_start_0
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 787
    :try_start_1
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v2}, Lextern/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    if-eqz p1, :cond_0

    .line 788
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lextern/okhttp3/internal/http2/Settings;->clear()V

    .line 789
    :cond_0
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {p1, p2}, Lextern/okhttp3/internal/http2/Settings;->merge(Lextern/okhttp3/internal/http2/Settings;)V

    .line 790
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lextern/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    const/4 p2, -0x1

    const/4 v3, 0x0

    if-eq p1, p2, :cond_1

    if-eq p1, v2, :cond_1

    sub-int/2addr p1, v2

    int-to-long p1, p1

    .line 793
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 794
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v3, v3, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lextern/okhttp3/internal/http2/Http2Stream;

    move-object v3, v2

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    .line 797
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 799
    :try_start_2
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lextern/okhttp3/internal/http2/Http2Connection;->writer:Lextern/okhttp3/internal/http2/Http2Writer;

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lextern/okhttp3/internal/http2/Http2Connection;->peerSettings:Lextern/okhttp3/internal/http2/Settings;

    invoke-virtual {v1, v2}, Lextern/okhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lextern/okhttp3/internal/http2/Settings;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 801
    :catch_0
    :try_start_3
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$000(Lextern/okhttp3/internal/http2/Http2Connection;)V

    .line 803
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v0, 0x0

    if-eqz v3, :cond_3

    .line 805
    array-length v1, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v4, v3, v2

    .line 806
    monitor-enter v4

    .line 807
    :try_start_4
    invoke-virtual {v4, p1, p2}, Lextern/okhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 808
    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 811
    :cond_3
    invoke-static {}, Lextern/okhttp3/internal/http2/Http2Connection;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "OkHttp %s settings"

    invoke-direct {p2, p0, v0, v1}, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p1

    .line 797
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :catchall_2
    move-exception p1

    .line 803
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public data(ZILextern/okio/BufferedSource;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3, p4, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->pushDataLater(ILextern/okio/BufferedSource;IZ)V

    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->getStream(I)Lextern/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 700
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    sget-object v0, Lextern/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2, v0}, Lextern/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILextern/okhttp3/internal/http2/ErrorCode;)V

    .line 701
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lextern/okhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    .line 702
    invoke-interface {p3, v0, v1}, Lextern/okio/BufferedSource;->skip(J)V

    return-void

    .line 705
    :cond_1
    invoke-virtual {v0, p3, p4}, Lextern/okhttp3/internal/http2/Http2Stream;->receiveData(Lextern/okio/BufferedSource;I)V

    if-eqz p1, :cond_2

    .line 707
    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->receiveFin()V

    :cond_2
    return-void
.end method

.method protected execute()V
    .locals 4

    .line 672
    sget-object v0, Lextern/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    .line 673
    sget-object v1, Lextern/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    .line 675
    :try_start_0
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lextern/okhttp3/internal/http2/Http2Reader;

    invoke-virtual {v2, p0}, Lextern/okhttp3/internal/http2/Http2Reader;->readConnectionPreface(Lextern/okhttp3/internal/http2/Http2Reader$Handler;)V

    .line 676
    :goto_0
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lextern/okhttp3/internal/http2/Http2Reader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lextern/okhttp3/internal/http2/Http2Reader;->nextFrame(ZLextern/okhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    sget-object v0, Lextern/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    .line 679
    sget-object v1, Lextern/okhttp3/internal/http2/ErrorCode;->CANCEL:Lextern/okhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    :try_start_1
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 681
    :catch_0
    :try_start_2
    sget-object v0, Lextern/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;

    .line 682
    sget-object v1, Lextern/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lextern/okhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 685
    :try_start_3
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    :goto_1
    invoke-virtual {v2, v0, v1}, Lextern/okhttp3/internal/http2/Http2Connection;->close(Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 688
    :catch_1
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lextern/okhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 685
    :goto_2
    :try_start_4
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v0, v1}, Lextern/okhttp3/internal/http2/Http2Connection;->close(Lextern/okhttp3/internal/http2/ErrorCode;Lextern/okhttp3/internal/http2/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 688
    :catch_2
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lextern/okhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Lextern/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public goAway(ILextern/okhttp3/internal/http2/ErrorCode;Lextern/okio/ByteString;)V
    .locals 3

    .line 845
    invoke-virtual {p3}, Lextern/okio/ByteString;->size()I

    .line 850
    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    monitor-enter p2

    .line 851
    :try_start_0
    iget-object p3, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object p3, p3, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lextern/okhttp3/internal/http2/Http2Stream;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lextern/okhttp3/internal/http2/Http2Stream;

    .line 852
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$302(Lextern/okhttp3/internal/http2/Http2Connection;Z)Z

    .line 853
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 857
    invoke-virtual {v1}, Lextern/okhttp3/internal/http2/Http2Stream;->getId()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lextern/okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 858
    sget-object v2, Lextern/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lextern/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lextern/okhttp3/internal/http2/Http2Stream;->receiveRstStream(Lextern/okhttp3/internal/http2/ErrorCode;)V

    .line 859
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lextern/okhttp3/internal/http2/Http2Stream;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lextern/okhttp3/internal/http2/Http2Connection;->removeStream(I)Lextern/okhttp3/internal/http2/Http2Stream;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 853
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public headers(ZIILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 713
    iget-object p3, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p3, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 714
    iget-object p3, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p3, p2, p4, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void

    .line 718
    :cond_0
    iget-object p3, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    monitor-enter p3

    .line 719
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->getStream(I)Lextern/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_4

    .line 723
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Connection;->access$300(Lextern/okhttp3/internal/http2/Http2Connection;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p3

    return-void

    .line 726
    :cond_1
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget v0, v0, Lextern/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    if-gt p2, v0, :cond_2

    monitor-exit p3

    return-void

    .line 729
    :cond_2
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget v1, v1, Lextern/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    monitor-exit p3

    return-void

    .line 732
    :cond_3
    invoke-static {p4}, Lextern/okhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lextern/okhttp3/Headers;

    move-result-object v8

    .line 733
    new-instance p4, Lextern/okhttp3/internal/http2/Http2Stream;

    iget-object v5, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    const/4 v6, 0x0

    move-object v3, p4

    move v4, p2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lextern/okhttp3/internal/http2/Http2Stream;-><init>(ILextern/okhttp3/internal/http2/Http2Connection;ZZLextern/okhttp3/Headers;)V

    .line 735
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iput p2, p1, Lextern/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 736
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lextern/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-static {}, Lextern/okhttp3/internal/http2/Http2Connection;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;

    const-string v1, "OkHttp %s stream %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {v0, p0, v1, v2, p4}, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lextern/okhttp3/internal/http2/Http2Stream;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 750
    monitor-exit p3

    return-void

    .line 752
    :cond_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    invoke-virtual {v0, p4}, Lextern/okhttp3/internal/http2/Http2Stream;->receiveHeaders(Ljava/util/List;)V

    if-eqz p1, :cond_5

    .line 756
    invoke-virtual {v0}, Lextern/okhttp3/internal/http2/Http2Stream;->receiveFin()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 752
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ping(ZII)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 824
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    monitor-enter p1

    if-ne p2, v0, :cond_0

    .line 826
    :try_start_0
    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-static {p2}, Lextern/okhttp3/internal/http2/Http2Connection;->access$108(Lextern/okhttp3/internal/http2/Http2Connection;)J

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 828
    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-static {p2}, Lextern/okhttp3/internal/http2/Http2Connection;->access$608(Lextern/okhttp3/internal/http2/Http2Connection;)J

    goto :goto_0

    :cond_1
    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    .line 830
    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-static {p2}, Lextern/okhttp3/internal/http2/Http2Connection;->access$708(Lextern/okhttp3/internal/http2/Http2Connection;)J

    .line 831
    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 833
    :cond_2
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 837
    :cond_3
    :try_start_1
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-static {p1}, Lextern/okhttp3/internal/http2/Http2Connection;->access$500(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v1, Lextern/okhttp3/internal/http2/Http2Connection$PingRunnable;

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-direct {v1, v2, v0, p2, p3}, Lextern/okhttp3/internal/http2/Http2Connection$PingRunnable;-><init>(Lextern/okhttp3/internal/http2/Http2Connection;ZII)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method public priority(IIIZ)V
    .locals 0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 887
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1, p2, p3}, Lextern/okhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method public rstStream(ILextern/okhttp3/internal/http2/ErrorCode;)V
    .locals 1

    .line 760
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lextern/okhttp3/internal/http2/Http2Connection;->pushResetLater(ILextern/okhttp3/internal/http2/ErrorCode;)V

    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->removeStream(I)Lextern/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 766
    invoke-virtual {p1, p2}, Lextern/okhttp3/internal/http2/Http2Stream;->receiveRstStream(Lextern/okhttp3/internal/http2/ErrorCode;)V

    :cond_1
    return-void
.end method

.method public settings(ZLextern/okhttp3/internal/http2/Settings;)V
    .locals 8

    .line 772
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lextern/okhttp3/internal/http2/Http2Connection;->access$500(Lextern/okhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v7, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;

    const-string v3, "OkHttp %s ACK Settings"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lextern/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;ZLextern/okhttp3/internal/http2/Settings;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 3

    if-nez p1, :cond_0

    .line 866
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 867
    :try_start_0
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    iget-wide v1, p1, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lextern/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 868
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 869
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 871
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lextern/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lextern/okhttp3/internal/http2/Http2Connection;->getStream(I)Lextern/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 873
    monitor-enter p1

    .line 874
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lextern/okhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 875
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method
