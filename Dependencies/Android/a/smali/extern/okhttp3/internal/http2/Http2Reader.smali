.class final Lextern/okhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/internal/http2/Http2Reader$Handler;,
        Lextern/okhttp3/internal/http2/Http2Reader$ContinuationSource;
    }
.end annotation


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private final continuation:Lextern/okhttp3/internal/http2/Http2Reader$ContinuationSource;

.field final hpackReader:Lextern/okhttp3/internal/http2/Hpack$Reader;

.field private final source:Lextern/okio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lextern/okhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lextern/okio/BufferedSource;Z)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    .line 52
    iput-boolean p2, p0, Lextern/okhttp3/internal/http2/Http2Reader;->client:Z

    .line 53
    new-instance p1, Lextern/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-direct {p1, p2}, Lextern/okhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lextern/okio/BufferedSource;)V

    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Reader;->continuation:Lextern/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 54
    new-instance p1, Lextern/okhttp3/internal/http2/Hpack$Reader;

    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Reader;->continuation:Lextern/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Lextern/okhttp3/internal/http2/Hpack$Reader;-><init>(ILextern/okio/Source;)V

    iput-object p1, p0, Lextern/okhttp3/internal/http2/Http2Reader;->hpackReader:Lextern/okhttp3/internal/http2/Hpack$Reader;

    return-void
.end method

