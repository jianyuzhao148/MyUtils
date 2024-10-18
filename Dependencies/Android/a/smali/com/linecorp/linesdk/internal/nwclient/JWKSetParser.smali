.class final Lcom/linecorp/linesdk/internal/nwclient/JWKSetParser;
.super Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;
.source "JWKSetParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser<",
        "Lcom/linecorp/linesdk/internal/JWKSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseJsonToObject(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/internal/JWKSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "keys"

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 23
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 25
    new-instance v3, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;

    invoke-direct {v3}, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;-><init>()V

    const-string v4, "kty"

    .line 26
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->keyType(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;

    const-string v4, "alg"

    .line 27
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->algorithm(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;

    const-string v4, "use"

    .line 28
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->use(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;

    const-string v4, "kid"

    .line 29
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->keyId(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;

    const-string v4, "crv"

    .line 30
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->curve(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;

    const-string v4, "x"

    .line 31
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->x(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;

    const-string v4, "y"

    .line 32
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->y(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;

    .line 33
    invoke-virtual {v3}, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->build()Lcom/linecorp/linesdk/internal/JWKSet$JWK;

    move-result-object v2

    .line 35
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Lcom/linecorp/linesdk/internal/JWKSet$Builder;

    invoke-direct {p1}, Lcom/linecorp/linesdk/internal/JWKSet$Builder;-><init>()V

    .line 39
    invoke-virtual {p1, v0}, Lcom/linecorp/linesdk/internal/JWKSet$Builder;->keys(Ljava/util/List;)Lcom/linecorp/linesdk/internal/JWKSet$Builder;

    .line 40
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/JWKSet$Builder;->build()Lcom/linecorp/linesdk/internal/JWKSet;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic parseJsonToObject(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/JWKSetParser;->parseJsonToObject(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/internal/JWKSet;

    move-result-object p1

    return-object p1
.end method
