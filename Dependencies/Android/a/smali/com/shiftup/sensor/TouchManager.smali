.class public Lcom/shiftup/sensor/TouchManager;
.super Ljava/lang/Object;
.source "TouchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shiftup/sensor/TouchManager$PinchHandler;,
        Lcom/shiftup/sensor/TouchManager$TouchUpHandler;,
        Lcom/shiftup/sensor/TouchManager$TouchMoveHandler;,
        Lcom/shiftup/sensor/TouchManager$TouchDownHandler;
    }
.end annotation


# static fields
.field private static final DRAG:I = 0x1

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x2


# instance fields
.field private first:Lcom/shiftup/sensor/Pointer;

.field private mode:I

.field private pinchDistance:F

.field private second:Lcom/shiftup/sensor/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/shiftup/sensor/TouchManager;->mode:I

    .line 86
    new-instance v0, Lcom/shiftup/sensor/Pointer;

    invoke-direct {v0}, Lcom/shiftup/sensor/Pointer;-><init>()V

    iput-object v0, p0, Lcom/shiftup/sensor/TouchManager;->first:Lcom/shiftup/sensor/Pointer;

    .line 87
    new-instance v0, Lcom/shiftup/sensor/Pointer;

    invoke-direct {v0}, Lcom/shiftup/sensor/Pointer;-><init>()V

    iput-object v0, p0, Lcom/shiftup/sensor/TouchManager;->second:Lcom/shiftup/sensor/Pointer;

    return-void
.end method

