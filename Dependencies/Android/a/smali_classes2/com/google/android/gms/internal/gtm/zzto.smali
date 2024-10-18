.class public abstract Lcom/google/android/gms/internal/gtm/zzto;
.super Lcom/google/android/gms/internal/gtm/zzss;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzxy;->zzx()Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzss;-><init>()V

    return-void
.end method
