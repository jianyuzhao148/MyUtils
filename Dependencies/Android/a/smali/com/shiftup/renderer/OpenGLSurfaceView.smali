.class public Lcom/shiftup/renderer/OpenGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "OpenGLSurfaceView.java"


# static fields
.field private static final OPENGLES_VERSION:I = 0x2


# instance fields
.field private mRenderer:Lcom/shiftup/renderer/OpenGLRenderer;

.field private touchMgr:Lcom/shiftup/sensor/TouchManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shiftup/renderer/OpenGLRenderer;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setFocusable(Z)V

    .line 21
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setFocusableInTouchMode(Z)V

    const/4 p1, 0x2

    .line 22
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 23
    invoke-static {p1}, Lcom/shiftup/renderer/OpenGLSurfaceView;->nativeSetOpenglesVersion(I)V

    .line 25
    iput-object p2, p0, Lcom/shiftup/renderer/OpenGLSurfaceView;->mRenderer:Lcom/shiftup/renderer/OpenGLRenderer;

    .line 26
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 28
    new-instance p1, Lcom/shiftup/sensor/TouchManager;

    invoke-direct {p1}, Lcom/shiftup/sensor/TouchManager;-><init>()V

    iput-object p1, p0, Lcom/shiftup/renderer/OpenGLSurfaceView;->touchMgr:Lcom/shiftup/sensor/TouchManager;

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 11
    invoke-static {}, Lcom/shiftup/renderer/OpenGLSurfaceView;->nativeResume()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 11
    invoke-static {}, Lcom/shiftup/renderer/OpenGLSurfaceView;->nativePause()V

    return-void
.end method

.method private static native nativePause()V
.end method

.method private static native nativeResume()V
.end method

.method private static native nativeSetOpenglesVersion(I)V
.end method


# virtual methods
.method public GetHeight()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/shiftup/renderer/OpenGLSurfaceView;->mRenderer:Lcom/shiftup/renderer/OpenGLRenderer;

    invoke-virtual {v0}, Lcom/shiftup/renderer/OpenGLRenderer;->GetHeight()I

    move-result v0

    return v0
.end method

.method public GetWidth()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/shiftup/renderer/OpenGLSurfaceView;->mRenderer:Lcom/shiftup/renderer/OpenGLRenderer;

    invoke-virtual {v0}, Lcom/shiftup/renderer/OpenGLRenderer;->GetWidth()I

    move-result v0

    return v0
.end method

.method public SetFPS(I)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/shiftup/renderer/OpenGLSurfaceView;->mRenderer:Lcom/shiftup/renderer/OpenGLRenderer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/shiftup/renderer/OpenGLRenderer;->SetFPS(J)V

    return-void
.end method

.method public SetSize(II)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shiftup/renderer/OpenGLSurfaceView;->mRenderer:Lcom/shiftup/renderer/OpenGLRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/shiftup/renderer/OpenGLRenderer;->SetSize(II)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 66
    new-instance v0, Lcom/shiftup/renderer/OpenGLSurfaceView$2;

    invoke-direct {v0, p0}, Lcom/shiftup/renderer/OpenGLSurfaceView$2;-><init>(Lcom/shiftup/renderer/OpenGLSurfaceView;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 71
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 58
    new-instance v0, Lcom/shiftup/renderer/OpenGLSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/shiftup/renderer/OpenGLSurfaceView$1;-><init>(Lcom/shiftup/renderer/OpenGLSurfaceView;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shiftup/renderer/OpenGLSurfaceView;->touchMgr:Lcom/shiftup/sensor/TouchManager;

    invoke-virtual {v0, p1}, Lcom/shiftup/sensor/TouchManager;->GetTouchEventHandler(Landroid/view/MotionEvent;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
