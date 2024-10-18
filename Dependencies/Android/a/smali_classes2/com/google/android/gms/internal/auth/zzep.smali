.class public abstract Lcom/google/android/gms/internal/auth/zzep;
.super Lcom/google/android/gms/internal/auth/zzeq;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzfr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/auth/zzep<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/auth/zzeq<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/auth/zzfr;"
    }
.end annotation


# instance fields
.field protected final zzb:Lcom/google/android/gms/internal/auth/zzel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzeq;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzel;->zza()Lcom/google/android/gms/internal/auth/zzel;

    const/4 v0, 0x0

    throw v0
.end method
