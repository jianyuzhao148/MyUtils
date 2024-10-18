.class public Lcom/linecorp/linesdk/internal/RefreshTokenResult;
.super Ljava/lang/Object;
.source "RefreshTokenResult.java"


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final expiresInMillis:J

.field private final refreshToken:Ljava/lang/String;

.field private final scopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->accessToken:Ljava/lang/String;

    .line 29
    iput-wide p2, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->expiresInMillis:J

    .line 30
    iput-object p4, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->refreshToken:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->scopes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 56
    const-class v1, Lcom/linecorp/linesdk/internal/RefreshTokenResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/internal/RefreshTokenResult;

    .line 60
    iget-wide v1, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->expiresInMillis:J

    iget-wide v3, p1, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->expiresInMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    return v0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->accessToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 62
    :cond_3
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->refreshToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->refreshToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->scopes:Ljava/util/List;

    iget-object p1, p1, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->scopes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresInMillis()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->expiresInMillis:J

    return-wide v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->accessToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-wide v1, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->expiresInMillis:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->refreshToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->scopes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefreshTokenResult{accessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->accessToken:Ljava/lang/String;

    .line 80
    invoke-static {v1}, Lcom/linecorp/linesdk/utils/DebugUtils;->hideIfNotDebug(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expiresInMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->expiresInMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", refreshToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->refreshToken:Ljava/lang/String;

    .line 82
    invoke-static {v2}, Lcom/linecorp/linesdk/utils/DebugUtils;->hideIfNotDebug(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", scopes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->scopes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
