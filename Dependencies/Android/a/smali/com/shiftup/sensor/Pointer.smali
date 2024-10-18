.class Lcom/shiftup/sensor/Pointer;
.super Ljava/lang/Object;
.source "TouchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shiftup/sensor/Pointer$Handler;
    }
.end annotation


# instance fields
.field private id:I

.field private x:F

.field private y:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/shiftup/sensor/Pointer;->invalidate()V

    return-void
.end method

.method constructor <init>(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/shiftup/sensor/Pointer;->reset(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method constructor <init>(Lcom/shiftup/sensor/Pointer;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget v0, p1, Lcom/shiftup/sensor/Pointer;->id:I

    iput v0, p0, Lcom/shiftup/sensor/Pointer;->id:I

    .line 14
    iget v0, p1, Lcom/shiftup/sensor/Pointer;->x:F

    iput v0, p0, Lcom/shiftup/sensor/Pointer;->x:F

    .line 15
    iget p1, p1, Lcom/shiftup/sensor/Pointer;->y:F

    iput p1, p0, Lcom/shiftup/sensor/Pointer;->y:F

    return-void
.end method

.method static synthetic access$000(Lcom/shiftup/sensor/Pointer;)I
    .locals 0

    .line 5
    iget p0, p0, Lcom/shiftup/sensor/Pointer;->id:I

    return p0
.end method

.method static synthetic access$100(Lcom/shiftup/sensor/Pointer;)F
    .locals 0

    .line 5
    iget p0, p0, Lcom/shiftup/sensor/Pointer;->x:F

    return p0
.end method

.method static synthetic access$200(Lcom/shiftup/sensor/Pointer;)F
    .locals 0

    .line 5
    iget p0, p0, Lcom/shiftup/sensor/Pointer;->y:F

    return p0
.end method


# virtual methods
.method distance(Lcom/shiftup/sensor/Pointer;)F
    .locals 2

    .line 41
    iget v0, p0, Lcom/shiftup/sensor/Pointer;->x:F

    iget v1, p1, Lcom/shiftup/sensor/Pointer;->x:F

    sub-float/2addr v0, v1

    .line 42
    iget v1, p0, Lcom/shiftup/sensor/Pointer;->y:F

    iget p1, p1, Lcom/shiftup/sensor/Pointer;->y:F

    sub-float/2addr v1, p1

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method invalidate()V
    .locals 1

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/shiftup/sensor/Pointer;->id:I

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/shiftup/sensor/Pointer;->y:F

    iput v0, p0, Lcom/shiftup/sensor/Pointer;->x:F

    return-void
.end method

.method reset(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/shiftup/sensor/Pointer;->id:I

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/shiftup/sensor/Pointer;->x:F

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/shiftup/sensor/Pointer;->y:F

    return-void
.end method

.method update(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 24
    iget v0, p0, Lcom/shiftup/sensor/Pointer;->id:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 28
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/shiftup/sensor/Pointer;->x:F

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/shiftup/sensor/Pointer;->y:F

    const/4 p1, 0x1

    return p1
.end method