.method static lengthWithoutPadding(IBS)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    const/4 p1, 0x2

    .line 388
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private readData(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_2

    .line 191
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v0}, Lextern/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 192
    :cond_2
    invoke-static {p2, p3, v0}, Lextern/okhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    .line 194
    iget-object p3, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {p1, v1, p4, p3, p2}, Lextern/okhttp3/internal/http2/Http2Reader$Handler;->data(ZILextern/okio/BufferedSource;I)V

    .line 195
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    int-to-long p2, v0

    invoke-interface {p1, p2, p3}, Lextern/okio/BufferedSource;->skip(J)V

    return-void

    .line 188
    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 182
    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readGoAway(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lt p2, v0, :cond_3

    if-nez p4, :cond_2

    .line 299
    iget-object p4, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {p4}, Lextern/okio/BufferedSource;->readInt()I

    move-result p4

    .line 300
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v2}, Lextern/okio/BufferedSource;->readInt()I

    move-result v2

    sub-int/2addr p2, v0

    .line 302
    invoke-static {v2}, Lextern/okhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lextern/okhttp3/internal/http2/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    sget-object p3, Lextern/okio/ByteString;->EMPTY:Lextern/okio/ByteString;

    if-lez p2, :cond_0

    .line 308
    iget-object p3, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    int-to-long v1, p2

    invoke-interface {p3, v1, v2}, Lextern/okio/BufferedSource;->readByteString(J)Lextern/okio/ByteString;

    move-result-object p3

    .line 310
    :cond_0
    invoke-interface {p1, p4, v0, p3}, Lextern/okhttp3/internal/http2/Http2Reader$Handler;->goAway(ILextern/okhttp3/internal/http2/ErrorCode;Lextern/okio/ByteString;)V

    return-void

    .line 304
    :cond_1
    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 298
    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 297
    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Reader;->continuation:Lextern/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput p1, v0, Lextern/okhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    iput p1, v0, Lextern/okhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    .line 170
    iput-short p2, v0, Lextern/okhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    .line 171
    iput-byte p3, v0, Lextern/okhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    .line 172
    iput p4, v0, Lextern/okhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    .line 176
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Reader;->hpackReader:Lextern/okhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {p1}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readHeaders()V

    .line 177
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Reader;->hpackReader:Lextern/okhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {p1}, Lextern/okhttp3/internal/http2/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private readHeaders(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    .line 153
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v0}, Lextern/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_2

    .line 156
    invoke-direct {p0, p1, p4}, Lextern/okhttp3/internal/http2/Http2Reader;->readPriority(Lextern/okhttp3/internal/http2/Http2Reader$Handler;I)V

    add-int/lit8 p2, p2, -0x5

    .line 160
    :cond_2
    invoke-static {p2, p3, v0}, Lextern/okhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    .line 162
    invoke-direct {p0, p2, v0, p3, p4}, Lextern/okhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object p2

    const/4 p3, -0x1

    .line 164
    invoke-interface {p1, v1, p4, p3, p2}, Lextern/okhttp3/internal/http2/Http2Reader$Handler;->headers(ZIILjava/util/List;)V

    return-void

    .line 149
    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method static readMedium(Lextern/okio/BufferedSource;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-interface {p0}, Lextern/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 380
    invoke-interface {p0}, Lextern/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 381
    invoke-interface {p0}, Lextern/okio/BufferedSource;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private readPing(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    if-nez p4, :cond_1

    .line 289
    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {p2}, Lextern/okio/BufferedSource;->readInt()I

    move-result p2

    .line 290
    iget-object p4, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {p4}, Lextern/okio/BufferedSource;->readInt()I

    move-result p4

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 292
    :cond_0
    invoke-interface {p1, v0, p2, p4}, Lextern/okhttp3/internal/http2/Http2Reader$Handler;->ping(ZII)V

    return-void

    .line 288
    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_PING streamId != 0"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 287
    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PING length != 8: %s"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readPriority(Lextern/okhttp3/internal/http2/Http2Reader$Handler;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v0}, Lextern/okio/BufferedSource;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 209
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v3}, Lextern/okio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 210
    invoke-interface {p1, p2, v0, v3, v1}, Lextern/okhttp3/internal/http2/Http2Reader$Handler;->priority(IIIZ)V

    return-void
.end method

.method private readPriority(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    if-eqz p4, :cond_0

    .line 202
    invoke-direct {p0, p1, p4}, Lextern/okhttp3/internal/http2/Http2Reader;->readPriority(Lextern/okhttp3/internal/http2/Http2Reader$Handler;I)V

    return-void

    .line 201
    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    .line 200
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readPushPromise(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    .line 277
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v0}, Lextern/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 278
    :cond_0
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v1}, Lextern/okio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    .line 280
    invoke-static {p2, p3, v0}, Lextern/okhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    .line 281
    invoke-direct {p0, p2, v0, p3, p4}, Lextern/okhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object p2

    .line 282
    invoke-interface {p1, p4, v1, p2}, Lextern/okhttp3/internal/http2/Http2Reader$Handler;->pushPromise(IILjava/util/List;)V

    return-void

    .line 275
    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readRstStream(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    if-eqz p4, :cond_1

    .line 217
    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {p2}, Lextern/okio/BufferedSource;->readInt()I

    move-result p2

    .line 218
    invoke-static {p2}, Lextern/okhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lextern/okhttp3/internal/http2/ErrorCode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 222
    invoke-interface {p1, p4, v1}, Lextern/okhttp3/internal/http2/Http2Reader$Handler;->rstStream(ILextern/okhttp3/internal/http2/ErrorCode;)V

    return-void

    .line 220
    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 216
    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 215
    :cond_2
    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readSettings(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_8

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 230
    invoke-interface {p1}, Lextern/okhttp3/internal/http2/Http2Reader$Handler;->ackSettings()V

    return-void

    .line 229
    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 234
    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_7

    .line 235
    new-instance p3, Lextern/okhttp3/internal/http2/Settings;

    invoke-direct {p3}, Lextern/okhttp3/internal/http2/Settings;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_6

    .line 237
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v2}, Lextern/okio/BufferedSource;->readShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 238
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v3}, Lextern/okio/BufferedSource;->readInt()I

    move-result v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_2

    const v4, 0xffffff

    if-gt v3, v4, :cond_2

    goto :goto_1

    .line 259
    :cond_2
    new-array p1, p4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_1
    const/4 v2, 0x7

    if-ltz v3, :cond_3

    goto :goto_1

    .line 254
    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_2
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_3
    if-eqz v3, :cond_5

    if-ne v3, p4, :cond_4

    goto :goto_1

    .line 245
    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 267
    :cond_5
    :goto_1
    :pswitch_4
    invoke-virtual {p3, v2, v3}, Lextern/okhttp3/internal/http2/Settings;->set(II)Lextern/okhttp3/internal/http2/Settings;

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 269
    :cond_6
    invoke-interface {p1, v0, p3}, Lextern/okhttp3/internal/http2/Http2Reader$Handler;->settings(ZLextern/okhttp3/internal/http2/Settings;)V

    return-void

    .line 234
    :cond_7
    new-array p1, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 227
    :cond_8
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private readWindowUpdate(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 316
    iget-object p2, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {p2}, Lextern/okio/BufferedSource;->readInt()I

    move-result p2

    int-to-long v1, p2

    const-wide/32 v3, 0x7fffffff

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 318
    invoke-interface {p1, p4, v1, v2}, Lextern/okhttp3/internal/http2/Http2Reader$Handler;->windowUpdate(IJ)V

    return-void

    .line 317
    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 315
    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v0}, Lextern/okio/BufferedSource;->close()V

    return-void
.end method

.method public nextFrame(ZLextern/okhttp3/internal/http2/Http2Reader$Handler;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    :try_start_0
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lextern/okio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-static {v1}, Lextern/okhttp3/internal/http2/Http2Reader;->readMedium(Lextern/okio/BufferedSource;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_3

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_3

    .line 95
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v3}, Lextern/okio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    if-ne v3, p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Expected a SETTINGS frame but was %s"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 99
    :cond_1
    :goto_0
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {p1}, Lextern/okio/BufferedSource;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 100
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v0}, Lextern/okio/BufferedSource;->readInt()I

    move-result v0

    const v4, 0x7fffffff

    and-int/2addr v0, v4

    .line 101
    sget-object v4, Lextern/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lextern/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    invoke-static {v2, v0, v1, v3, p1}, Lextern/okhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 142
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lextern/okio/BufferedSource;->skip(J)V

    goto :goto_1

    .line 137
    :pswitch_0
    invoke-direct {p0, p2, v1, p1, v0}, Lextern/okhttp3/internal/http2/Http2Reader;->readWindowUpdate(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_1

    .line 133
    :pswitch_1
    invoke-direct {p0, p2, v1, p1, v0}, Lextern/okhttp3/internal/http2/Http2Reader;->readGoAway(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_1

    .line 129
    :pswitch_2
    invoke-direct {p0, p2, v1, p1, v0}, Lextern/okhttp3/internal/http2/Http2Reader;->readPing(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_1

    .line 125
    :pswitch_3
    invoke-direct {p0, p2, v1, p1, v0}, Lextern/okhttp3/internal/http2/Http2Reader;->readPushPromise(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_1

    .line 121
    :pswitch_4
    invoke-direct {p0, p2, v1, p1, v0}, Lextern/okhttp3/internal/http2/Http2Reader;->readSettings(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_1

    .line 117
    :pswitch_5
    invoke-direct {p0, p2, v1, p1, v0}, Lextern/okhttp3/internal/http2/Http2Reader;->readRstStream(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_1

    .line 113
    :pswitch_6
    invoke-direct {p0, p2, v1, p1, v0}, Lextern/okhttp3/internal/http2/Http2Reader;->readPriority(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_1

    .line 109
    :pswitch_7
    invoke-direct {p0, p2, v1, p1, v0}, Lextern/okhttp3/internal/http2/Http2Reader;->readHeaders(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_1

    .line 105
    :pswitch_8
    invoke-direct {p0, p2, v1, p1, v0}, Lextern/okhttp3/internal/http2/Http2Reader;->readData(Lextern/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    :goto_1
    return v2

    .line 93
    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "FRAME_SIZE_ERROR: %s"

    invoke-static {p2, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readConnectionPreface(Lextern/okhttp3/internal/http2/Http2Reader$Handler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-boolean v0, p0, Lextern/okhttp3/internal/http2/Http2Reader;->client:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0, v2, p1}, Lextern/okhttp3/internal/http2/Http2Reader;->nextFrame(ZLextern/okhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Required SETTINGS preface not received"

    invoke-static {v0, p1}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 65
    :cond_1
    iget-object p1, p0, Lextern/okhttp3/internal/http2/Http2Reader;->source:Lextern/okio/BufferedSource;

    sget-object v0, Lextern/okhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lextern/okio/ByteString;

    invoke-virtual {v0}, Lextern/okio/ByteString;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-interface {p1, v3, v4}, Lextern/okio/BufferedSource;->readByteString(J)Lextern/okio/ByteString;

    move-result-object p1

    .line 66
    sget-object v0, Lextern/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lextern/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lextern/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "<< CONNECTION %s"

    invoke-static {v4, v3}, Lextern/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 67
    :cond_2
    sget-object v0, Lextern/okhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lextern/okio/ByteString;

    invoke-virtual {v0, p1}, Lextern/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 68
    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lextern/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Expected a connection header but was %s"

    invoke-static {p1, v0}, Lextern/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method
