.class final Lcom/linecorp/linesdk/LineProfile$1;
.super Ljava/lang/Object;
.source "LineProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/LineProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/linecorp/linesdk/LineProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/linecorp/linesdk/LineProfile;
    .locals 1

    .line 16
    new-instance v0, Lcom/linecorp/linesdk/LineProfile;

    invoke-direct {v0, p1}, Lcom/linecorp/linesdk/LineProfile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/LineProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/linecorp/linesdk/LineProfile;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/linecorp/linesdk/LineProfile;
    .locals 0

    .line 21
    new-array p1, p1, [Lcom/linecorp/linesdk/LineProfile;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/LineProfile$1;->newArray(I)[Lcom/linecorp/linesdk/LineProfile;

    move-result-object p1

    return-object p1
.end method
