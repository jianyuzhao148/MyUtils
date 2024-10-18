.class public Lcom/linecorp/linesdk/auth/internal/LineAppVersion;
.super Ljava/lang/Object;
.source "LineAppVersion.java"


# instance fields
.field private final major:I

.field private final minor:I

.field private final revision:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->major:I

    .line 52
    iput p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->minor:I

    .line 53
    iput p3, p0, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->revision:I

    return-void
.end method

.method public static getLineAppVersion(Landroid/content/Context;)Lcom/linecorp/linesdk/auth/internal/LineAppVersion;
    .locals 4

    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "jp.naver.line.android"

    const/16 v2, 0x80

    .line 24
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 35
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "."

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_1
    new-instance p0, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;

    .line 38
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 39
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 40
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;-><init>(III)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 84
    const-class v2, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;

    .line 88
    iget v2, p0, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->major:I

    iget v3, p1, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->major:I

    if-eq v2, v3, :cond_2

    return v1

    .line 89
    :cond_2
    iget v2, p0, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->minor:I

    iget v3, p1, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->minor:I

    if-eq v2, v3, :cond_3

    return v1

    .line 90
    :cond_3
    iget v2, p0, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->revision:I

    iget p1, p1, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->revision:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 97
    iget v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->major:I

    mul-int/lit8 v0, v0, 0x1f

    .line 98
    iget v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->minor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->revision:I

    add-int/2addr v0, v1

    return v0
.end method
