.class public Lcom/shiftup/ui/MovieActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MovieActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static fileName:Ljava/lang/String;

.field public static mBackgroundBlue:I

.field public static mBackgroundGreen:I

.field public static mBackgroundRed:I

.field public static mMute:Z

.field public static mTouchToSkip:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field isCleanedup:Z

.field mPlayer:Landroid/media/MediaPlayer;

.field mSurfaceView:Landroid/view/SurfaceView;

.field private startPosition:I

.field surfaceCreated:Z

.field videoLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "MovieActivity"

    .line 35
    iput-object v0, p0, Lcom/shiftup/ui/MovieActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/shiftup/ui/MovieActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/shiftup/ui/MovieActivity;->cleanup()V

    return-void
.end method

.method static synthetic access$100(Lcom/shiftup/ui/MovieActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/shiftup/ui/MovieActivity;->startPosition:I

    return p0
.end method

.method static synthetic access$200(Lcom/shiftup/ui/MovieActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/shiftup/ui/MovieActivity;->play()V

    return-void
.end method

.method private cleanup()V
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/shiftup/ui/MovieActivity;->isCleanedup:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lcom/shiftup/ui/MovieActivity;->isCleanedup:Z

    .line 292
    iget-object v0, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 294
    iget-object v0, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method private isPlayable()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shiftup/ui/MovieActivity;->videoLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shiftup/ui/MovieActivity;->surfaceCreated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shiftup/ui/MovieActivity;->isCleanedup:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private play()V
    .locals 2

    .line 274
    invoke-direct {p0}, Lcom/shiftup/ui/MovieActivity;->updateResolution()V

    .line 275
    iget-object v0, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-boolean v0, p0, Lcom/shiftup/ui/MovieActivity;->videoLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shiftup/ui/MovieActivity;->surfaceCreated:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_1
    const-string v0, "MovieActivity"

    const-string v1, "play() : pending mPlayer.start()"

    .line 280
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateResolution()V
    .locals 10

    .line 244
    iget-boolean v0, p0, Lcom/shiftup/ui/MovieActivity;->surfaceCreated:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/shiftup/ui/MovieActivity;->videoLoaded:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MovieActivity"

    invoke-static {v3, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v5, v4

    int-to-float v6, v1

    div-float v7, v5, v6

    .line 256
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen width : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v8, p0, Lcom/shiftup/ui/MovieActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    cmpl-float v7, v2, v7

    if-lez v7, :cond_1

    .line 261
    iput v4, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-float/2addr v5, v2

    float-to-int v1, v5

    .line 262
    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 265
    :cond_1
    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-float v6, v6, v2

    float-to-int v1, v6

    .line 266
    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 269
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Movie width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/shiftup/ui/MovieActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public loadVideoSource()V
    .locals 4

    const-string v0, "MovieActivity"

    .line 182
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/raw/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/shiftup/ui/MovieActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FilePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 186
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 187
    iget-object v1, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 188
    iget-object v1, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 190
    sget-boolean v1, Lcom/shiftup/ui/MovieActivity;->mMute:Z

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/shiftup/ui/MovieActivity$1;

    invoke-direct {v2, p0}, Lcom/shiftup/ui/MovieActivity$1;-><init>(Lcom/shiftup/ui/MovieActivity;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVideoSource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "MovieActivity"

    const-string v1, "onConfigurationChanged"

    .line 138
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez p1, :cond_0

    const-string p1, "onConfigurationChanged orientation is ORIENTATION_UNDEFINED"

    .line 140
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "onConfigurationChanged orientation is ORIENTATION_PORTRAIT"

    .line 142
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const-string p1, "onConfigurationChanged orientation is ORIENTATION_LANDSCAPE"

    .line 144
    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 52
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/shiftup/ui/MovieActivity;->startPosition:I

    .line 54
    iput-boolean v0, p0, Lcom/shiftup/ui/MovieActivity;->videoLoaded:Z

    .line 55
    iput-boolean v0, p0, Lcom/shiftup/ui/MovieActivity;->surfaceCreated:Z

    .line 56
    iput-boolean v0, p0, Lcom/shiftup/ui/MovieActivity;->isCleanedup:Z

    const-string v1, "MovieActivity"

    const-string v2, "Just Created"

    .line 57
    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v2, "saved instance stats is not null"

    .line 60
    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "savedPosition"

    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shiftup/ui/MovieActivity;->startPosition:I

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/shiftup/util/SoftNavigationManager;->UpdateSoftNavigation(Landroid/view/View;)V

    const p1, 0x7f0b004c

    .line 68
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f080148

    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 71
    sget v1, Lcom/shiftup/ui/MovieActivity;->mBackgroundRed:I

    sget v2, Lcom/shiftup/ui/MovieActivity;->mBackgroundGreen:I

    sget v3, Lcom/shiftup/ui/MovieActivity;->mBackgroundBlue:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 72
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const p1, 0x7f080188

    .line 74
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0801d7

    .line 79
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/shiftup/ui/MovieActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 80
    sget v1, Lcom/shiftup/ui/MovieActivity;->mBackgroundRed:I

    sget v2, Lcom/shiftup/ui/MovieActivity;->mBackgroundGreen:I

    sget v3, Lcom/shiftup/ui/MovieActivity;->mBackgroundBlue:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 81
    iget-object p1, p0, Lcom/shiftup/ui/MovieActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 82
    iget-object p1, p0, Lcom/shiftup/ui/MovieActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 84
    invoke-virtual {p0}, Lcom/shiftup/ui/MovieActivity;->loadVideoSource()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "MovieActivity"

    const-string v1, "Just Destroyed"

    .line 130
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/shiftup/ui/MovieActivity;->cleanup()V

    .line 132
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLayoutChange (width: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") (oldWidth:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " oldHeight:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MovieActivity"

    invoke-static {p2, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/shiftup/ui/MovieActivity;->play()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 124
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "MovieActivity"

    const-string v1, "onPause"

    .line 125
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 210
    iget-boolean p1, p0, Lcom/shiftup/ui/MovieActivity;->videoLoaded:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 211
    iput-boolean p1, p0, Lcom/shiftup/ui/MovieActivity;->videoLoaded:Z

    .line 213
    iget-object p1, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/shiftup/ui/MovieActivity$2;

    invoke-direct {v0, p0}, Lcom/shiftup/ui/MovieActivity$2;-><init>(Lcom/shiftup/ui/MovieActivity;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 232
    iget-object p1, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/shiftup/ui/MovieActivity;->startPosition:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 234
    iget-object p1, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/shiftup/ui/MovieActivity$3;

    invoke-direct {v0, p0}, Lcom/shiftup/ui/MovieActivity$3;-><init>(Lcom/shiftup/ui/MovieActivity;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 118
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "MovieActivity"

    const-string v1, "onResume"

    .line 119
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "MovieActivity"

    const-string v1, "Saved state 1"

    .line 301
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    const-string v2, "savedPosition"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved state 2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const-string v0, "MovieActivity"

    const-string v1, "onStart"

    .line 101
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/shiftup/ui/MovieActivity;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 109
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const-string v0, "MovieActivity"

    const-string v1, "onStop"

    .line 110
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/shiftup/ui/MovieActivity;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/shiftup/ui/MovieActivity;->mTouchToSkip:Z

    if-eqz p1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/shiftup/ui/MovieActivity;->cleanup()V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 309
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/shiftup/util/SoftNavigationManager;->UpdateSoftNavigation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "surfaceChanged (width: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MovieActivity"

    invoke-static {p2, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "MovieActivity"

    const-string v1, "surfaceCreated"

    .line 166
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/shiftup/ui/MovieActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lcom/shiftup/ui/MovieActivity;->surfaceCreated:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "MovieActivity"

    const-string v0, "surfaceDestroyed"

    .line 176
    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
