.class public Lcom/google/android/gms/drive/query/internal/FilterHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbc:Lcom/google/android/gms/drive/query/Filter;

.field private final zzmd:Lcom/google/android/gms/drive/query/internal/zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/query/internal/zzb<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzme:Lcom/google/android/gms/drive/query/internal/zzd;

.field private final zzmf:Lcom/google/android/gms/drive/query/internal/zzr;

.field private final zzmg:Lcom/google/android/gms/drive/query/internal/zzv;

.field private final zzmh:Lcom/google/android/gms/drive/query/internal/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/query/internal/zzp<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzmi:Lcom/google/android/gms/drive/query/internal/zzt;

.field private final zzmj:Lcom/google/android/gms/drive/query/internal/zzn;

.field private final zzmk:Lcom/google/android/gms/drive/query/internal/zzl;

.field private final zzml:Lcom/google/android/gms/drive/query/internal/zzz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/query/internal/zzb;Lcom/google/android/gms/drive/query/internal/zzd;Lcom/google/android/gms/drive/query/internal/zzr;Lcom/google/android/gms/drive/query/internal/zzv;Lcom/google/android/gms/drive/query/internal/zzp;Lcom/google/android/gms/drive/query/internal/zzt;Lcom/google/android/gms/drive/query/internal/zzn;Lcom/google/android/gms/drive/query/internal/zzl;Lcom/google/android/gms/drive/query/internal/zzz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/query/internal/zzb<",
            "*>;",
            "Lcom/google/android/gms/drive/query/internal/zzd;",
            "Lcom/google/android/gms/drive/query/internal/zzr;",
            "Lcom/google/android/gms/drive/query/internal/zzv;",
            "Lcom/google/android/gms/drive/query/internal/zzp<",
            "*>;",
            "Lcom/google/android/gms/drive/query/internal/zzt;",
            "Lcom/google/android/gms/drive/query/internal/zzn<",
            "*>;",
            "Lcom/google/android/gms/drive/query/internal/zzl;",
            "Lcom/google/android/gms/drive/query/internal/zzz;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmd:Lcom/google/android/gms/drive/query/internal/zzb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzme:Lcom/google/android/gms/drive/query/internal/zzd;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmf:Lcom/google/android/gms/drive/query/internal/zzr;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmg:Lcom/google/android/gms/drive/query/internal/zzv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmh:Lcom/google/android/gms/drive/query/internal/zzp;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmi:Lcom/google/android/gms/drive/query/internal/zzt;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmj:Lcom/google/android/gms/drive/query/internal/zzn;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmk:Lcom/google/android/gms/drive/query/internal/zzl;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzml:Lcom/google/android/gms/drive/query/internal/zzz;

    if-eqz p1, :cond_0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 16
    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_2
    if-eqz p4, :cond_3

    .line 18
    iput-object p4, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_3
    if-eqz p5, :cond_4

    .line 20
    iput-object p5, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_4
    if-eqz p6, :cond_5

    .line 22
    iput-object p6, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_5
    if-eqz p7, :cond_6

    .line 24
    iput-object p7, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_6
    if-eqz p8, :cond_7

    .line 26
    iput-object p8, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_7
    if-eqz p9, :cond_8

    .line 28
    iput-object p9, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    return-void

    .line 29
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one filter must be set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getFilter()Lcom/google/android/gms/drive/query/Filter;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzbc:Lcom/google/android/gms/drive/query/Filter;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmd:Lcom/google/android/gms/drive/query/internal/zzb;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzme:Lcom/google/android/gms/drive/query/internal/zzd;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmf:Lcom/google/android/gms/drive/query/internal/zzr;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmg:Lcom/google/android/gms/drive/query/internal/zzv;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmh:Lcom/google/android/gms/drive/query/internal/zzp;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmi:Lcom/google/android/gms/drive/query/internal/zzt;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmj:Lcom/google/android/gms/drive/query/internal/zzn;

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzmk:Lcom/google/android/gms/drive/query/internal/zzl;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzml:Lcom/google/android/gms/drive/query/internal/zzz;

    const/16 v2, 0x9

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 58
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