.method private GetAllPointers(Landroid/view/MotionEvent;)[Lcom/shiftup/sensor/Pointer;
    .locals 4

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 189
    new-array v1, v0, [Lcom/shiftup/sensor/Pointer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 192
    new-instance v3, Lcom/shiftup/sensor/Pointer;

    invoke-direct {v3, p1, v2}, Lcom/shiftup/sensor/Pointer;-><init>(Landroid/view/MotionEvent;I)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic access$000(IFF)V
    .locals 0

    .line 77
    invoke-static {p0, p1, p2}, Lcom/shiftup/sensor/TouchManager;->nativeTouchDown(IFF)V

    return-void
.end method

.method static synthetic access$100(IFF)V
    .locals 0

    .line 77
    invoke-static {p0, p1, p2}, Lcom/shiftup/sensor/TouchManager;->nativeTouchMove(IFF)V

    return-void
.end method

.method static synthetic access$200(IFF)V
    .locals 0

    .line 77
    invoke-static {p0, p1, p2}, Lcom/shiftup/sensor/TouchManager;->nativeTouchUp(IFF)V

    return-void
.end method

.method static synthetic access$300(FFF)V
    .locals 0

    .line 77
    invoke-static {p0, p1, p2}, Lcom/shiftup/sensor/TouchManager;->nativePinch(FFF)V

    return-void
.end method

.method private static native nativePinch(FFF)V
.end method

.method private static native nativeTouchDown(IFF)V
.end method

.method private static native nativeTouchMove(IFF)V
.end method

.method private static native nativeTouchUp(IFF)V
.end method


# virtual methods
.method public GetTouchEventHandler(Landroid/view/MotionEvent;)Ljava/lang/Runnable;
    .locals 7

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1

    const/4 v6, 0x5

    if-eq v1, v6, :cond_0

    const/4 v5, 0x6

    if-eq v1, v5, :cond_5

    return-object v4

    .line 144
    :cond_0
    iput v5, p0, Lcom/shiftup/sensor/TouchManager;->mode:I

    .line 145
    iget-object v1, p0, Lcom/shiftup/sensor/TouchManager;->second:Lcom/shiftup/sensor/Pointer;

    invoke-virtual {v1, p1, v0}, Lcom/shiftup/sensor/Pointer;->reset(Landroid/view/MotionEvent;I)V

    .line 146
    iget-object p1, p0, Lcom/shiftup/sensor/TouchManager;->first:Lcom/shiftup/sensor/Pointer;

    iget-object v0, p0, Lcom/shiftup/sensor/TouchManager;->second:Lcom/shiftup/sensor/Pointer;

    invoke-virtual {p1, v0}, Lcom/shiftup/sensor/Pointer;->distance(Lcom/shiftup/sensor/Pointer;)F

    move-result p1

    iput p1, p0, Lcom/shiftup/sensor/TouchManager;->pinchDistance:F

    .line 147
    new-instance p1, Lcom/shiftup/sensor/TouchManager$TouchDownHandler;

    new-array v0, v3, [Lcom/shiftup/sensor/Pointer;

    iget-object v1, p0, Lcom/shiftup/sensor/TouchManager;->second:Lcom/shiftup/sensor/Pointer;

    aput-object v1, v0, v2

    invoke-direct {p1, v0}, Lcom/shiftup/sensor/TouchManager$TouchDownHandler;-><init>([Lcom/shiftup/sensor/Pointer;)V

    return-object p1

    .line 176
    :cond_1
    iput v2, p0, Lcom/shiftup/sensor/TouchManager;->mode:I

    .line 177
    iget-object v0, p0, Lcom/shiftup/sensor/TouchManager;->first:Lcom/shiftup/sensor/Pointer;

    invoke-virtual {v0}, Lcom/shiftup/sensor/Pointer;->invalidate()V

    .line 178
    iget-object v0, p0, Lcom/shiftup/sensor/TouchManager;->second:Lcom/shiftup/sensor/Pointer;

    invoke-virtual {v0}, Lcom/shiftup/sensor/Pointer;->invalidate()V

    .line 180
    new-instance v0, Lcom/shiftup/sensor/TouchManager$TouchUpHandler;

    invoke-direct {p0, p1}, Lcom/shiftup/sensor/TouchManager;->GetAllPointers(Landroid/view/MotionEvent;)[Lcom/shiftup/sensor/Pointer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shiftup/sensor/TouchManager$TouchUpHandler;-><init>([Lcom/shiftup/sensor/Pointer;)V

    return-object v0

    .line 151
    :cond_2
    iget v0, p0, Lcom/shiftup/sensor/TouchManager;->mode:I

    if-eq v0, v5, :cond_3

    new-instance v0, Lcom/shiftup/sensor/TouchManager$TouchMoveHandler;

    invoke-direct {p0, p1}, Lcom/shiftup/sensor/TouchManager;->GetAllPointers(Landroid/view/MotionEvent;)[Lcom/shiftup/sensor/Pointer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shiftup/sensor/TouchManager$TouchMoveHandler;-><init>([Lcom/shiftup/sensor/Pointer;)V

    return-object v0

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/shiftup/sensor/TouchManager;->first:Lcom/shiftup/sensor/Pointer;

    invoke-virtual {v0, p1}, Lcom/shiftup/sensor/Pointer;->update(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/2addr v0, v3

    iget-object v1, p0, Lcom/shiftup/sensor/TouchManager;->second:Lcom/shiftup/sensor/Pointer;

    invoke-virtual {v1, p1}, Lcom/shiftup/sensor/Pointer;->update(Landroid/view/MotionEvent;)Z

    move-result p1

    xor-int/2addr p1, v3

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    return-object v4

    .line 157
    :cond_4
    iget-object p1, p0, Lcom/shiftup/sensor/TouchManager;->first:Lcom/shiftup/sensor/Pointer;

    iget-object v0, p0, Lcom/shiftup/sensor/TouchManager;->second:Lcom/shiftup/sensor/Pointer;

    invoke-virtual {p1, v0}, Lcom/shiftup/sensor/Pointer;->distance(Lcom/shiftup/sensor/Pointer;)F

    move-result p1

    .line 158
    iget v0, p0, Lcom/shiftup/sensor/TouchManager;->pinchDistance:F

    sub-float v0, p1, v0

    .line 159
    iput p1, p0, Lcom/shiftup/sensor/TouchManager;->pinchDistance:F

    .line 161
    new-instance p1, Lcom/shiftup/sensor/TouchManager$PinchHandler;

    iget-object v1, p0, Lcom/shiftup/sensor/TouchManager;->first:Lcom/shiftup/sensor/Pointer;

    invoke-direct {p1, v1, v0}, Lcom/shiftup/sensor/TouchManager$PinchHandler;-><init>(Lcom/shiftup/sensor/Pointer;F)V

    return-object p1

    .line 166
    :cond_5
    iput v2, p0, Lcom/shiftup/sensor/TouchManager;->mode:I

    .line 167
    iget-object v1, p0, Lcom/shiftup/sensor/TouchManager;->first:Lcom/shiftup/sensor/Pointer;

    invoke-virtual {v1}, Lcom/shiftup/sensor/Pointer;->invalidate()V

    .line 168
    iget-object v1, p0, Lcom/shiftup/sensor/TouchManager;->second:Lcom/shiftup/sensor/Pointer;

    invoke-virtual {v1}, Lcom/shiftup/sensor/Pointer;->invalidate()V

    .line 172
    new-instance v1, Lcom/shiftup/sensor/TouchManager$TouchUpHandler;

    new-array v3, v3, [Lcom/shiftup/sensor/Pointer;

    new-instance v4, Lcom/shiftup/sensor/Pointer;

    invoke-direct {v4, p1, v0}, Lcom/shiftup/sensor/Pointer;-><init>(Landroid/view/MotionEvent;I)V

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Lcom/shiftup/sensor/TouchManager$TouchUpHandler;-><init>([Lcom/shiftup/sensor/Pointer;)V

    return-object v1

    .line 138
    :cond_6
    iput v3, p0, Lcom/shiftup/sensor/TouchManager;->mode:I

    .line 139
    iget-object v1, p0, Lcom/shiftup/sensor/TouchManager;->first:Lcom/shiftup/sensor/Pointer;

    invoke-virtual {v1, p1, v0}, Lcom/shiftup/sensor/Pointer;->reset(Landroid/view/MotionEvent;I)V

    .line 140
    new-instance p1, Lcom/shiftup/sensor/TouchManager$TouchDownHandler;

    new-array v0, v3, [Lcom/shiftup/sensor/Pointer;

    iget-object v1, p0, Lcom/shiftup/sensor/TouchManager;->first:Lcom/shiftup/sensor/Pointer;

    aput-object v1, v0, v2

    invoke-direct {p1, v0}, Lcom/shiftup/sensor/TouchManager$TouchDownHandler;-><init>([Lcom/shiftup/sensor/Pointer;)V

    return-object p1
.end method
