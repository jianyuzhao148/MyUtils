.class public final Lcom/shiftup/auth/AuthAdapterFactory;
.super Ljava/lang/Object;
.source "AuthAdapterFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAuthAdapter(Lcom/shiftup/auth/AuthPlatform;)Lcom/shiftup/auth/AuthAdapter;
    .locals 1

    .line 7
    sget-object v0, Lcom/shiftup/auth/AuthAdapterFactory$1;->$SwitchMap$com$shiftup$auth$AuthPlatform:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    new-instance p0, Lcom/shiftup/auth/FacebookAdapter;

    invoke-direct {p0}, Lcom/shiftup/auth/FacebookAdapter;-><init>()V

    return-object p0

    .line 13
    :cond_1
    new-instance p0, Lcom/shiftup/auth/GoogleAuthAdapter;

    invoke-direct {p0}, Lcom/shiftup/auth/GoogleAuthAdapter;-><init>()V

    return-object p0

    .line 11
    :cond_2
    new-instance p0, Lcom/shiftup/auth/AppleAdapter;

    invoke-direct {p0}, Lcom/shiftup/auth/AppleAdapter;-><init>()V

    return-object p0

    .line 9
    :cond_3
    new-instance p0, Lcom/shiftup/auth/LineAdapter;

    invoke-direct {p0}, Lcom/shiftup/auth/LineAdapter;-><init>()V

    return-object p0
.end method
