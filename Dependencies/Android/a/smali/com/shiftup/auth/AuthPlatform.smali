.class public final enum Lcom/shiftup/auth/AuthPlatform;
.super Ljava/lang/Enum;
.source "AuthPlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shiftup/auth/AuthPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shiftup/auth/AuthPlatform;

.field public static final enum Apple:Lcom/shiftup/auth/AuthPlatform;

.field public static final enum Facebook:Lcom/shiftup/auth/AuthPlatform;

.field public static final enum Google:Lcom/shiftup/auth/AuthPlatform;

.field public static final enum Line:Lcom/shiftup/auth/AuthPlatform;

.field public static final enum Twitter:Lcom/shiftup/auth/AuthPlatform;


# instance fields
.field public adapter:Lcom/shiftup/auth/AuthAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 6
    new-instance v0, Lcom/shiftup/auth/AuthPlatform;

    const-string v1, "Google"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shiftup/auth/AuthPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shiftup/auth/AuthPlatform;->Google:Lcom/shiftup/auth/AuthPlatform;

    .line 7
    new-instance v1, Lcom/shiftup/auth/AuthPlatform;

    const-string v3, "Facebook"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shiftup/auth/AuthPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shiftup/auth/AuthPlatform;->Facebook:Lcom/shiftup/auth/AuthPlatform;

    .line 8
    new-instance v3, Lcom/shiftup/auth/AuthPlatform;

    const-string v5, "Twitter"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shiftup/auth/AuthPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shiftup/auth/AuthPlatform;->Twitter:Lcom/shiftup/auth/AuthPlatform;

    .line 9
    new-instance v5, Lcom/shiftup/auth/AuthPlatform;

    const-string v7, "Line"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shiftup/auth/AuthPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shiftup/auth/AuthPlatform;->Line:Lcom/shiftup/auth/AuthPlatform;

    .line 10
    new-instance v7, Lcom/shiftup/auth/AuthPlatform;

    const-string v9, "Apple"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shiftup/auth/AuthPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shiftup/auth/AuthPlatform;->Apple:Lcom/shiftup/auth/AuthPlatform;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/shiftup/auth/AuthPlatform;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 5
    sput-object v9, Lcom/shiftup/auth/AuthPlatform;->$VALUES:[Lcom/shiftup/auth/AuthPlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shiftup/auth/AuthPlatform;
    .locals 1

    .line 5
    const-class v0, Lcom/shiftup/auth/AuthPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shiftup/auth/AuthPlatform;

    return-object p0
.end method

.method public static values()[Lcom/shiftup/auth/AuthPlatform;
    .locals 1

    .line 5
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->$VALUES:[Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, [Lcom/shiftup/auth/AuthPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shiftup/auth/AuthPlatform;

    return-object v0
.end method


# virtual methods
.method public GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/shiftup/auth/AuthPlatform;->adapter:Lcom/shiftup/auth/AuthAdapter;

    if-nez v0, :cond_0

    .line 16
    invoke-static {p0}, Lcom/shiftup/auth/AuthAdapterFactory;->GetAuthAdapter(Lcom/shiftup/auth/AuthPlatform;)Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/shiftup/auth/AuthPlatform;->adapter:Lcom/shiftup/auth/AuthAdapter;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/shiftup/auth/AuthPlatform;->adapter:Lcom/shiftup/auth/AuthAdapter;

    return-object v0
.end method
