.class public Lcom/linecorp/linesdk/Scope;
.super Ljava/lang/Object;
.source "Scope.java"


# static fields
.field public static final OPENID_CONNECT:Lcom/linecorp/linesdk/Scope;

.field public static final PROFILE:Lcom/linecorp/linesdk/Scope;

.field private static final scopeInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/linecorp/linesdk/Scope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/Scope;->scopeInstanceMap:Ljava/util/Map;

    .line 30
    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/Scope;->PROFILE:Lcom/linecorp/linesdk/Scope;

    .line 35
    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "openid"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/Scope;->OPENID_CONNECT:Lcom/linecorp/linesdk/Scope;

    .line 40
    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "phone"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "gender"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "birthdate"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "address"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "real_name"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/linecorp/linesdk/Scope;->code:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/linecorp/linesdk/Scope;->scopeInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static convertToCodeList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/Scope;

    .line 141
    iget-object v1, v1, Lcom/linecorp/linesdk/Scope;->code:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertToScopeList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    invoke-static {v1}, Lcom/linecorp/linesdk/Scope;->findScope(Ljava/lang/String;)Lcom/linecorp/linesdk/Scope;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    new-instance v2, Lcom/linecorp/linesdk/Scope;

    invoke-direct {v2, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static findScope(Ljava/lang/String;)Lcom/linecorp/linesdk/Scope;
    .locals 1

    .line 87
    sget-object v0, Lcom/linecorp/linesdk/Scope;->scopeInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/Scope;

    return-object p0
.end method

.method public static join(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 94
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/linecorp/linesdk/Scope;->convertToCodeList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, " "

    .line 99
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseToList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, " "

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 114
    invoke-static {p0}, Lcom/linecorp/linesdk/Scope;->convertToScopeList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 161
    const-class v0, Lcom/linecorp/linesdk/Scope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/Scope;

    .line 165
    iget-object v0, p0, Lcom/linecorp/linesdk/Scope;->code:Ljava/lang/String;

    iget-object p1, p1, Lcom/linecorp/linesdk/Scope;->code:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/linecorp/linesdk/Scope;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scope{code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/Scope;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
