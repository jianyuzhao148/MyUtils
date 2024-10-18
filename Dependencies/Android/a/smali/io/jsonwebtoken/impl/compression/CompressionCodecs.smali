.class public final Lio/jsonwebtoken/impl/compression/CompressionCodecs;
.super Ljava/lang/Object;
.source "CompressionCodecs.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFLATE:Lio/jsonwebtoken/CompressionCodec;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GZIP:Lio/jsonwebtoken/CompressionCodec;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final I:Lio/jsonwebtoken/impl/compression/CompressionCodecs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lio/jsonwebtoken/impl/compression/CompressionCodecs;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/compression/CompressionCodecs;-><init>()V

    sput-object v0, Lio/jsonwebtoken/impl/compression/CompressionCodecs;->I:Lio/jsonwebtoken/impl/compression/CompressionCodecs;

    .line 41
    sget-object v0, Lio/jsonwebtoken/CompressionCodecs;->DEFLATE:Lio/jsonwebtoken/CompressionCodec;

    sput-object v0, Lio/jsonwebtoken/impl/compression/CompressionCodecs;->DEFLATE:Lio/jsonwebtoken/CompressionCodec;

    .line 48
    sget-object v0, Lio/jsonwebtoken/CompressionCodecs;->GZIP:Lio/jsonwebtoken/CompressionCodec;

    sput-object v0, Lio/jsonwebtoken/impl/compression/CompressionCodecs;->GZIP:Lio/jsonwebtoken/CompressionCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
