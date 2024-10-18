.class Lcom/NextFloor/DestinyChild/MusicPlayer$1;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NextFloor/DestinyChild/MusicPlayer;->playMusic(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/NextFloor/DestinyChild/MusicPlayer;

.field final synthetic val$fPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/NextFloor/DestinyChild/MusicPlayer;Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/MusicPlayer$1;->this$0:Lcom/NextFloor/DestinyChild/MusicPlayer;

    iput-object p2, p0, Lcom/NextFloor/DestinyChild/MusicPlayer$1;->val$fPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 89
    iget-object p1, p0, Lcom/NextFloor/DestinyChild/MusicPlayer$1;->this$0:Lcom/NextFloor/DestinyChild/MusicPlayer;

    invoke-static {p1}, Lcom/NextFloor/DestinyChild/MusicPlayer;->access$000(Lcom/NextFloor/DestinyChild/MusicPlayer;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/NextFloor/DestinyChild/MusicPlayer$1;->val$fPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
