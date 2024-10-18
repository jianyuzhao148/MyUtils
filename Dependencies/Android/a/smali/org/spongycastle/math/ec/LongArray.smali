.class Lorg/spongycastle/math/ec/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final INTERLEAVE2_TABLE:[S

.field static final bitLengths:[B


# instance fields
.field private m_ints:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    new-array v1, v0, [S

    .line 17
    fill-array-data v1, :array_0

    sput-object v1, Lorg/spongycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    new-array v0, v0, [B

    .line 275
    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/LongArray;->bitLengths:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x4s
        0x5s
        0x10s
        0x11s
        0x14s
        0x15s
        0x40s
        0x41s
        0x44s
        0x45s
        0x50s
        0x51s
        0x54s
        0x55s
        0x100s
        0x101s
        0x104s
        0x105s
        0x110s
        0x111s
        0x114s
        0x115s
        0x140s
        0x141s
        0x144s
        0x145s
        0x150s
        0x151s
        0x154s
        0x155s
        0x400s
        0x401s
        0x404s
        0x405s
        0x410s
        0x411s
        0x414s
        0x415s
        0x440s
        0x441s
        0x444s
        0x445s
        0x450s
        0x451s
        0x454s
        0x455s
        0x500s
        0x501s
        0x504s
        0x505s
        0x510s
        0x511s
        0x514s
        0x515s
        0x540s
        0x541s
        0x544s
        0x545s
        0x550s
        0x551s
        0x554s
        0x555s
        0x1000s
        0x1001s
        0x1004s
        0x1005s
        0x1010s
        0x1011s
        0x1014s
        0x1015s
        0x1040s
        0x1041s
        0x1044s
        0x1045s
        0x1050s
        0x1051s
        0x1054s
        0x1055s
        0x1100s
        0x1101s
        0x1104s
        0x1105s
        0x1110s
        0x1111s
        0x1114s
        0x1115s
        0x1140s
        0x1141s
        0x1144s
        0x1145s
        0x1150s
        0x1151s
        0x1154s
        0x1155s
        0x1400s
        0x1401s
        0x1404s
        0x1405s
        0x1410s
        0x1411s
        0x1414s
        0x1415s
        0x1440s
        0x1441s
        0x1444s
        0x1445s
        0x1450s
        0x1451s
        0x1454s
        0x1455s
        0x1500s
        0x1501s
        0x1504s
        0x1505s
        0x1510s
        0x1511s
        0x1514s
        0x1515s
        0x1540s
        0x1541s
        0x1544s
        0x1545s
        0x1550s
        0x1551s
        0x1554s
        0x1555s
        0x4000s
        0x4001s
        0x4004s
        0x4005s
        0x4010s
        0x4011s
        0x4014s
        0x4015s
        0x4040s
        0x4041s
        0x4044s
        0x4045s
        0x4050s
        0x4051s
        0x4054s
        0x4055s
        0x4100s
        0x4101s
        0x4104s
        0x4105s
        0x4110s
        0x4111s
        0x4114s
        0x4115s
        0x4140s
        0x4141s
        0x4144s
        0x4145s
        0x4150s
        0x4151s
        0x4154s
        0x4155s
        0x4400s
        0x4401s
        0x4404s
        0x4405s
        0x4410s
        0x4411s
        0x4414s
        0x4415s
        0x4440s
        0x4441s
        0x4444s
        0x4445s
        0x4450s
        0x4451s
        0x4454s
        0x4455s
        0x4500s
        0x4501s
        0x4504s
        0x4505s
        0x4510s
        0x4511s
        0x4514s
        0x4515s
        0x4540s
        0x4541s
        0x4544s
        0x4545s
        0x4550s
        0x4551s
        0x4554s
        0x4555s
        0x5000s
        0x5001s
        0x5004s
        0x5005s
        0x5010s
        0x5011s
        0x5014s
        0x5015s
        0x5040s
        0x5041s
        0x5044s
        0x5045s
        0x5050s
        0x5051s
        0x5054s
        0x5055s
        0x5100s
        0x5101s
        0x5104s
        0x5105s
        0x5110s
        0x5111s
        0x5114s
        0x5115s
        0x5140s
        0x5141s
        0x5144s
        0x5145s
        0x5150s
        0x5151s
        0x5154s
        0x5155s
        0x5400s
        0x5401s
        0x5404s
        0x5405s
        0x5410s
        0x5411s
        0x5414s
        0x5415s
        0x5440s
        0x5441s
        0x5444s
        0x5445s
        0x5450s
        0x5451s
        0x5454s
        0x5455s
        0x5500s
        0x5501s
        0x5504s
        0x5505s
        0x5510s
        0x5511s
        0x5514s
        0x5515s
        0x5540s
        0x5541s
        0x5544s
        0x5545s
        0x5550s
        0x5551s
        0x5554s
        0x5555s
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-array p1, p1, [J

    iput-object p1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 12

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    .line 324
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_6

    .line 329
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    new-array p1, v4, [J

    aput-wide v1, p1, v3

    .line 331
    iput-object p1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    return-void

    .line 335
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 336
    array-length v0, p1

    .line 338
    aget-byte v5, p1, v3

    if-nez v5, :cond_1

    add-int/lit8 v0, v0, -0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v0, 0x7

    const/16 v7, 0x8

    .line 345
    div-int/2addr v6, v7

    .line 346
    new-array v8, v6, [J

    iput-object v8, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    sub-int/2addr v6, v4

    .line 349
    rem-int/2addr v0, v7

    add-int/2addr v0, v5

    if-ge v5, v0, :cond_3

    move-wide v8, v1

    :goto_1
    if-ge v5, v0, :cond_2

    shl-long/2addr v8, v7

    .line 357
    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v10, v4

    or-long/2addr v8, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 360
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v4, v6, -0x1

    aput-wide v8, v0, v6

    move v6, v4

    :cond_3
    :goto_2
    if-ltz v6, :cond_5

    move-wide v8, v1

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_4

    shl-long/2addr v8, v7

    add-int/lit8 v4, v5, 0x1

    .line 369
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v10, v5

    or-long/2addr v8, v10

    add-int/lit8 v0, v0, 0x1

    move v5, v4

    goto :goto_3

    .line 372
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aput-wide v8, v0, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_5
    return-void

    .line 326
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid F2m field value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    return-void
.end method

.method public constructor <init>([JII)V
    .locals 2

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 311
    array-length v0, p1

    if-ne p3, v0, :cond_0

    .line 313
    iput-object p1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    goto :goto_0

    .line 317
    :cond_0
    new-array v0, p3, [J

    iput-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v1, 0x0

    .line 318
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method private static add([JI[JII)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p1, v0

    .line 722
    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static add([JI[JI[JII)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p6, :cond_0

    add-int v1, p5, v0

    add-int v2, p1, v0

    .line 730
    aget-wide v2, p0, v2

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static addBoth([JI[JI[JII)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p6, :cond_0

    add-int v1, p1, v0

    .line 738
    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    add-int v6, p5, v0

    aget-wide v6, p4, v6

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addShiftedByBitsSafe(Lorg/spongycastle/math/ec/LongArray;II)V
    .locals 7

    add-int/lit8 p2, p2, 0x3f

    ushr-int/lit8 p2, p2, 0x6

    ushr-int/lit8 v6, p3, 0x6

    and-int/lit8 v5, p3, 0x3f

    if-nez v5, :cond_0

    .line 663
    iget-object p3, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    iget-object p1, p1, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v0, 0x0

    invoke-static {p3, v6, p1, v0, p2}, Lorg/spongycastle/math/ec/LongArray;->add([JI[JII)V

    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p1, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v3, 0x0

    move v1, v6

    move v4, p2

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 670
    iget-object p1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    add-int/2addr p2, v6

    aget-wide v2, p1, p2

    xor-long/2addr v0, v2

    aput-wide v0, p1, p2

    :cond_1
    return-void
.end method

.method private static addShiftedDown([JI[JIII)J
    .locals 10

    rsub-int/lit8 v0, p5, 0x40

    const-wide/16 v1, 0x0

    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_0

    add-int v3, p3, p4

    .line 694
    aget-wide v3, p2, v3

    add-int v5, p1, p4

    .line 695
    aget-wide v6, p0, v5

    ushr-long v8, v3, p5

    or-long/2addr v1, v8

    xor-long/2addr v1, v6

    aput-wide v1, p0, v5

    shl-long v1, v3, v0

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private static addShiftedUp([JI[JIII)J
    .locals 12

    rsub-int/lit8 v0, p5, 0x40

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move/from16 v4, p4

    :goto_0
    if-ge v3, v4, :cond_0

    add-int v5, p3, v3

    .line 680
    aget-wide v5, p2, v5

    add-int v7, p1, v3

    .line 681
    aget-wide v8, p0, v7

    shl-long v10, v5, p5

    or-long/2addr v1, v10

    xor-long/2addr v1, v8

    aput-wide v1, p0, v7

    ushr-long v1, v5, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private static bitLength(J)I
    .locals 3

    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v2, v1

    if-nez v2, :cond_0

    long-to-int v2, p0

    const/4 v0, 0x0

    :cond_0
    ushr-int/lit8 p0, v2, 0x10

    if-nez p0, :cond_2

    ushr-int/lit8 p0, v2, 0x8

    if-nez p0, :cond_1

    .line 517
    sget-object p0, Lorg/spongycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte p0, p0, v2

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/spongycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte p0, p1, p0

    add-int/lit8 p0, p0, 0x8

    goto :goto_0

    :cond_2
    ushr-int/lit8 p1, p0, 0x8

    if-nez p1, :cond_3

    .line 522
    sget-object p1, Lorg/spongycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte p0, p1, p0

    add-int/lit8 p0, p0, 0x10

    goto :goto_0

    :cond_3
    sget-object p0, Lorg/spongycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte p0, p0, p1

    add-int/lit8 p0, p0, 0x18

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private degreeFrom(I)I
    .locals 5

    add-int/lit8 p1, p1, 0x3e

    ushr-int/lit8 p1, p1, 0x6

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 469
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 p1, p1, -0x1

    aget-wide v1, v0, p1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    shl-int/lit8 p1, p1, 0x6

    .line 473
    invoke-static {v1, v2}, Lorg/spongycastle/math/ec/LongArray;->bitLength(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method private static flipBit([JII)V
    .locals 5

    ushr-int/lit8 v0, p2, 0x6

    and-int/lit8 p2, p2, 0x3f

    const-wide/16 v1, 0x1

    shl-long/2addr v1, p2

    add-int/2addr p1, v0

    .line 814
    aget-wide v3, p0, p1

    xor-long v0, v3, v1

    aput-wide v0, p0, p1

    return-void
.end method

.method private static flipVector([JI[JIII)V
    .locals 6

    ushr-int/lit8 v0, p5, 0x6

    add-int/2addr p1, v0

    and-int/lit8 p5, p5, 0x3f

    if-nez p5, :cond_0

    .line 1650
    invoke-static {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->add([JI[JII)V

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    rsub-int/lit8 v5, p5, 0x40

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1654
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->addShiftedDown([JI[JIII)J

    move-result-wide p2

    .line 1655
    aget-wide p4, p0, p1

    xor-long/2addr p2, p4

    aput-wide p2, p0, p1

    :goto_0
    return-void
.end method

.method private static flipWord([JIIJ)V
    .locals 4

    ushr-int/lit8 v0, p2, 0x6

    add-int/2addr p1, v0

    and-int/lit8 p2, p2, 0x3f

    if-nez p2, :cond_0

    .line 763
    aget-wide v0, p0, p1

    xor-long p2, v0, p3

    aput-wide p2, p0, p1

    goto :goto_0

    .line 767
    :cond_0
    aget-wide v0, p0, p1

    shl-long v2, p3, p2

    xor-long/2addr v0, v2

    aput-wide v0, p0, p1

    rsub-int/lit8 p2, p2, 0x40

    ushr-long p2, p3, p2

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 771
    aget-wide v0, p0, p1

    xor-long/2addr p2, v0

    aput-wide p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static interleave2_32to64(I)J
    .locals 6

    .line 1902
    sget-object v0, Lorg/spongycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    and-int/lit16 v1, p0, 0xff

    aget-short v1, v0, v1

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-short v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 1903
    aget-short v2, v0, v2

    ushr-int/lit8 p0, p0, 0x18

    aget-short p0, v0, p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v2

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    int-to-long v0, v1

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static multiplyWord(J[JI[JI)V
    .locals 18

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    const-wide/16 v9, 0x1

    and-long v0, p0, v9

    const-wide/16 v11, 0x0

    cmp-long v2, v0, v11

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move-object/from16 v13, p2

    .line 841
    invoke-static {v7, v8, v13, v0, v6}, Lorg/spongycastle/math/ec/LongArray;->add([JI[JII)V

    goto :goto_0

    :cond_0
    move-object/from16 v13, p2

    :goto_0
    const/4 v14, 0x1

    const/4 v15, 0x1

    move-wide/from16 v0, p0

    :goto_1
    ushr-long v16, v0, v14

    cmp-long v0, v16, v11

    if-eqz v0, :cond_2

    and-long v0, v16, v9

    cmp-long v2, v0, v11

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v15

    .line 848
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide v0

    cmp-long v2, v0, v11

    if-eqz v2, :cond_1

    add-int v2, v8, v6

    .line 851
    aget-wide v3, v7, v2

    xor-long/2addr v0, v3

    aput-wide v0, v7, v2

    :cond_1
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v0, v16

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static reduceBit([JIII[I)V
    .locals 1

    .line 1581
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->flipBit([JII)V

    sub-int/2addr p2, p3

    .line 1583
    array-length p3, p4

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    .line 1586
    aget v0, p4, p3

    add-int/2addr v0, p2

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/LongArray;->flipBit([JII)V

    goto :goto_0

    .line 1588
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->flipBit([JII)V

    return-void
.end method

.method private static reduceBitWise([JIII[I)V
    .locals 1

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p3, :cond_1

    .line 1572
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->testBit([JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1574
    invoke-static {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static reduceInPlace([JIII[I)I
    .locals 14

    move-object v6, p0

    move v7, p1

    move/from16 v0, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    add-int/lit8 v1, v8, 0x3f

    ushr-int/lit8 v10, v1, 0x6

    if-ge v0, v10, :cond_0

    return v0

    :cond_0
    shl-int/lit8 v1, v0, 0x6

    shl-int/lit8 v2, v8, 0x1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 1532
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    move v11, v0

    :goto_0
    const/16 v0, 0x40

    if-lt v1, v0, :cond_1

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v1, v1, -0x40

    goto :goto_0

    .line 1540
    :cond_1
    array-length v4, v9

    add-int/lit8 v5, v4, -0x1

    aget v5, v9, v5

    if-le v4, v3, :cond_2

    add-int/lit8 v4, v4, -0x2

    aget v4, v9, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v5, v0

    .line 1541
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    sub-int v0, v2, v12

    sub-int v4, v8, v4

    .line 1542
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x6

    if-le v0, v3, :cond_4

    sub-int v13, v11, v0

    move-object v0, p0

    move v1, p1

    move v2, v11

    move v3, v13

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 1546
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->reduceVectorWise([JIIII[I)V

    :goto_2
    if-le v11, v13, :cond_3

    add-int/lit8 v11, v11, -0x1

    add-int v0, v7, v11

    const-wide/16 v1, 0x0

    .line 1549
    aput-wide v1, v6, v0

    goto :goto_2

    :cond_3
    shl-int/lit8 v2, v13, 0x6

    :cond_4
    if-le v2, v12, :cond_5

    move-object v0, p0

    move v1, p1

    move v2, v11

    move v3, v12

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 1556
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->reduceWordWise([JIIII[I)V

    goto :goto_3

    :cond_5
    move v12, v2

    :goto_3
    if-le v12, v8, :cond_6

    .line 1562
    invoke-static {p0, p1, v12, v8, v9}, Lorg/spongycastle/math/ec/LongArray;->reduceBitWise([JIII[I)V

    :cond_6
    return v10
.end method

.method private static reduceResult([JIII[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 0

    .line 1493
    invoke-static {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result p2

    .line 1494
    new-instance p3, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {p3, p0, p1, p2}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    return-object p3
.end method

.method private static reduceVectorWise([JIIII[I)V
    .locals 7

    shl-int/lit8 v0, p3, 0x6

    sub-int v6, v0, p4

    .line 1635
    array-length p4, p5

    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_0

    add-int v3, p1, p3

    sub-int v4, p2, p3

    .line 1638
    aget v0, p5, p4

    add-int v5, v6, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    goto :goto_0

    :cond_0
    add-int v4, p1, p3

    sub-int v5, p2, p3

    move-object v1, p0

    move v2, p1

    move-object v3, p0

    .line 1640
    invoke-static/range {v1 .. v6}, Lorg/spongycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    return-void
.end method

.method private static reduceWord([JIIJI[I)V
    .locals 1

    sub-int/2addr p2, p5

    .line 1619
    array-length p5, p6

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    .line 1622
    aget v0, p6, p5

    add-int/2addr v0, p2

    invoke-static {p0, p1, v0, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->flipWord([JIIJ)V

    goto :goto_0

    .line 1624
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->flipWord([JIIJ)V

    return-void
.end method

.method private static reduceWordWise([JIIII[I)V
    .locals 9

    ushr-int/lit8 v7, p3, 0x6

    move v0, p2

    :goto_0
    add-int/lit8 v8, v0, -0x1

    const-wide/16 v0, 0x0

    if-le v8, v7, :cond_1

    add-int v2, p1, v8

    .line 1597
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 1600
    aput-wide v0, p0, v2

    shl-int/lit8 v2, v8, 0x6

    move-object v0, p0

    move v1, p1

    move v5, p4

    move-object v6, p5

    .line 1601
    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    :cond_0
    move v0, v8

    goto :goto_0

    :cond_1
    and-int/lit8 v2, p3, 0x3f

    add-int v3, p1, v7

    .line 1607
    aget-wide v4, p0, v3

    ushr-long/2addr v4, v2

    cmp-long v6, v4, v0

    if-eqz v6, :cond_2

    .line 1610
    aget-wide v0, p0, v3

    shl-long v6, v4, v2

    xor-long/2addr v0, v6

    aput-wide v0, p0, v3

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-wide v3, v4

    move v5, p4

    move-object v6, p5

    .line 1611
    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    :cond_2
    return-void
.end method

.method private resizedInts(I)[J
    .locals 3

    .line 530
    new-array v0, p1, [J

    .line 531
    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static shiftUp([JI[JIII)J
    .locals 9

    rsub-int/lit8 v0, p5, 0x40

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p4, :cond_0

    add-int v4, p1, v3

    .line 607
    aget-wide v4, p0, v4

    add-int v6, p3, v3

    shl-long v7, v4, p5

    or-long/2addr v1, v7

    .line 608
    aput-wide v1, p2, v6

    ushr-long v1, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private static squareInPlace([JII[I)V
    .locals 4

    shl-int/lit8 p2, p1, 0x1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 1729
    aget-wide v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    const/16 p3, 0x20

    ushr-long v2, v0, p3

    long-to-int p3, v2

    .line 1730
    invoke-static {p3}, Lorg/spongycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v2

    aput-wide v2, p0, p2

    add-int/lit8 p2, p2, -0x1

    long-to-int p3, v0

    .line 1731
    invoke-static {p3}, Lorg/spongycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static testBit([JII)Z
    .locals 3

    ushr-int/lit8 v0, p2, 0x6

    and-int/lit8 p2, p2, 0x3f

    const-wide/16 v1, 0x1

    shl-long/2addr v1, p2

    add-int/2addr p1, v0

    .line 804
    aget-wide p1, p0, p1

    and-long p0, p1, v1

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addOne()Lorg/spongycastle/math/ec/LongArray;
    .locals 6

    .line 616
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    new-array v4, v4, [J

    aput-wide v1, v4, v3

    invoke-direct {v0, v4}, Lorg/spongycastle/math/ec/LongArray;-><init>([J)V

    return-object v0

    .line 621
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 622
    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object v0

    .line 623
    aget-wide v4, v0, v3

    xor-long/2addr v1, v4

    aput-wide v1, v0, v3

    .line 624
    new-instance v1, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/LongArray;-><init>([J)V

    return-object v1
.end method

.method public addShiftedByWords(Lorg/spongycastle/math/ec/LongArray;I)V
    .locals 3

    .line 703
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int v1, v0, p2

    .line 710
    iget-object v2, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 712
    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 715
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    iget-object p1, p1, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v2, 0x0

    invoke-static {v1, p2, p1, v2, v0}, Lorg/spongycastle/math/ec/LongArray;->add([JI[JII)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 2170
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->clone([J)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/LongArray;-><init>([J)V

    return-object v0
.end method

.method public degree()I
    .locals 6

    .line 444
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 452
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    shl-int/lit8 v0, v0, 0x6

    .line 456
    invoke-static {v2, v3}, Lorg/spongycastle/math/ec/LongArray;->bitLength(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .line 2133
    instance-of v0, p1, Lorg/spongycastle/math/ec/LongArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2137
    :cond_0
    check-cast p1, Lorg/spongycastle/math/ec/LongArray;

    .line 2138
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 2139
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v2

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2145
    iget-object v3, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v4, v3, v2

    iget-object v3, p1, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v6, v3, v2

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getUsedLength()I
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLengthFrom(I)I

    move-result v0

    return v0
.end method

.method public getUsedLengthFrom(I)I
    .locals 8

    .line 413
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 414
    array-length v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    return v1

    .line 422
    :cond_0
    aget-wide v3, v0, v1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    :goto_0
    add-int/lit8 p1, p1, -0x1

    .line 424
    aget-wide v3, v0, p1

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p1, v2

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 432
    aget-wide v3, v0, p1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    add-int/2addr p1, v2

    return p1

    :cond_3
    if-gtz p1, :cond_2

    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 2155
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2159
    iget-object v3, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v4, v3, v2

    mul-int/lit8 v1, v1, 0x1f

    long-to-int v3, v4

    xor-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    const/16 v3, 0x20

    ushr-long v3, v4, v3

    long-to-int v4, v3

    xor-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isOne()Z
    .locals 9

    .line 378
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v1, 0x0

    .line 379
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 383
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 385
    aget-wide v4, v0, v3

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isZero()Z
    .locals 8

    .line 395
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 396
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 398
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public modInverse(I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 11

    .line 2056
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->degree()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 2067
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/math/ec/LongArray;

    add-int/lit8 v3, p1, 0x3f

    ushr-int/lit8 v3, v3, 0x6

    .line 2072
    new-instance v4, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v4, v3}, Lorg/spongycastle/math/ec/LongArray;-><init>(I)V

    .line 2073
    iget-object v5, v4, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v6, 0x0

    invoke-static {v5, v6, p1, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    .line 2076
    new-instance p2, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {p2, v3}, Lorg/spongycastle/math/ec/LongArray;-><init>(I)V

    .line 2077
    iget-object v5, p2, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const-wide/16 v7, 0x1

    aput-wide v7, v5, v6

    .line 2078
    new-instance v5, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v5, v3}, Lorg/spongycastle/math/ec/LongArray;-><init>(I)V

    const/4 v3, 0x2

    new-array v7, v3, [I

    aput v0, v7, v6

    add-int/2addr p1, v1

    aput p1, v7, v1

    new-array p1, v3, [Lorg/spongycastle/math/ec/LongArray;

    aput-object v2, p1, v6

    aput-object v4, p1, v1

    new-array v0, v3, [I

    .line 2083
    fill-array-data v0, :array_0

    new-array v2, v3, [Lorg/spongycastle/math/ec/LongArray;

    aput-object p2, v2, v6

    aput-object v5, v2, v1

    .line 2087
    aget p2, v7, v1

    .line 2088
    aget v3, v0, v1

    .line 2089
    aget v4, v7, v6

    sub-int v4, p2, v4

    :goto_0
    if-gez v4, :cond_1

    neg-int v4, v4

    .line 2096
    aput p2, v7, v1

    .line 2097
    aput v3, v0, v1

    rsub-int/lit8 p2, v1, 0x1

    .line 2099
    aget v1, v7, p2

    .line 2100
    aget v3, v0, p2

    move v10, v1

    move v1, p2

    move p2, v10

    .line 2103
    :cond_1
    aget-object v5, p1, v1

    rsub-int/lit8 v6, v1, 0x1

    aget-object v8, p1, v6

    aget v9, v7, v6

    invoke-direct {v5, v8, v9, v4}, Lorg/spongycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lorg/spongycastle/math/ec/LongArray;II)V

    .line 2105
    aget-object v5, p1, v1

    invoke-direct {v5, p2}, Lorg/spongycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 2108
    aget-object p1, v2, v6

    return-object p1

    .line 2112
    :cond_2
    aget v8, v0, v6

    .line 2113
    aget-object v9, v2, v1

    aget-object v6, v2, v6

    invoke-direct {v9, v6, v8, v4}, Lorg/spongycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lorg/spongycastle/math/ec/LongArray;II)V

    add-int/2addr v8, v4

    if-le v8, v3, :cond_3

    move v3, v8

    goto :goto_1

    :cond_3
    if-ne v8, v3, :cond_4

    .line 2122
    aget-object v6, v2, v1

    invoke-direct {v6, v3}, Lorg/spongycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v3

    :cond_4
    :goto_1
    sub-int p2, v5, p2

    add-int/2addr v4, p2

    move p2, v5

    goto :goto_0

    .line 2059
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public modMultiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 23

    move/from16 v0, p2

    move-object/from16 v1, p3

    .line 995
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/LongArray;->degree()I

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    .line 1000
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/LongArray;->degree()I

    move-result v3

    if-nez v3, :cond_1

    return-object p1

    :cond_1
    if-le v2, v3, :cond_2

    move v5, v2

    move v4, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    goto :goto_0

    :cond_2
    move v4, v2

    move v5, v3

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    :goto_0
    add-int/lit8 v6, v4, 0x3f

    ushr-int/lit8 v6, v6, 0x6

    add-int/lit8 v7, v5, 0x3f

    ushr-int/lit8 v11, v7, 0x6

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3e

    ushr-int/lit8 v4, v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4

    .line 1025
    iget-object v3, v3, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v8, v3, v7

    const-wide/16 v5, 0x1

    cmp-long v3, v8, v5

    if-nez v3, :cond_3

    return-object v2

    .line 1034
    :cond_3
    new-array v3, v4, [J

    .line 1035
    iget-object v10, v2, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v13, 0x0

    move-object v12, v3

    invoke-static/range {v8 .. v13}, Lorg/spongycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1040
    invoke-static {v3, v7, v4, v0, v1}, Lorg/spongycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v0

    return-object v0

    :cond_4
    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, 0x3f

    ushr-int/lit8 v5, v5, 0x6

    const/16 v9, 0x10

    new-array v10, v9, [I

    shl-int/lit8 v15, v5, 0x4

    .line 1056
    new-array v14, v15, [J

    aput v5, v10, v8

    .line 1059
    iget-object v2, v2, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v2, v7, v14, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x2

    move v8, v5

    :goto_1
    if-ge v2, v9, :cond_6

    add-int/2addr v8, v5

    .line 1062
    aput v8, v10, v2

    and-int/lit8 v11, v2, 0x1

    if-nez v11, :cond_5

    ushr-int/lit8 v13, v8, 0x1

    const/16 v17, 0x1

    move-object v12, v14

    move-object v11, v14

    move v9, v15

    move v15, v8

    move/from16 v16, v5

    .line 1065
    invoke-static/range {v12 .. v17}, Lorg/spongycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    goto :goto_2

    :cond_5
    move-object v11, v14

    move v9, v15

    sub-int v15, v8, v5

    move-object v12, v11

    move v13, v5

    move-object/from16 v16, v11

    move/from16 v17, v8

    move/from16 v18, v5

    .line 1069
    invoke-static/range {v12 .. v18}, Lorg/spongycastle/math/ec/LongArray;->add([JI[JI[JII)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v15, v9

    move-object v14, v11

    const/16 v9, 0x10

    goto :goto_1

    :cond_6
    move-object v11, v14

    move v9, v15

    .line 1076
    new-array v2, v9, [J

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x4

    move-object v12, v11

    move-object v14, v2

    move/from16 v16, v9

    .line 1077
    invoke-static/range {v12 .. v17}, Lorg/spongycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1080
    iget-object v3, v3, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    shl-int/lit8 v8, v4, 0x3

    .line 1081
    new-array v9, v8, [J

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v6, :cond_8

    .line 1091
    aget-wide v12, v3, v15

    move/from16 v19, v15

    :goto_4
    long-to-int v14, v12

    and-int/lit8 v14, v14, 0xf

    const/16 v20, 0x4

    ushr-long v12, v12, v20

    long-to-int v7, v12

    and-int/lit8 v7, v7, 0xf

    .line 1098
    aget v16, v10, v14

    aget v17, v10, v7

    move-wide/from16 v21, v12

    move-object v12, v9

    move/from16 v13, v19

    move-object v14, v11

    move v7, v15

    move/from16 v15, v16

    move-object/from16 v16, v2

    move/from16 v18, v5

    invoke-static/range {v12 .. v18}, Lorg/spongycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    ushr-long v12, v21, v20

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-nez v16, :cond_7

    add-int/lit8 v15, v7, 0x1

    const/4 v7, 0x0

    goto :goto_3

    :cond_7
    add-int v19, v19, v4

    move v15, v7

    const/4 v7, 0x0

    goto :goto_4

    :cond_8
    :goto_5
    sub-int/2addr v8, v4

    if-eqz v8, :cond_9

    sub-int v13, v8, v4

    const/16 v17, 0x8

    move-object v12, v9

    move-object v14, v9

    move v15, v8

    move/from16 v16, v4

    .line 1112
    invoke-static/range {v12 .. v17}, Lorg/spongycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 1119
    invoke-static {v9, v2, v4, v0, v1}, Lorg/spongycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public modSquare(I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 9

    .line 1661
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 1668
    new-array v1, v0, [J

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1673
    iget-object v4, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v5, v3, 0x1

    aget-wide v5, v4, v5

    add-int/lit8 v4, v3, 0x1

    long-to-int v7, v5

    .line 1674
    invoke-static {v7}, Lorg/spongycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v7

    aput-wide v7, v1, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    long-to-int v6, v5

    .line 1675
    invoke-static {v6}, Lorg/spongycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v5

    aput-wide v5, v1, v4

    goto :goto_0

    .line 1678
    :cond_1
    new-instance v3, Lorg/spongycastle/math/ec/LongArray;

    invoke-static {v1, v2, v0, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result p1

    invoke-direct {v3, v1, v2, p1}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    return-object v3
.end method

.method public modSquareN(II[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 5

    .line 1683
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v1, p2, 0x3f

    ushr-int/lit8 v1, v1, 0x6

    shl-int/lit8 v1, v1, 0x1

    .line 1690
    new-array v2, v1, [J

    .line 1691
    iget-object v3, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 1695
    invoke-static {v2, v0, p2, p3}, Lorg/spongycastle/math/ec/LongArray;->squareInPlace([JII[I)V

    .line 1696
    invoke-static {v2, v4, v1, p2, p3}, Lorg/spongycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v0

    goto :goto_0

    .line 1699
    :cond_1
    new-instance p1, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {p1, v2, v4, v0}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    return-object p1
.end method

.method public multiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 22

    .line 1351
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/LongArray;->degree()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1356
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/LongArray;->degree()I

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    if-le v0, v1, :cond_2

    move v3, v0

    move v2, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    :cond_2
    move v2, v0

    move v3, v1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :goto_0
    add-int/lit8 v4, v2, 0x3f

    ushr-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v3, 0x3f

    ushr-int/lit8 v9, v5, 0x6

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3e

    ushr-int/lit8 v2, v2, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 1381
    iget-object v1, v1, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v6, v1, v5

    const-wide/16 v3, 0x1

    cmp-long v1, v6, v3

    if-nez v1, :cond_3

    return-object v0

    .line 1390
    :cond_3
    new-array v1, v2, [J

    .line 1391
    iget-object v8, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v11, 0x0

    move-object v10, v1

    invoke-static/range {v6 .. v11}, Lorg/spongycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1397
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v0, v1, v5, v2}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0

    :cond_4
    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x3f

    ushr-int/lit8 v3, v3, 0x6

    const/16 v7, 0x10

    new-array v8, v7, [I

    shl-int/lit8 v15, v3, 0x4

    .line 1413
    new-array v14, v15, [J

    aput v3, v8, v6

    .line 1416
    iget-object v0, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v0, v5, v14, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    move v6, v3

    :goto_1
    if-ge v0, v7, :cond_6

    add-int/2addr v6, v3

    .line 1419
    aput v6, v8, v0

    and-int/lit8 v9, v0, 0x1

    if-nez v9, :cond_5

    ushr-int/lit8 v11, v6, 0x1

    const/4 v9, 0x1

    move-object v10, v14

    move-object v12, v14

    move v13, v6

    move-object/from16 v17, v14

    move v14, v3

    move v7, v15

    move v15, v9

    .line 1422
    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    goto :goto_2

    :cond_5
    move-object/from16 v17, v14

    move v7, v15

    sub-int v13, v6, v3

    move-object/from16 v10, v17

    move v11, v3

    move-object/from16 v12, v17

    move v15, v6

    move/from16 v16, v3

    .line 1426
    invoke-static/range {v10 .. v16}, Lorg/spongycastle/math/ec/LongArray;->add([JI[JI[JII)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v15, v7

    move-object/from16 v14, v17

    const/16 v7, 0x10

    goto :goto_1

    :cond_6
    move-object/from16 v17, v14

    move v7, v15

    .line 1433
    new-array v0, v7, [J

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x4

    move-object/from16 v10, v17

    move-object v12, v0

    move v14, v7

    .line 1434
    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1437
    iget-object v1, v1, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    shl-int/lit8 v6, v2, 0x3

    .line 1438
    new-array v7, v6, [J

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v4, :cond_8

    .line 1448
    aget-wide v10, v1, v9

    move/from16 v18, v9

    :goto_4
    long-to-int v12, v10

    and-int/lit8 v12, v12, 0xf

    const/16 v19, 0x4

    ushr-long v14, v10, v19

    long-to-int v10, v14

    and-int/lit8 v10, v10, 0xf

    .line 1455
    aget v13, v8, v12

    aget v16, v8, v10

    move-object v10, v7

    move/from16 v11, v18

    move-object/from16 v12, v17

    move-wide/from16 v20, v14

    move-object v14, v0

    move/from16 v15, v16

    move/from16 v16, v3

    invoke-static/range {v10 .. v16}, Lorg/spongycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    ushr-long v10, v20, v19

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-nez v14, :cond_7

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    add-int v18, v18, v2

    goto :goto_4

    :cond_8
    :goto_5
    sub-int/2addr v6, v2

    if-eqz v6, :cond_9

    sub-int v11, v6, v2

    const/16 v15, 0x8

    move-object v10, v7

    move-object v12, v7

    move v13, v6

    move v14, v2

    .line 1469
    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    goto :goto_5

    .line 1477
    :cond_9
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v0, v7, v5, v2}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0
.end method

.method public reduce(I[I)V
    .locals 3

    .line 1482
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 1483
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result p1

    .line 1484
    array-length p2, v0

    if-ge p1, p2, :cond_0

    .line 1486
    new-array p2, p1, [J

    iput-object p2, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 1487
    invoke-static {v0, v2, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public square(I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 7

    .line 1704
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    .line 1711
    new-array p2, p1, [J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1716
    iget-object v2, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v3, v1, 0x1

    aget-wide v3, v2, v3

    add-int/lit8 v2, v1, 0x1

    long-to-int v5, v3

    .line 1717
    invoke-static {v5}, Lorg/spongycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v5

    aput-wide v5, p2, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v4, v3

    .line 1718
    invoke-static {v4}, Lorg/spongycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v3

    aput-wide v3, p2, v2

    goto :goto_0

    .line 1721
    :cond_1
    new-instance v1, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v1, p2, v0, p1}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    return-object v1
.end method

.method public testBitZero()Z
    .locals 6

    .line 794
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-wide v3, v0, v2

    const-wide/16 v0, 0x1

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 14

    .line 537
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    .line 540
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 543
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v3, v1, v2

    const/16 v1, 0x8

    new-array v5, v1, [B

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x1

    if-ltz v8, :cond_3

    mul-int/lit8 v12, v8, 0x8

    ushr-long v12, v3, v12

    long-to-int v13, v12

    int-to-byte v12, v13

    if-nez v10, :cond_1

    if-eqz v12, :cond_2

    :cond_1
    add-int/lit8 v10, v9, 0x1

    .line 553
    aput-byte v12, v5, v9

    move v9, v10

    const/4 v10, 0x1

    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_3
    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v9

    .line 558
    new-array v1, v2, [B

    :goto_1
    if-ge v7, v9, :cond_4

    .line 561
    aget-byte v2, v5, v7

    aput-byte v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x2

    :goto_2
    if-ltz v0, :cond_6

    .line 567
    iget-object v2, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v3, v2, v0

    const/4 v2, 0x7

    :goto_3
    if-ltz v2, :cond_5

    add-int/lit8 v5, v9, 0x1

    mul-int/lit8 v7, v2, 0x8

    ushr-long v7, v3, v7

    long-to-int v8, v7

    int-to-byte v7, v8

    .line 570
    aput-byte v7, v1, v9

    add-int/lit8 v2, v2, -0x1

    move v9, v5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 573
    :cond_6
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 2175
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 2181
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 2184
    iget-object v2, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    .line 2187
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x40

    if-ge v3, v4, :cond_1

    const-string v4, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 2190
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2193
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2195
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
