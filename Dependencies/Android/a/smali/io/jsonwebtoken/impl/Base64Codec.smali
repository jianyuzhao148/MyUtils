.class public Lio/jsonwebtoken/impl/Base64Codec;
.super Lio/jsonwebtoken/impl/AbstractTextCodec;
.source "Base64Codec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lio/jsonwebtoken/impl/AbstractTextCodec;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 1

    .line 34
    sget-object v0, Lio/jsonwebtoken/io/Decoders;->BASE64:Lio/jsonwebtoken/io/Decoder;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/io/Decoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lio/jsonwebtoken/io/Encoders;->BASE64:Lio/jsonwebtoken/io/Encoder;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/io/Encoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
