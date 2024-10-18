.class public Lcom/shiftup/renderer/OpenGLRenderer;
.super Ljava/lang/Object;
.source "OpenGLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private height:I

.field private lastTime:J

.field private msPerFrame:J

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/shiftup/renderer/OpenGLRenderer;->lastTime:J

    const-wide/16 v0, 0x3c

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/shiftup/renderer/OpenGLRenderer;->SetFPS(J)V

    return-void
.end method

.method private static native nativeDone()V
.end method

.method private static native nativeInit(IILjava/lang/String;)V
.end method

.method private static native nativeRender()V
.end method

.method public static native nativeResize(II)V
.end method


# virtual methods
.method public GetHeight()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/shiftup/renderer/OpenGLRenderer;->height:I

    return v0
.end method

.method public GetWidth()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/shiftup/renderer/OpenGLRenderer;->width:I

    return v0
.end method

.method public SetFPS(J)V
    .locals 4

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p1, 0x3c

    :cond_0
    const-wide/16 v2, 0x3e8

    .line 70
    div-long/2addr v2, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/shiftup/renderer/OpenGLRenderer;->msPerFrame:J

    return-void
.end method

.method public SetSize(II)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/shiftup/renderer/OpenGLRenderer;->width:I

    .line 57
    iput p2, p0, Lcom/shiftup/renderer/OpenGLRenderer;->height:I

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    iget-wide v2, p0, Lcom/shiftup/renderer/OpenGLRenderer;->lastTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-eqz p1, :cond_0

    .line 28
    iget-wide v2, p0, Lcom/shiftup/renderer/OpenGLRenderer;->msPerFrame:J

    cmp-long p1, v4, v2

    if-gez p1, :cond_0

    sub-long/2addr v2, v4

    .line 30
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 38
    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/shiftup/renderer/OpenGLRenderer;->lastTime:J

    .line 40
    invoke-static {}, Lcom/shiftup/renderer/OpenGLRenderer;->nativeRender()V

    .line 41
    invoke-static {}, Lcom/NextFloor/DestinyChild/MainActivity;->SoundTimeCheck()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 52
    invoke-static {p2, p3}, Lcom/shiftup/renderer/OpenGLRenderer;->nativeResize(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    const-string p1, "OpenGLRenderer"

    const-string p2, "Try call nativeInit"

    .line 46
    invoke-static {p1, p2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget p1, p0, Lcom/shiftup/renderer/OpenGLRenderer;->width:I

    iget p2, p0, Lcom/shiftup/renderer/OpenGLRenderer;->height:I

    invoke-static {}, Lcom/shiftup/ui/DCActivity;->GetApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/shiftup/renderer/OpenGLRenderer;->nativeInit(IILjava/lang/String;)V

    return-void
.end method
