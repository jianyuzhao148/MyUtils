.class public Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source "SecP192R1Point.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ne p2, p1, :cond_2

    .line 52
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    return-void

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exactly one of the field elements is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 59
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 14

    .line 70
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 74
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    if-ne p0, p1, :cond_2

    .line 80
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 83
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 85
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 86
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 88
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 89
    invoke-virtual {p1, v6}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 92
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->createExt()[I

    move-result-object v7

    .line 93
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v8

    .line 94
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v9

    .line 95
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v10

    .line 97
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->isOne()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 101
    iget-object v3, v3, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    .line 102
    iget-object v4, v4, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    goto :goto_0

    .line 107
    :cond_3
    iget-object v12, v5, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v12, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 110
    iget-object v3, v3, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v9, v3, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 112
    iget-object v3, v5, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v9, v3, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 113
    iget-object v3, v4, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v9, v3, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    move-object v3, v8

    move-object v4, v9

    .line 116
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->isOne()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 120
    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    .line 121
    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    goto :goto_1

    .line 126
    :cond_4
    iget-object v13, p1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v13, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 129
    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v10, v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 131
    iget-object v0, p1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v10, v0, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 132
    iget-object v0, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v10, v0, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    move-object v0, v7

    move-object v2, v10

    .line 135
    :goto_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v13

    .line 136
    invoke-static {v0, v3, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 139
    invoke-static {v2, v4, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 142
    invoke-static {v13}, Lorg/spongycastle/math/raw/Nat192;->isZero([I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 144
    invoke-static {v8}, Lorg/spongycastle/math/raw/Nat192;->isZero([I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 147
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 151
    :cond_5
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 155
    :cond_6
    invoke-static {v13, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 157
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v3

    .line 158
    invoke-static {v9, v13, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 161
    invoke-static {v9, v0, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 163
    invoke-static {v3, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->negate([I[I)V

    .line 164
    invoke-static {v2, v3, v7}, Lorg/spongycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 166
    invoke-static {v9, v9, v3}, Lorg/spongycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v0

    .line 167
    invoke-static {v0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    .line 169
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v2, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 170
    iget-object v0, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v8, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 171
    iget-object v0, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v0, v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 173
    new-instance v4, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v4, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 174
    iget-object v0, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v3, v4, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v9, v0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 175
    iget-object v0, v4, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v0, v8, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiplyAddToExt([I[I[I)V

    .line 176
    iget-object v0, v4, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 178
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v0, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    if-nez v11, :cond_7

    .line 181
    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v5, v5, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v3, v5, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    .line 185
    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v3, p1, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    :cond_8
    const/4 p1, 0x1

    new-array p1, p1, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v0, p1, v6

    .line 190
    new-instance v6, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    move-object v0, v6

    move-object v3, v4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v6
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    .line 303
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 308
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 12

    .line 196
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 203
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 204
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 209
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 212
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v5

    .line 213
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v6

    .line 215
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v7

    .line 216
    iget-object v8, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v8, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 218
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v8

    .line 219
    invoke-static {v7, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 221
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->isOne()Z

    move-result v9

    .line 223
    iget-object v10, v3, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    if-nez v9, :cond_2

    .line 227
    invoke-static {v10, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    move-object v10, v6

    .line 230
    :cond_2
    iget-object v11, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v11, v10, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 233
    iget-object v11, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v11, v10, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->add([I[I[I)V

    .line 234
    invoke-static {v6, v5, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 235
    invoke-static {v6, v6, v6}, Lorg/spongycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v10

    .line 236
    invoke-static {v10, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    .line 239
    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v1, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    const/4 v1, 0x2

    const/4 v10, 0x6

    .line 240
    invoke-static {v10, v7, v1, v4}, Lorg/spongycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v1

    .line 241
    invoke-static {v1, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    const/4 v1, 0x3

    .line 243
    invoke-static {v10, v8, v1, v4, v5}, Lorg/spongycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v1

    .line 244
    invoke-static {v1, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    .line 246
    new-instance v10, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v10, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 247
    iget-object v1, v10, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v6, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 248
    iget-object v1, v10, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v1, v7, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 249
    iget-object v1, v10, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v1, v7, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 251
    new-instance v8, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v8, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 252
    iget-object v1, v10, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v11, v8, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v1, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 253
    iget-object v1, v8, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v1, v6, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 254
    iget-object v1, v8, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v1, v5, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 256
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v1, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 257
    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v5, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v0, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->twice([I[I)V

    if-nez v9, :cond_3

    .line 260
    iget-object v0, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v3, v3, Lorg/spongycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v0, v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 263
    :cond_3
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;

    const/4 v3, 0x1

    new-array v5, v3, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v1, v5, v4

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    move-object v1, v0

    move-object v3, v10

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method
