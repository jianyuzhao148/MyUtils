.class public final Lcom/facebook/AccessToken$Companion;
.super Ljava/lang/Object;
.source "AccessToken.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/AccessToken$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExpired$facebook_core_release(Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;
    .locals 15

    const-string v0, "current"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    new-instance v0, Lcom/facebook/AccessToken;

    .line 594
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 596
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 597
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v5

    .line 598
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v6

    .line 599
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->getExpiredPermissions()Ljava/util/Set;

    move-result-object v7

    .line 600
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    move-result-object v8

    .line 601
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 602
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 603
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->getDataAccessExpirationTime()Ljava/util/Date;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x400

    const/4 v14, 0x0

    move-object v1, v0

    .line 593
    invoke-direct/range {v1 .. v14}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final createFromJSONObject$facebook_core_release(Lorg/json/JSONObject;)Lcom/facebook/AccessToken;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    .line 657
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    const-string v0, "token"

    .line 661
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 662
    new-instance v9, Ljava/util/Date;

    const-string v1, "expires_at"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v9, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-string v1, "permissions"

    .line 663
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v3, "declined_permissions"

    .line 664
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "expired_permissions"

    .line 665
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 666
    new-instance v10, Ljava/util/Date;

    const-string v5, "last_refresh"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    const-string v5, "source"

    .line 667
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "jsonObject.getString(SOURCE_KEY)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/facebook/AccessTokenSource;->valueOf(Ljava/lang/String;)Lcom/facebook/AccessTokenSource;

    move-result-object v8

    const-string v5, "application_id"

    .line 668
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "user_id"

    .line 669
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 670
    new-instance v11, Ljava/util/Date;

    const-wide/16 v12, 0x0

    const-string v7, "data_access_expiration_time"

    invoke-virtual {p1, v7, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    const/4 v7, 0x0

    const-string v12, "graph_domain"

    .line 671
    invoke-virtual {p1, v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 672
    new-instance p1, Lcom/facebook/AccessToken;

    .line 673
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationId"

    .line 674
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    .line 675
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    const-string v0, "permissionsArray"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/internal/Utility;->jsonArrayToStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    const-string v1, "declinedPermissionsArray"

    .line 677
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/facebook/internal/Utility;->jsonArrayToStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v7

    if-nez v4, :cond_0

    .line 678
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 679
    :cond_0
    invoke-static {v4}, Lcom/facebook/internal/Utility;->jsonArrayToStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    :goto_0
    move-object v13, v1

    move-object v1, p1

    move-object v3, v5

    move-object v4, v6

    move-object v5, v0

    move-object v6, v7

    move-object v7, v13

    .line 672
    invoke-direct/range {v1 .. v12}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    return-object p1

    .line 659
    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Unknown AccessToken serialization format."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final createFromLegacyCache$facebook_core_release(Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "bundle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.facebook.TokenCachingStrategy.Permissions"

    .line 608
    invoke-virtual {v0, v1, v2}, Lcom/facebook/AccessToken$Companion;->getPermissionsFromBundle$facebook_core_release(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v2, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    .line 610
    invoke-virtual {v0, v1, v2}, Lcom/facebook/AccessToken$Companion;->getPermissionsFromBundle$facebook_core_release(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const-string v2, "com.facebook.TokenCachingStrategy.ExpiredPermissions"

    .line 612
    invoke-virtual {v0, v1, v2}, Lcom/facebook/AccessToken$Companion;->getPermissionsFromBundle$facebook_core_release(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 613
    sget-object v2, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v2, v1}, Lcom/facebook/LegacyTokenHelper$Companion;->getApplicationId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 614
    sget-object v4, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 615
    sget-object v3, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v5, v3

    .line 617
    invoke-virtual {v2, v1}, Lcom/facebook/LegacyTokenHelper$Companion;->getToken(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    if-nez v4, :cond_1

    return-object v3

    .line 618
    :cond_1
    invoke-static {v4}, Lcom/facebook/internal/Utility;->awaitGetGraphMeRequestWithCache(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v6, v3

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v10, "id"

    .line 621
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    new-instance v17, Lcom/facebook/AccessToken;

    if-nez v5, :cond_3

    return-object v3

    :cond_3
    if-nez v6, :cond_4

    return-object v3

    .line 634
    :cond_4
    invoke-virtual {v2, v1}, Lcom/facebook/LegacyTokenHelper$Companion;->getSource(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;

    move-result-object v10

    .line 635
    invoke-virtual {v2, v1}, Lcom/facebook/LegacyTokenHelper$Companion;->getExpirationDate(Landroid/os/Bundle;)Ljava/util/Date;

    move-result-object v11

    .line 636
    invoke-virtual {v2, v1}, Lcom/facebook/LegacyTokenHelper$Companion;->getLastRefreshDate(Landroid/os/Bundle;)Ljava/util/Date;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x400

    const/16 v16, 0x0

    move-object/from16 v3, v17

    .line 627
    invoke-direct/range {v3 .. v16}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v17

    :catch_0
    return-object v3
.end method

.method public final expireCurrentAccessToken()V
    .locals 1

    .line 475
    sget-object v0, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager$Companion;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0, v0}, Lcom/facebook/AccessToken$Companion;->createExpired$facebook_core_release(Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/AccessToken$Companion;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    :cond_0
    return-void
.end method

.method public final getCurrentAccessToken()Lcom/facebook/AccessToken;
    .locals 1

    .line 430
    sget-object v0, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager$Companion;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public final getPermissionsFromBundle$facebook_core_release(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 647
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 649
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string p2, "{\n            Collections.unmodifiableList(ArrayList(originalPermissions))\n          }"

    .line 648
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final isCurrentAccessTokenActive()Z
    .locals 1

    .line 448
    sget-object v0, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager$Companion;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setCurrentAccessToken(Lcom/facebook/AccessToken;)V
    .locals 1

    .line 439
    sget-object v0, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager$Companion;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/AccessTokenManager;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    return-void
.end method
