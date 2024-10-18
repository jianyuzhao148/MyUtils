.class Lcom/auth0/android/jwt/JWTPayload;
.super Ljava/lang/Object;
.source "JWTPayload.java"


# instance fields
.field final aud:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final tree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/auth0/android/jwt/Claim;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/auth0/android/jwt/Claim;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p7, p0, Lcom/auth0/android/jwt/JWTPayload;->aud:Ljava/util/List;

    .line 27
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/jwt/JWTPayload;->tree:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method claimForName(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/auth0/android/jwt/JWTPayload;->tree:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/auth0/android/jwt/Claim;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Lcom/auth0/android/jwt/BaseClaim;

    invoke-direct {p1}, Lcom/auth0/android/jwt/BaseClaim;-><init>()V

    :goto_0
    return-object p1
.end method
