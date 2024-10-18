.class public Lcom/shiftup/util/Memory;
.super Ljava/lang/Object;
.source "Memory.java"


# static fields
.field static final TAG:Ljava/lang/String; = "FShift_Memory"

.field static s_intervalCheck:J

.field static s_lastCheckTime:J

.field static s_memInfo:Landroid/app/ActivityManager$MemoryInfo;

.field static s_showLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    sput-object v0, Lcom/shiftup/util/Memory;->s_memInfo:Landroid/app/ActivityManager$MemoryInfo;

    const-wide/16 v0, 0x0

    .line 12
    sput-wide v0, Lcom/shiftup/util/Memory;->s_lastCheckTime:J

    const-wide/16 v0, 0xbb8

    .line 15
    sput-wide v0, Lcom/shiftup/util/Memory;->s_intervalCheck:J

    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/shiftup/util/Memory;->s_showLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckInterval()J
    .locals 2

    .line 80
    sget-wide v0, Lcom/shiftup/util/Memory;->s_intervalCheck:J

    return-wide v0
.end method

.method public static getFreeMemory()J
    .locals 3

    .line 38
    invoke-static {}, Lcom/shiftup/util/Memory;->refreshMemInfo()V

    .line 39
    sget-boolean v0, Lcom/shiftup/util/Memory;->s_showLog:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFreeMemory() freeMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shiftup/util/Memory;->s_memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FShift_Memory"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    sget-object v0, Lcom/shiftup/util/Memory;->s_memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static getTotalMemory()J
    .locals 3

    .line 48
    invoke-static {}, Lcom/shiftup/util/Memory;->refreshMemInfo()V

    .line 49
    sget-boolean v0, Lcom/shiftup/util/Memory;->s_showLog:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTotalMemory() totalMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shiftup/util/Memory;->s_memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FShift_Memory"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    sget-object v0, Lcom/shiftup/util/Memory;->s_memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method

.method static refreshMemInfo()V
    .locals 6

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    sget-wide v2, Lcom/shiftup/util/Memory;->s_lastCheckTime:J

    sget-wide v4, Lcom/shiftup/util/Memory;->s_intervalCheck:J

    add-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    .line 26
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 29
    sput-wide v0, Lcom/shiftup/util/Memory;->s_lastCheckTime:J

    const-string v0, "activity"

    .line 30
    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 31
    sget-object v1, Lcom/shiftup/util/Memory;->s_memInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    :cond_0
    return-void
.end method

.method public static setCheckInterval(J)V
    .locals 4

    const-string v0, "FShift_Memory"

    const-wide/16 v1, 0x64

    cmp-long v3, p0, v1

    if-gez v3, :cond_1

    .line 60
    sget-boolean v1, Lcom/shiftup/util/Memory;->s_showLog:Z

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval is too short!!. (>= 100) input="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-wide/32 v1, 0x493e0

    cmp-long v3, p0, v1

    if-lez v3, :cond_3

    .line 69
    sget-boolean v1, Lcom/shiftup/util/Memory;->s_showLog:Z

    if-eqz v1, :cond_2

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval is too long!!. (<= 300000) input="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 75
    :cond_3
    sput-wide p0, Lcom/shiftup/util/Memory;->s_intervalCheck:J

    return-void
.end method

.method public static setShowLog(Z)V
    .locals 0

    .line 85
    sput-boolean p0, Lcom/shiftup/util/Memory;->s_showLog:Z

    return-void
.end method
