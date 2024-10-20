.class final Lextern/okhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lextern/okhttp3/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final protocol:Lextern/okhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lextern/okhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lextern/okhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lextern/okhttp3/Response;)V
    .locals 2

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    invoke-virtual {p1}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 601
    invoke-static {p1}, Lextern/okhttp3/internal/http/HttpHeaders;->varyHeaders(Lextern/okhttp3/Response;)Lextern/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    .line 602
    invoke-virtual {p1}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 603
    invoke-virtual {p1}, Lextern/okhttp3/Response;->protocol()Lextern/okhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->protocol:Lextern/okhttp3/Protocol;

    .line 604
    invoke-virtual {p1}, Lextern/okhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lextern/okhttp3/Cache$Entry;->code:I

    .line 605
    invoke-virtual {p1}, Lextern/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 606
    invoke-virtual {p1}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    .line 607
    invoke-virtual {p1}, Lextern/okhttp3/Response;->handshake()Lextern/okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    .line 608
    invoke-virtual {p1}, Lextern/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lextern/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 609
    invoke-virtual {p1}, Lextern/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lextern/okhttp3/Cache$Entry;->receivedResponseMillis:J

    return-void
.end method

.method constructor <init>(Lextern/okio/Source;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    :try_start_0
    invoke-static {p1}, Lextern/okio/Okio;->buffer(Lextern/okio/Source;)Lextern/okio/BufferedSource;

    move-result-object v0

    .line 548
    invoke-interface {v0}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lextern/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 549
    invoke-interface {v0}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lextern/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 550
    new-instance v1, Lextern/okhttp3/Headers$Builder;

    invoke-direct {v1}, Lextern/okhttp3/Headers$Builder;-><init>()V

    .line 551
    invoke-static {v0}, Lextern/okhttp3/Cache;->readInt(Lextern/okio/BufferedSource;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 553
    invoke-interface {v0}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lextern/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {v1}, Lextern/okhttp3/Headers$Builder;->build()Lextern/okhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    .line 557
    invoke-interface {v0}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lextern/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lextern/okhttp3/internal/http/StatusLine;

    move-result-object v1

    .line 558
    iget-object v2, v1, Lextern/okhttp3/internal/http/StatusLine;->protocol:Lextern/okhttp3/Protocol;

    iput-object v2, p0, Lextern/okhttp3/Cache$Entry;->protocol:Lextern/okhttp3/Protocol;

    .line 559
    iget v2, v1, Lextern/okhttp3/internal/http/StatusLine;->code:I

    iput v2, p0, Lextern/okhttp3/Cache$Entry;->code:I

    .line 560
    iget-object v1, v1, Lextern/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v1, p0, Lextern/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 561
    new-instance v1, Lextern/okhttp3/Headers$Builder;

    invoke-direct {v1}, Lextern/okhttp3/Headers$Builder;-><init>()V

    .line 562
    invoke-static {v0}, Lextern/okhttp3/Cache;->readInt(Lextern/okio/BufferedSource;)I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    .line 564
    invoke-interface {v0}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lextern/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 566
    :cond_1
    sget-object v2, Lextern/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lextern/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    sget-object v3, Lextern/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lextern/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    sget-object v4, Lextern/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lextern/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 569
    sget-object v4, Lextern/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lextern/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_2

    .line 571
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v4

    .line 572
    :goto_2
    iput-wide v6, p0, Lextern/okhttp3/Cache$Entry;->sentRequestMillis:J

    if-eqz v3, :cond_3

    .line 574
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 575
    :cond_3
    iput-wide v4, p0, Lextern/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 576
    invoke-virtual {v1}, Lextern/okhttp3/Headers$Builder;->build()Lextern/okhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    .line 578
    invoke-direct {p0}, Lextern/okhttp3/Cache$Entry;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 579
    invoke-interface {v0}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 583
    invoke-interface {v0}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {v1}, Lextern/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lextern/okhttp3/CipherSuite;

    move-result-object v1

    .line 585
    invoke-direct {p0, v0}, Lextern/okhttp3/Cache$Entry;->readCertificateList(Lextern/okio/BufferedSource;)Ljava/util/List;

    move-result-object v2

    .line 586
    invoke-direct {p0, v0}, Lextern/okhttp3/Cache$Entry;->readCertificateList(Lextern/okio/BufferedSource;)Ljava/util/List;

    move-result-object v3

    .line 587
    invoke-interface {v0}, Lextern/okio/BufferedSource;->exhausted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 588
    invoke-interface {v0}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lextern/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lextern/okhttp3/TlsVersion;

    move-result-object v0

    goto :goto_3

    .line 589
    :cond_4
    sget-object v0, Lextern/okhttp3/TlsVersion;->SSL_3_0:Lextern/okhttp3/TlsVersion;

    .line 590
    :goto_3
    invoke-static {v0, v1, v2, v3}, Lextern/okhttp3/Handshake;->get(Lextern/okhttp3/TlsVersion;Lextern/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lextern/okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    goto :goto_4

    .line 581
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    .line 592
    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :goto_4
    invoke-interface {p1}, Lextern/okio/Source;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lextern/okio/Source;->close()V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private isHttps()Z
    .locals 2

    .line 659
    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lextern/okio/BufferedSource;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okio/BufferedSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    invoke-static {p1}, Lextern/okhttp3/Cache;->readInt(Lextern/okio/BufferedSource;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 664
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 667
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 668
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 670
    invoke-interface {p1}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 671
    new-instance v5, Lextern/okio/Buffer;

    invoke-direct {v5}, Lextern/okio/Buffer;-><init>()V

    .line 672
    invoke-static {v4}, Lextern/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v4

    invoke-virtual {v5, v4}, Lextern/okio/Buffer;->write(Lextern/okio/ByteString;)Lextern/okio/Buffer;

    .line 673
    invoke-virtual {v5}, Lextern/okio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 677
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private writeCertList(Lextern/okio/BufferedSink;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okio/BufferedSink;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lextern/okio/BufferedSink;->writeDecimalLong(J)Lextern/okio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    .line 685
    invoke-interface {v0, v1}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    const/4 v0, 0x0

    .line 686
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 687
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 688
    invoke-static {v3}, Lextern/okio/ByteString;->of([B)Lextern/okio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 689
    invoke-interface {p1, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    .line 690
    invoke-interface {v3, v1}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 693
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public matches(Lextern/okhttp3/Request;Lextern/okhttp3/Response;)Z
    .locals 2

    .line 698
    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 699
    invoke-virtual {p1}, Lextern/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    .line 700
    invoke-static {p2, v0, p1}, Lextern/okhttp3/internal/http/HttpHeaders;->varyMatches(Lextern/okhttp3/Response;Lextern/okhttp3/Headers;Lextern/okhttp3/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public response(Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;)Lextern/okhttp3/Response;
    .locals 5

    .line 704
    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lextern/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lextern/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 706
    new-instance v2, Lextern/okhttp3/Request$Builder;

    invoke-direct {v2}, Lextern/okhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 707
    invoke-virtual {v2, v3}, Lextern/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v4, 0x0

    .line 708
    invoke-virtual {v2, v3, v4}, Lextern/okhttp3/Request$Builder;->method(Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    .line 709
    invoke-virtual {v2, v3}, Lextern/okhttp3/Request$Builder;->headers(Lextern/okhttp3/Headers;)Lextern/okhttp3/Request$Builder;

    move-result-object v2

    .line 710
    invoke-virtual {v2}, Lextern/okhttp3/Request$Builder;->build()Lextern/okhttp3/Request;

    move-result-object v2

    .line 711
    new-instance v3, Lextern/okhttp3/Response$Builder;

    invoke-direct {v3}, Lextern/okhttp3/Response$Builder;-><init>()V

    .line 712
    invoke-virtual {v3, v2}, Lextern/okhttp3/Response$Builder;->request(Lextern/okhttp3/Request;)Lextern/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->protocol:Lextern/okhttp3/Protocol;

    .line 713
    invoke-virtual {v2, v3}, Lextern/okhttp3/Response$Builder;->protocol(Lextern/okhttp3/Protocol;)Lextern/okhttp3/Response$Builder;

    move-result-object v2

    iget v3, p0, Lextern/okhttp3/Cache$Entry;->code:I

    .line 714
    invoke-virtual {v2, v3}, Lextern/okhttp3/Response$Builder;->code(I)Lextern/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 715
    invoke-virtual {v2, v3}, Lextern/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lextern/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    .line 716
    invoke-virtual {v2, v3}, Lextern/okhttp3/Response$Builder;->headers(Lextern/okhttp3/Headers;)Lextern/okhttp3/Response$Builder;

    move-result-object v2

    new-instance v3, Lextern/okhttp3/Cache$CacheResponseBody;

    invoke-direct {v3, p1, v0, v1}, Lextern/okhttp3/Cache$CacheResponseBody;-><init>(Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v2, v3}, Lextern/okhttp3/Response$Builder;->body(Lextern/okhttp3/ResponseBody;)Lextern/okhttp3/Response$Builder;

    move-result-object p1

    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    .line 718
    invoke-virtual {p1, v0}, Lextern/okhttp3/Response$Builder;->handshake(Lextern/okhttp3/Handshake;)Lextern/okhttp3/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Lextern/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 719
    invoke-virtual {p1, v0, v1}, Lextern/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lextern/okhttp3/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Lextern/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 720
    invoke-virtual {p1, v0, v1}, Lextern/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lextern/okhttp3/Response$Builder;

    move-result-object p1

    .line 721
    invoke-virtual {p1}, Lextern/okhttp3/Response$Builder;->build()Lextern/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lextern/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 613
    invoke-virtual {p1, v0}, Lextern/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lextern/okio/Sink;

    move-result-object p1

    invoke-static {p1}, Lextern/okio/Okio;->buffer(Lextern/okio/Sink;)Lextern/okio/BufferedSink;

    move-result-object p1

    .line 615
    iget-object v1, p0, Lextern/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {p1, v1}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    .line 616
    invoke-interface {v1, v2}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 617
    iget-object v1, p0, Lextern/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {p1, v1}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v1

    .line 618
    invoke-interface {v1, v2}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 619
    iget-object v1, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v1}, Lextern/okhttp3/Headers;->size()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Lextern/okio/BufferedSink;->writeDecimalLong(J)Lextern/okio/BufferedSink;

    move-result-object v1

    .line 620
    invoke-interface {v1, v2}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 621
    iget-object v1, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v1}, Lextern/okhttp3/Headers;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, ": "

    if-ge v3, v1, :cond_0

    .line 622
    iget-object v5, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v5, v3}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v5

    .line 623
    invoke-interface {v5, v4}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v4

    iget-object v5, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    .line 624
    invoke-virtual {v5, v3}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v4

    .line 625
    invoke-interface {v4, v2}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 628
    :cond_0
    new-instance v1, Lextern/okhttp3/internal/http/StatusLine;

    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->protocol:Lextern/okhttp3/Protocol;

    iget v5, p0, Lextern/okhttp3/Cache$Entry;->code:I

    iget-object v6, p0, Lextern/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lextern/okhttp3/internal/http/StatusLine;-><init>(Lextern/okhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lextern/okhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v1

    .line 629
    invoke-interface {v1, v2}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 630
    iget-object v1, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v1}, Lextern/okhttp3/Headers;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, Lextern/okio/BufferedSink;->writeDecimalLong(J)Lextern/okio/BufferedSink;

    move-result-object v1

    .line 631
    invoke-interface {v1, v2}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 632
    iget-object v1, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v1}, Lextern/okhttp3/Headers;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 633
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v3, v0}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    .line 634
    invoke-interface {v3, v4}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    iget-object v5, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    .line 635
    invoke-virtual {v5, v0}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    .line 636
    invoke-interface {v3, v2}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 638
    :cond_1
    sget-object v0, Lextern/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {p1, v0}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v0

    .line 639
    invoke-interface {v0, v4}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v0

    iget-wide v5, p0, Lextern/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 640
    invoke-interface {v0, v5, v6}, Lextern/okio/BufferedSink;->writeDecimalLong(J)Lextern/okio/BufferedSink;

    move-result-object v0

    .line 641
    invoke-interface {v0, v2}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 642
    sget-object v0, Lextern/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {p1, v0}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v0

    .line 643
    invoke-interface {v0, v4}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v0

    iget-wide v3, p0, Lextern/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 644
    invoke-interface {v0, v3, v4}, Lextern/okio/BufferedSink;->writeDecimalLong(J)Lextern/okio/BufferedSink;

    move-result-object v0

    .line 645
    invoke-interface {v0, v2}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 647
    invoke-direct {p0}, Lextern/okhttp3/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    invoke-interface {p1, v2}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 649
    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    invoke-virtual {v0}, Lextern/okhttp3/Handshake;->cipherSuite()Lextern/okhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v0

    .line 650
    invoke-interface {v0, v2}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 651
    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    invoke-virtual {v0}, Lextern/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lextern/okhttp3/Cache$Entry;->writeCertList(Lextern/okio/BufferedSink;Ljava/util/List;)V

    .line 652
    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    invoke-virtual {v0}, Lextern/okhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lextern/okhttp3/Cache$Entry;->writeCertList(Lextern/okio/BufferedSink;Ljava/util/List;)V

    .line 653
    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    invoke-virtual {v0}, Lextern/okhttp3/Handshake;->tlsVersion()Lextern/okhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v2}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 655
    :cond_2
    invoke-interface {p1}, Lextern/okio/BufferedSink;->close()V

    return-void
.end method
