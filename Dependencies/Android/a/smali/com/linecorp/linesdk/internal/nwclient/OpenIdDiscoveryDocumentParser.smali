.class final Lcom/linecorp/linesdk/internal/nwclient/OpenIdDiscoveryDocumentParser;
.super Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;
.source "OpenIdDiscoveryDocumentParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser<",
        "Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseJsonToObject(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;-><init>()V

    const-string v1, "issuer"

    .line 18
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->issuer(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;

    const-string v1, "authorization_endpoint"

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->authorizationEndpoint(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;

    const-string v1, "token_endpoint"

    .line 24
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->tokenEndpoint(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;

    const-string v1, "jwks_uri"

    .line 27
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->jwksUri(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;

    const-string v1, "response_types_supported"

    .line 31
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->toStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->responseTypesSupported(Ljava/util/List;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;

    const-string v1, "subject_types_supported"

    .line 36
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->toStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->subjectTypesSupported(Ljava/util/List;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;

    const-string v1, "id_token_signing_alg_values_supported"

    .line 41
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/linecorp/linesdk/utils/JSONUtils;->toStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->idTokenSigningAlgValuesSupported(Ljava/util/List;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;

    .line 43
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->build()Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;

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

    .line 11
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/OpenIdDiscoveryDocumentParser;->parseJsonToObject(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;

    move-result-object p1

    return-object p1
.end method
