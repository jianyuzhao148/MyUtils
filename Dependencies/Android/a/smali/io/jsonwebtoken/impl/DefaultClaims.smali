.class public Lio/jsonwebtoken/impl/DefaultClaims;
.super Lio/jsonwebtoken/impl/JwtMap;
.source "DefaultClaims.java"

# interfaces
.implements Lio/jsonwebtoken/Claims;


# static fields
.field private static final CONVERSION_ERROR_MSG:Ljava/lang/String; = "Cannot convert existing claim value of type \'%s\' to desired type \'%s\'. JJWT only converts simple String, Date, Long, Integer, Short and Byte types automatically. Anything more complex is expected to be already converted to your desired type by the JSON Deserializer implementation. You may specify a custom Deserializer for a JwtParser with the desired conversion configuration via the JwtParserBuilder.deserializeJsonWith() method. See https://github.com/jwtk/jjwt#custom-json-processor for more information. If using Jackson, you can specify custom claim POJO types as described in https://github.com/jwtk/jjwt#json-jackson-custom-types"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/jsonwebtoken/impl/JwtMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lio/jsonwebtoken/impl/JwtMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private castClaimValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 157
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 158
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    const-class v1, Ljava/lang/Long;

    if-ne p2, v1, :cond_0

    int-to-long v0, v0

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 161
    :cond_0
    const-class v1, Ljava/lang/Short;

    if-ne p2, v1, :cond_1

    const/16 v1, -0x8000

    if-gt v1, v0, :cond_1

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1

    int-to-short p1, v0

    .line 162
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    .line 163
    :cond_1
    const-class v1, Ljava/lang/Byte;

    if-ne p2, v1, :cond_2

    const/16 v1, -0x80

    if-gt v1, v0, :cond_2

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_2

    int-to-byte p1, v0

    .line 164
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    .line 168
    :cond_2
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 169
    :cond_3
    new-instance v0, Lio/jsonwebtoken/RequiredTypeException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "Cannot convert existing claim value of type \'%s\' to desired type \'%s\'. JJWT only converts simple String, Date, Long, Integer, Short and Byte types automatically. Anything more complex is expected to be already converted to your desired type by the JSON Deserializer implementation. You may specify a custom Deserializer for a JwtParser with the desired conversion configuration via the JwtParserBuilder.deserializeJsonWith() method. See https://github.com/jwtk/jjwt#custom-json-processor for more information. If using Jackson, you can specify custom claim POJO types as described in https://github.com/jwtk/jjwt#json-jackson-custom-types"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/jsonwebtoken/RequiredTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isSpecDate(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "exp"

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "iat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nbf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/JwtMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 144
    :cond_0
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    invoke-static {p1}, Lio/jsonwebtoken/impl/DefaultClaims;->isSpecDate(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-static {v0, p1}, Lio/jsonwebtoken/impl/JwtMap;->toSpecDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {v0, p1}, Lio/jsonwebtoken/impl/JwtMap;->toDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 152
    :cond_2
    :goto_0
    invoke-direct {p0, v0, p2}, Lio/jsonwebtoken/impl/DefaultClaims;->castClaimValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAudience()Ljava/lang/String;
    .locals 1

    const-string v0, "aud"

    .line 65
    invoke-virtual {p0, v0}, Lio/jsonwebtoken/impl/JwtMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 2

    .line 76
    const-class v0, Ljava/util/Date;

    const-string v1, "exp"

    invoke-virtual {p0, v1, v0}, Lio/jsonwebtoken/impl/DefaultClaims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "jti"

    .line 109
    invoke-virtual {p0, v0}, Lio/jsonwebtoken/impl/JwtMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuedAt()Ljava/util/Date;
    .locals 2

    .line 98
    const-class v0, Ljava/util/Date;

    const-string v1, "iat"

    invoke-virtual {p0, v1, v0}, Lio/jsonwebtoken/impl/DefaultClaims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    const-string v0, "iss"

    .line 43
    invoke-virtual {p0, v0}, Lio/jsonwebtoken/impl/JwtMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 2

    .line 87
    const-class v0, Ljava/util/Date;

    const-string v1, "nbf"

    invoke-virtual {p0, v1, v0}, Lio/jsonwebtoken/impl/DefaultClaims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    const-string v0, "sub"

    .line 54
    invoke-virtual {p0, v0}, Lio/jsonwebtoken/impl/JwtMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/jsonwebtoken/impl/DefaultClaims;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 129
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/jsonwebtoken/impl/DefaultClaims;->isSpecDate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    check-cast p2, Ljava/util/Date;

    .line 131
    invoke-virtual {p0, p1, p2}, Lio/jsonwebtoken/impl/JwtMap;->setDateAsSeconds(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    invoke-super {p0, p1, p2}, Lio/jsonwebtoken/impl/JwtMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAudience(Ljava/lang/String;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "aud"

    .line 70
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/JwtMap;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setAudience(Ljava/lang/String;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setAudience(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method

.method public setExpiration(Ljava/util/Date;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "exp"

    .line 81
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/JwtMap;->setDateAsSeconds(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic setExpiration(Ljava/util/Date;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setExpiration(Ljava/util/Date;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "jti"

    .line 114
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/JwtMap;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setId(Ljava/lang/String;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setId(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method

.method public setIssuedAt(Ljava/util/Date;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "iat"

    .line 103
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/JwtMap;->setDateAsSeconds(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic setIssuedAt(Ljava/util/Date;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setIssuedAt(Ljava/util/Date;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method

.method public setIssuer(Ljava/lang/String;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "iss"

    .line 48
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/JwtMap;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setIssuer(Ljava/lang/String;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setIssuer(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method

.method public setNotBefore(Ljava/util/Date;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "nbf"

    .line 92
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/JwtMap;->setDateAsSeconds(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic setNotBefore(Ljava/util/Date;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setNotBefore(Ljava/util/Date;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method

.method public setSubject(Ljava/lang/String;)Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "sub"

    .line 59
    invoke-virtual {p0, v0, p1}, Lio/jsonwebtoken/impl/JwtMap;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setSubject(Ljava/lang/String;)Lio/jsonwebtoken/ClaimsMutator;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultClaims;->setSubject(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    move-result-object p1

    return-object p1
.end method
