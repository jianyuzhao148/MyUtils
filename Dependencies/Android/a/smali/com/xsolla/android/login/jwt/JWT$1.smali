.class final Lcom/xsolla/android/login/jwt/JWT$1;
.super Ljava/lang/Object;
.source "JWT.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/login/jwt/JWT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xsolla/android/login/jwt/JWT;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xsolla/android/login/jwt/JWT;
    .locals 1

    .line 107
    new-instance v0, Lcom/xsolla/android/login/jwt/JWT;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xsolla/android/login/jwt/JWT;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/xsolla/android/login/jwt/JWT$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xsolla/android/login/jwt/JWT;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xsolla/android/login/jwt/JWT;
    .locals 0

    .line 112
    new-array p1, p1, [Lcom/xsolla/android/login/jwt/JWT;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/xsolla/android/login/jwt/JWT$1;->newArray(I)[Lcom/xsolla/android/login/jwt/JWT;

    move-result-object p1

    return-object p1
.end method
