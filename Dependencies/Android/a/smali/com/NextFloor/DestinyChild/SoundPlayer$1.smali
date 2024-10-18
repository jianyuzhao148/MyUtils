.class Lcom/NextFloor/DestinyChild/SoundPlayer$1;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/NextFloor/DestinyChild/SoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/NextFloor/DestinyChild/SoundPlayer;


# direct methods
.method constructor <init>(Lcom/NextFloor/DestinyChild/SoundPlayer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/SoundPlayer$1;->this$0:Lcom/NextFloor/DestinyChild/SoundPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, -0x1

    const-string v2, "Moderato"

    if-nez p3, :cond_0

    .line 61
    :try_start_0
    invoke-static {}, Lcom/NextFloor/DestinyChild/SoundPlayer;->access$100()F

    move-result v5

    .line 62
    invoke-static {}, Lcom/NextFloor/DestinyChild/SoundPlayer;->access$200()F

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, p1

    move v4, p2

    .line 61
    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    invoke-static {p1}, Lcom/NextFloor/DestinyChild/SoundPlayer;->access$002(I)I

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {v1}, Lcom/NextFloor/DestinyChild/SoundPlayer;->access$002(I)I

    .line 71
    :goto_0
    invoke-static {v0}, Lcom/NextFloor/DestinyChild/SoundPlayer;->access$302(I)I

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SoundPool Load Listener : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/NextFloor/DestinyChild/SoundPlayer;->access$000()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Sound Load Complete but cannot play"

    .line 76
    invoke-static {v2, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v1}, Lcom/NextFloor/DestinyChild/SoundPlayer;->access$002(I)I

    .line 78
    invoke-static {v0}, Lcom/NextFloor/DestinyChild/SoundPlayer;->access$302(I)I

    const-string p1, "Sound Load Done2"

    .line 79
    invoke-static {v2, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
