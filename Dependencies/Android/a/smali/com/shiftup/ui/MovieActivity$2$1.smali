.class Lcom/shiftup/ui/MovieActivity$2$1;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/ui/MovieActivity$2;->onInfo(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shiftup/ui/MovieActivity$2;


# direct methods
.method constructor <init>(Lcom/shiftup/ui/MovieActivity$2;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/shiftup/ui/MovieActivity$2$1;->this$1:Lcom/shiftup/ui/MovieActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/shiftup/ui/MovieActivity$2$1;->this$1:Lcom/shiftup/ui/MovieActivity$2;

    iget-object v0, v0, Lcom/shiftup/ui/MovieActivity$2;->this$0:Lcom/shiftup/ui/MovieActivity;

    iget-object v0, v0, Lcom/shiftup/ui/MovieActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    return-void
.end method
