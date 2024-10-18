.class public Lcom/shiftup/ui/DCViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "DCViewModel.java"


# instance fields
.field private m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

.field private m_soundPlayer:Lcom/NextFloor/DestinyChild/SoundPlayer;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public getMusicPlayer()Lcom/NextFloor/DestinyChild/MusicPlayer;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/shiftup/ui/DCViewModel;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/NextFloor/DestinyChild/MusicPlayer;

    invoke-direct {v0}, Lcom/NextFloor/DestinyChild/MusicPlayer;-><init>()V

    iput-object v0, p0, Lcom/shiftup/ui/DCViewModel;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/shiftup/ui/DCViewModel;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    return-object v0
.end method

.method public getSoundPlayer()Lcom/NextFloor/DestinyChild/SoundPlayer;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/shiftup/ui/DCViewModel;->m_soundPlayer:Lcom/NextFloor/DestinyChild/SoundPlayer;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/NextFloor/DestinyChild/SoundPlayer;

    invoke-direct {v0}, Lcom/NextFloor/DestinyChild/SoundPlayer;-><init>()V

    iput-object v0, p0, Lcom/shiftup/ui/DCViewModel;->m_soundPlayer:Lcom/NextFloor/DestinyChild/SoundPlayer;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/shiftup/ui/DCViewModel;->m_soundPlayer:Lcom/NextFloor/DestinyChild/SoundPlayer;

    return-object v0
.end method

.method public onCleared()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/shiftup/ui/DCViewModel;->m_soundPlayer:Lcom/NextFloor/DestinyChild/SoundPlayer;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/NextFloor/DestinyChild/SoundPlayer;->end()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/shiftup/ui/DCViewModel;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/NextFloor/DestinyChild/MusicPlayer;->end()V

    :cond_1
    const-string v0, "Moderato"

    const-string v1, "User Model OnCleared"

    .line 49
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    return-void
.end method
