.class Lcom/shiftup/ui/MovieActivity$3;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/ui/MovieActivity;->onPrepared(Landroid/media/MediaPlayer;)V
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

    .line 234
    iput-object p1, p0, Lcom/shiftup/ui/MovieActivity$3;->this$0:Lcom/shiftup/ui/MovieActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSeekComplete : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shiftup/ui/MovieActivity$3;->this$0:Lcom/shiftup/ui/MovieActivity;

    invoke-static {v0}, Lcom/shiftup/ui/MovieActivity;->access$100(Lcom/shiftup/ui/MovieActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MovieActivity"

    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/shiftup/ui/MovieActivity$3;->this$0:Lcom/shiftup/ui/MovieActivity;

    invoke-static {p1}, Lcom/shiftup/ui/MovieActivity;->access$200(Lcom/shiftup/ui/MovieActivity;)V

    return-void
.end method
