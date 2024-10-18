.class abstract Lcom/shiftup/sensor/Pointer$Handler;
.super Ljava/lang/Object;
.source "TouchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shiftup/sensor/Pointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Handler"
.end annotation


# instance fields
.field private final arrId:[I

.field private final arrX:[F

.field private final arrY:[F


# direct methods
.method protected varargs constructor <init>([Lcom/shiftup/sensor/Pointer;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shiftup/sensor/Pointer$Handler;->arrId:[I

    .line 56
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/shiftup/sensor/Pointer$Handler;->arrX:[F

    .line 57
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/shiftup/sensor/Pointer$Handler;->arrY:[F

    const/4 v0, 0x0

    .line 59
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/shiftup/sensor/Pointer$Handler;->arrId:[I

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/shiftup/sensor/Pointer;->access$000(Lcom/shiftup/sensor/Pointer;)I

    move-result v2

    aput v2, v1, v0

    .line 61
    iget-object v1, p0, Lcom/shiftup/sensor/Pointer$Handler;->arrX:[F

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/shiftup/sensor/Pointer;->access$100(Lcom/shiftup/sensor/Pointer;)F

    move-result v2

    aput v2, v1, v0

    .line 62
    iget-object v1, p0, Lcom/shiftup/sensor/Pointer$Handler;->arrY:[F

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/shiftup/sensor/Pointer;->access$200(Lcom/shiftup/sensor/Pointer;)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract forEachPointer(IFF)V
.end method

.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/shiftup/sensor/Pointer$Handler;->arrId:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 69
    aget v1, v1, v0

    iget-object v2, p0, Lcom/shiftup/sensor/Pointer$Handler;->arrX:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/shiftup/sensor/Pointer$Handler;->arrY:[F

    aget v3, v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/shiftup/sensor/Pointer$Handler;->forEachPointer(IFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
