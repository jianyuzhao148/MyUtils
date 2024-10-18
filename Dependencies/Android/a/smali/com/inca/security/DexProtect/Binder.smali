.class public Lcom/inca/security/DexProtect/Binder;
.super Ljava/lang/Object;
.source "gb"


# static fields
.field private static synthetic iIIiiIiiII:I

.field private static synthetic iiiiIiiiIi:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getABI()I
    .locals 1

    .line 120
    sget v0, Lcom/inca/security/DexProtect/Binder;->iIIiiIiiII:I

    return v0
.end method

.method public static getReserved1()Ljava/lang/Object;
    .locals 1

    .line 212
    sget-object v0, Lcom/inca/security/DexProtect/Binder;->iiiiIiiiIi:Ljava/lang/Object;

    return-object v0
.end method

.method public static setABI(I)V
    .locals 0

    .line 114
    sput p0, Lcom/inca/security/DexProtect/Binder;->iIIiiIiiII:I

    return-void
.end method

.method public static setReserved1(Ljava/lang/Object;)V
    .locals 0

    .line 141
    sput-object p0, Lcom/inca/security/DexProtect/Binder;->iiiiIiiiIi:Ljava/lang/Object;

    return-void
.end method
