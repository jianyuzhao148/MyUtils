.class public Lcom/facebook/share/model/CameraEffectArguments;
.super Ljava/lang/Object;
.source "CameraEffectArguments.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/CameraEffectArguments$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/CameraEffectArguments;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final params:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/facebook/share/model/CameraEffectArguments$1;

    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectArguments$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/CameraEffectArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/CameraEffectArguments;->params:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/CameraEffectArguments$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/facebook/share/model/CameraEffectArguments$Builder;->access$000(Lcom/facebook/share/model/CameraEffectArguments$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/CameraEffectArguments;->params:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/CameraEffectArguments$Builder;Lcom/facebook/share/model/CameraEffectArguments$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/share/model/CameraEffectArguments;-><init>(Lcom/facebook/share/model/CameraEffectArguments$Builder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/model/CameraEffectArguments;)Landroid/os/Bundle;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/facebook/share/model/CameraEffectArguments;->params:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "out",
            "flags"
        }
    .end annotation

    .line 98
    iget-object p2, p0, Lcom/facebook/share/model/CameraEffectArguments;->params:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
