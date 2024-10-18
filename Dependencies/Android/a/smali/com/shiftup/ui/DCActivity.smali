.class public Lcom/shiftup/ui/DCActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DCActivity.java"


# static fields
.field private static AUTH_REQUEST_CODE:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "DCActivity"

.field protected static m_DCViewModel:Lcom/shiftup/ui/DCViewModel;

.field protected static m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

.field protected static m_soundPlayer:Lcom/NextFloor/DestinyChild/SoundPlayer;


# instance fields
.field private m_FirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 44
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    sget-object v1, Lcom/shiftup/ui/-$$Lambda$DCActivity$T2l6tv6Mflls4CX1xLq2jr1vHK8;->INSTANCE:Lcom/shiftup/ui/-$$Lambda$DCActivity$T2l6tv6Mflls4CX1xLq2jr1vHK8;

    .line 45
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/shiftup/ui/DCActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static CopyPackIfAbsent(Ljava/lang/String;Landroid/content/res/AssetManager;)V
    .locals 5

    .line 123
    new-instance v0, Ljava/io/File;

    const-string v1, "pack.pck"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "DCActivity"

    if-eqz v2, :cond_0

    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "pack.pck file exist! "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pack.pck does not exist. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pack.pck"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 136
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/pack.is"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x800

    new-array p0, p0, [B

    .line 143
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x0

    .line 145
    invoke-virtual {v0, p0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 146
    invoke-virtual {v1, p0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 150
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 151
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "pack.pck IOException."

    .line 155
    invoke-static {v3, p0}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static GetApkPath()Ljava/lang/String;
    .locals 3

    .line 186
    :try_start_0
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 188
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 189
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to locate assets, aborting..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static GetBottomUINavigation()I
    .locals 1

    .line 115
    invoke-static {}, Lcom/shiftup/util/SoftNavigationManager;->GetSoftNavigationState()I

    move-result v0

    return v0
.end method

.method protected static MoveFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Moderato"

    const-string v1, "MoveSaveFiles()"

    .line 160
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 169
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 170
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " moved successfully."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed to move."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 180
    invoke-static {v0, p0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public static SetBottomUINavigation(I)V
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 107
    invoke-static {p0}, Lcom/shiftup/util/SoftNavigationManager;->SetSoftNavigation(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 110
    invoke-static {p0}, Lcom/shiftup/util/SoftNavigationManager;->SetSoftNavigation(Z)V

    :goto_0
    return-void
.end method

.method public static getAuthRequestCode()I
    .locals 2

    .line 119
    sget v0, Lcom/shiftup/ui/DCActivity;->AUTH_REQUEST_CODE:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/shiftup/ui/DCActivity;->AUTH_REQUEST_CODE:I

    return v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v0, "DCActivity"

    if-eqz p0, :cond_0

    const-string p0, "Notification Permission granted"

    .line 47
    invoke-static {v0, p0}, Lcom/shiftup/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Notification Permission NOT granted"

    .line 49
    invoke-static {v0, p0}, Lcom/shiftup/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public RequestNotificationPermission()V
    .locals 2

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/shiftup/ui/DCActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-static {p0}, Lcom/shiftup/util/StaticContext;->SetCurrentActivity(Landroid/app/Activity;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/shiftup/util/SoftNavigationManager;->Initialize(Landroid/view/Window;)V

    .line 70
    invoke-static {p0}, Lcom/shiftup/sensor/GyroSensorManager;->Initialize(Landroid/content/Context;)V

    .line 72
    new-instance p1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    .line 73
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p1, Lcom/shiftup/ui/DCViewModel;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/shiftup/ui/DCViewModel;

    sput-object p1, Lcom/shiftup/ui/DCActivity;->m_DCViewModel:Lcom/shiftup/ui/DCViewModel;

    .line 74
    invoke-virtual {p1}, Lcom/shiftup/ui/DCViewModel;->getSoundPlayer()Lcom/NextFloor/DestinyChild/SoundPlayer;

    move-result-object p1

    sput-object p1, Lcom/shiftup/ui/DCActivity;->m_soundPlayer:Lcom/NextFloor/DestinyChild/SoundPlayer;

    .line 75
    sget-object p1, Lcom/shiftup/ui/DCActivity;->m_DCViewModel:Lcom/shiftup/ui/DCViewModel;

    invoke-virtual {p1}, Lcom/shiftup/ui/DCViewModel;->getMusicPlayer()Lcom/NextFloor/DestinyChild/MusicPlayer;

    move-result-object p1

    sput-object p1, Lcom/shiftup/ui/DCActivity;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    .line 76
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/shiftup/ui/DCActivity;->m_FirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 78
    sget-object p1, Lcom/shiftup/destinychild/BuildConfig;->PURCHASE_ADAPTER:Lcom/shiftup/inapp/PurchaseAdapter;

    invoke-static {p1}, Lcom/shiftup/inapp/PurchaseAdapter;->SetAdapter(Lcom/shiftup/inapp/PurchaseAdapter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 98
    invoke-static {}, Lcom/shiftup/sensor/GyroSensorManager;->IsDisposable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/shiftup/sensor/GyroSensorManager;->Dispose()V

    .line 102
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 92
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 93
    invoke-static {}, Lcom/shiftup/ads/IronSourceIntegrator;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "DCActivity"

    const-string v1, "protected void onResume() "

    .line 83
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 85
    invoke-static {}, Lcom/shiftup/ads/IronSourceIntegrator;->onResume()V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/shiftup/util/SoftNavigationManager;->UpdateSoftNavigation(Landroid/view/View;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/shiftup/util/SoftNavigationManager;->UpdateSoftNavigation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setFirebaseAnalyticsCollection(Z)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/shiftup/ui/DCActivity;->m_FirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    return-void
.end method

.method public setFirebaseUserID(Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/shiftup/ui/DCActivity;->m_FirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    return-void
.end method
