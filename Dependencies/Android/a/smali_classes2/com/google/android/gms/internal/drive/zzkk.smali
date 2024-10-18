.class public abstract Lcom/google/android/gms/internal/drive/zzkk;
.super Lcom/google/android/gms/internal/drive/zzit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zzkk$zzb;,
        Lcom/google/android/gms/internal/drive/zzkk$zzc;,
        Lcom/google/android/gms/internal/drive/zzkk$zza;,
        Lcom/google/android/gms/internal/drive/zzkk$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/drive/zzkk$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/drive/zzit<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/drive/zzkk<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzrq:Lcom/google/android/gms/internal/drive/zzmy;

.field private zzrr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzkk;->zzrs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzit;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmy;->zzfa()Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrr:I

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/drive/zzlq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/drive/zzme;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzme;-><init>(Lcom/google/android/gms/internal/drive/zzlq;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 62
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 64
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 65
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 63
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzkk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/drive/zzkk<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/drive/zzkk;->zzrs:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/drive/zzkk;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/drive/zzkk<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 67
    sget v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzrx:I

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/drive/zzkk;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 75
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->zzej()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzmd;->zzq(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/drive/zzmf;->zzp(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 77
    sget p1, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzry:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 80
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/drive/zzkk;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method static zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzkk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/drive/zzkk<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/drive/zzkk;->zzrs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    if-nez v0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/drive/zzkk;->zzrs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 46
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zznd;->zzh(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    .line 47
    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsc:I

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/drive/zzkk;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    if-eqz v0, :cond_1

    .line 53
    sget-object v1, Lcom/google/android/gms/internal/drive/zzkk;->zzrs:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_0
    sget v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsc:I

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/drive/zzkk;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->zzej()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzmd;->zzq(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzmf;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzit;->zzne:I

    if-eqz v0, :cond_0

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->zzej()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzmd;->zzq(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/drive/zzmf;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzit;->zzne:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    .line 23
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/drive/zzkk;->zza(Lcom/google/android/gms/internal/drive/zzkk;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/drive/zzlt;->zza(Lcom/google/android/gms/internal/drive/zzlq;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zzb(Lcom/google/android/gms/internal/drive/zzjr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->zzej()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzmd;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjt;->zza(Lcom/google/android/gms/internal/drive/zzjr;)Lcom/google/android/gms/internal/drive/zzjt;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzmf;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    return-void
.end method

.method final zzbm()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrr:I

    return v0
.end method

.method protected final zzbp()V
    .locals 1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->zzej()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzmd;->zzq(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/drive/zzmf;->zzd(Ljava/lang/Object;)V

    return-void
.end method

.method protected final zzcw()Lcom/google/android/gms/internal/drive/zzkk$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/drive/zzkk<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/drive/zzkk$zza<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 20
    sget v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsb:I

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/drive/zzkk;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk$zza;

    return-object v0
.end method

.method public final zzcx()I
    .locals 2

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrr:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->zzej()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzmd;->zzq(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/drive/zzmf;->zzn(Ljava/lang/Object;)I

    move-result v0

    .line 36
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrr:I

    .line 37
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrr:I

    return v0
.end method

.method public final synthetic zzcy()Lcom/google/android/gms/internal/drive/zzlr;
    .locals 2

    .line 111
    sget v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsb:I

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/drive/zzkk;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk$zza;

    .line 114
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->zza(Lcom/google/android/gms/internal/drive/zzkk;)Lcom/google/android/gms/internal/drive/zzkk$zza;

    return-object v0
.end method

.method public final synthetic zzda()Lcom/google/android/gms/internal/drive/zzlq;
    .locals 2

    .line 123
    sget v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsc:I

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/drive/zzkk;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    return-object v0
.end method

.method final zzo(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrr:I

    return-void
.end method
