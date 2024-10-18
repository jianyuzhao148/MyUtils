.class public final Lcom/linecorp/linesdk/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final ALPHABETIC_CHARS:Ljava/lang/String;

.field private static final ALPHA_NUMERIC_CHARS:Ljava/lang/String;

.field private static final LOWERCASE_ALPHABETIC_CHARS:Ljava/lang/String;

.field private static final NUMERIC_CHARS:Ljava/lang/String;

.field private static final UPPERCASE_ALPHABETIC_CHARS:Ljava/lang/String;

.field private static final secureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x61

    const/16 v1, 0x7a

    .line 11
    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/StringUtils;->createString(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linecorp/linesdk/utils/StringUtils;->LOWERCASE_ALPHABETIC_CHARS:Ljava/lang/String;

    const/16 v1, 0x41

    const/16 v2, 0x5a

    .line 13
    invoke-static {v1, v2}, Lcom/linecorp/linesdk/utils/StringUtils;->createString(CC)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/linecorp/linesdk/utils/StringUtils;->UPPERCASE_ALPHABETIC_CHARS:Ljava/lang/String;

    const/16 v2, 0x30

    const/16 v3, 0x39

    .line 15
    invoke-static {v2, v3}, Lcom/linecorp/linesdk/utils/StringUtils;->createString(CC)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/linecorp/linesdk/utils/StringUtils;->NUMERIC_CHARS:Ljava/lang/String;

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linecorp/linesdk/utils/StringUtils;->ALPHABETIC_CHARS:Ljava/lang/String;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linecorp/linesdk/utils/StringUtils;->ALPHA_NUMERIC_CHARS:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/utils/StringUtils;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public static createRandomAlphaNumeric(I)Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/linecorp/linesdk/utils/StringUtils;->ALPHA_NUMERIC_CHARS:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/linecorp/linesdk/utils/StringUtils;->createRandomString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createRandomString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 36
    sget-object v2, Lcom/linecorp/linesdk/utils/StringUtils;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createString(CC)Ljava/lang/String;
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-gt p0, p1, :cond_0

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    int-to-char p0, p0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
