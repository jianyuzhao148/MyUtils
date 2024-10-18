.class public final enum Lcom/shiftup/auth/LineAdapter$State;
.super Ljava/lang/Enum;
.source "LineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shiftup/auth/LineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shiftup/auth/LineAdapter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shiftup/auth/LineAdapter$State;

.field public static final enum FAILED:Lcom/shiftup/auth/LineAdapter$State;

.field public static final enum INIT:Lcom/shiftup/auth/LineAdapter$State;

.field public static final enum SUCCESS:Lcom/shiftup/auth/LineAdapter$State;

.field public static final enum TRYING:Lcom/shiftup/auth/LineAdapter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 226
    new-instance v0, Lcom/shiftup/auth/LineAdapter$State;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shiftup/auth/LineAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shiftup/auth/LineAdapter$State;->INIT:Lcom/shiftup/auth/LineAdapter$State;

    .line 227
    new-instance v1, Lcom/shiftup/auth/LineAdapter$State;

    const-string v3, "TRYING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shiftup/auth/LineAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shiftup/auth/LineAdapter$State;->TRYING:Lcom/shiftup/auth/LineAdapter$State;

    .line 228
    new-instance v3, Lcom/shiftup/auth/LineAdapter$State;

    const-string v5, "SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shiftup/auth/LineAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shiftup/auth/LineAdapter$State;->SUCCESS:Lcom/shiftup/auth/LineAdapter$State;

    .line 229
    new-instance v5, Lcom/shiftup/auth/LineAdapter$State;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shiftup/auth/LineAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shiftup/auth/LineAdapter$State;->FAILED:Lcom/shiftup/auth/LineAdapter$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/shiftup/auth/LineAdapter$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 225
    sput-object v7, Lcom/shiftup/auth/LineAdapter$State;->$VALUES:[Lcom/shiftup/auth/LineAdapter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shiftup/auth/LineAdapter$State;
    .locals 1

    .line 225
    const-class v0, Lcom/shiftup/auth/LineAdapter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shiftup/auth/LineAdapter$State;

    return-object p0
.end method

.method public static values()[Lcom/shiftup/auth/LineAdapter$State;
    .locals 1

    .line 225
    sget-object v0, Lcom/shiftup/auth/LineAdapter$State;->$VALUES:[Lcom/shiftup/auth/LineAdapter$State;

    invoke-virtual {v0}, [Lcom/shiftup/auth/LineAdapter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shiftup/auth/LineAdapter$State;

    return-object v0
.end method
