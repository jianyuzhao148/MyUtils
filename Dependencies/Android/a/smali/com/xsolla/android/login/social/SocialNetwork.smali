.class public final enum Lcom/xsolla/android/login/social/SocialNetwork;
.super Ljava/lang/Enum;
.source "SocialNetwork.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xsolla/android/login/social/SocialNetwork;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xsolla/android/login/social/SocialNetwork;

.field public static final enum BAIDU:Lcom/xsolla/android/login/social/SocialNetwork;

.field public static final enum FACEBOOK:Lcom/xsolla/android/login/social/SocialNetwork;

.field public static final enum GOOGLE:Lcom/xsolla/android/login/social/SocialNetwork;

.field public static final enum LINKEDIN:Lcom/xsolla/android/login/social/SocialNetwork;

.field public static final enum NAVER:Lcom/xsolla/android/login/social/SocialNetwork;

.field public static final enum TWITTER:Lcom/xsolla/android/login/social/SocialNetwork;


# instance fields
.field public final providerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 8
    new-instance v0, Lcom/xsolla/android/login/social/SocialNetwork;

    const-string v1, "GOOGLE"

    const/4 v2, 0x0

    const-string v3, "google"

    invoke-direct {v0, v1, v2, v3}, Lcom/xsolla/android/login/social/SocialNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xsolla/android/login/social/SocialNetwork;->GOOGLE:Lcom/xsolla/android/login/social/SocialNetwork;

    .line 9
    new-instance v1, Lcom/xsolla/android/login/social/SocialNetwork;

    const-string v3, "FACEBOOK"

    const/4 v4, 0x1

    const-string v5, "facebook"

    invoke-direct {v1, v3, v4, v5}, Lcom/xsolla/android/login/social/SocialNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xsolla/android/login/social/SocialNetwork;->FACEBOOK:Lcom/xsolla/android/login/social/SocialNetwork;

    .line 10
    new-instance v3, Lcom/xsolla/android/login/social/SocialNetwork;

    const-string v5, "TWITTER"

    const/4 v6, 0x2

    const-string v7, "twitter"

    invoke-direct {v3, v5, v6, v7}, Lcom/xsolla/android/login/social/SocialNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/xsolla/android/login/social/SocialNetwork;->TWITTER:Lcom/xsolla/android/login/social/SocialNetwork;

    .line 11
    new-instance v5, Lcom/xsolla/android/login/social/SocialNetwork;

    const-string v7, "NAVER"

    const/4 v8, 0x3

    const-string v9, "naver"

    invoke-direct {v5, v7, v8, v9}, Lcom/xsolla/android/login/social/SocialNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/xsolla/android/login/social/SocialNetwork;->NAVER:Lcom/xsolla/android/login/social/SocialNetwork;

    .line 12
    new-instance v7, Lcom/xsolla/android/login/social/SocialNetwork;

    const-string v9, "LINKEDIN"

    const/4 v10, 0x4

    const-string v11, "linkedin"

    invoke-direct {v7, v9, v10, v11}, Lcom/xsolla/android/login/social/SocialNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/xsolla/android/login/social/SocialNetwork;->LINKEDIN:Lcom/xsolla/android/login/social/SocialNetwork;

    .line 13
    new-instance v9, Lcom/xsolla/android/login/social/SocialNetwork;

    const-string v11, "BAIDU"

    const/4 v12, 0x5

    const-string v13, "baidu"

    invoke-direct {v9, v11, v12, v13}, Lcom/xsolla/android/login/social/SocialNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/xsolla/android/login/social/SocialNetwork;->BAIDU:Lcom/xsolla/android/login/social/SocialNetwork;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/xsolla/android/login/social/SocialNetwork;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 6
    sput-object v11, Lcom/xsolla/android/login/social/SocialNetwork;->$VALUES:[Lcom/xsolla/android/login/social/SocialNetwork;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/xsolla/android/login/social/SocialNetwork;->providerName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xsolla/android/login/social/SocialNetwork;
    .locals 1

    .line 6
    const-class v0, Lcom/xsolla/android/login/social/SocialNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xsolla/android/login/social/SocialNetwork;

    return-object p0
.end method

.method public static values()[Lcom/xsolla/android/login/social/SocialNetwork;
    .locals 1

    .line 6
    sget-object v0, Lcom/xsolla/android/login/social/SocialNetwork;->$VALUES:[Lcom/xsolla/android/login/social/SocialNetwork;

    invoke-virtual {v0}, [Lcom/xsolla/android/login/social/SocialNetwork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xsolla/android/login/social/SocialNetwork;

    return-object v0
.end method
