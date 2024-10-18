.class Lcom/shiftup/renderer/OpenGLSurfaceView$2;
.super Ljava/lang/Object;
.source "OpenGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/renderer/OpenGLSurfaceView;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/renderer/OpenGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/shiftup/renderer/OpenGLSurfaceView;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/shiftup/renderer/OpenGLSurfaceView$2;->this$0:Lcom/shiftup/renderer/OpenGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 68
    invoke-static {}, Lcom/shiftup/renderer/OpenGLSurfaceView;->access$100()V

    return-void
.end method
