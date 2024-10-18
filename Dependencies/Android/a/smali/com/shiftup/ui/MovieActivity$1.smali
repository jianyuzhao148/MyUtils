.class Lcom/shiftup/ui/MovieActivity$1;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/ui/MovieActivity;->loadVideoSource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/ui/MovieActivity;


# direct methods
.method constructor <init>(Lcom/shiftup/ui/MovieActivity;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/shiftup/ui/MovieActivity$1;->this$0:Lcom/shiftup/ui/MovieActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/shiftup/ui/MovieActivity$1;->this$0:Lcom/shiftup/ui/MovieActivity;

    invoke-static {p1}, Lcom/shiftup/ui/MovieActivity;->access$000(Lcom/shiftup/ui/MovieActivity;)V

    .line 200
    iget-object p1, p0, Lcom/shiftup/ui/MovieActivity$1;->this$0:Lcom/shiftup/ui/MovieActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
