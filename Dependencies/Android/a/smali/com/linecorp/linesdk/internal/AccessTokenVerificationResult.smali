.class public Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;
.super Ljava/lang/Object;
.source "AccessTokenVerificationResult.java"


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final expiresInMillis:J

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
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->channelId:Ljava/lang/String;

    .line 25
    iput-wide p2, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->expiresInMillis:J

    .line 26
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->scopes:Ljava/util/List;

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

    if-eqz p1, :cond_4

    .line 46
    const-class v1, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;

    .line 50
    iget-wide v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->expiresInMillis:J

    iget-wide v3, p1, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->expiresInMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    return v0

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->channelId:Ljava/lang/String;

    iget-object v2, p1, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->scopes:Ljava/util/List;

    iget-object p1, p1, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->scopes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getExpiresInMillis()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->expiresInMillis:J

    return-wide v0
.end method

.method public getScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->scopes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->channelId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget-wide v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->expiresInMillis:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->scopes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessTokenVerificationResult{channelId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", expiresInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->expiresInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", scopes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->scopes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
