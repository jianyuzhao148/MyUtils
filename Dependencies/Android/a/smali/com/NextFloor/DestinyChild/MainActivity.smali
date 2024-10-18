.class public Lcom/NextFloor/DestinyChild/MainActivity;
.super Lcom/shiftup/ui/DCActivity;
.source "MainActivity.java"


# static fields
.field public static final ROOTING_PATH_1:Ljava/lang/String; = "/system/bin/su"

.field public static final ROOTING_PATH_2:Ljava/lang/String; = "/system/xbin/su"

.field public static final ROOTING_PATH_3:Ljava/lang/String; = "/system/app/SuperUser.apk"

.field public static final ROOTING_PATH_4:Ljava/lang/String; = "/data/data/com.noshufou.android.su"

.field public static final ROOT_PATH:Ljava/lang/String;

.field public static RootFilesPath:[Ljava/lang/String; = null

.field public static google_ad_id:Ljava/lang/String; = ""

.field private static mGLView:Lcom/shiftup/renderer/OpenGLSurfaceView; = null

.field private static mTracker:Lcom/google/android/gms/analytics/Tracker; = null

.field static m_apkPath:Ljava/lang/String; = null

.field public static m_inputDialog:Landroid/app/Dialog; = null

.field public static m_inputDialogCloseWhenTouchOutside:I = 0x0

.field public static m_inputDialogText:Ljava/lang/String; = null

.field public static m_inputDialogTextByteArray:[B = null

.field public static m_inputDialogTextInDraft:Ljava/lang/String; = null

.field public static m_inputDialogTextInDraftByteArray:[B = null

.field public static m_isInputDialogCanceled:Z = false

.field public static m_isInputDialogOpenRequested:Z = false

.field static m_metaInfo:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static m_nextStartId:I = 0x0

.field public static m_powerManager:Landroid/os/PowerManager; = null

.field static m_this:Lcom/NextFloor/DestinyChild/MainActivity; = null

.field private static staticLock:Ljava/lang/Object; = null

.field private static versionCode:I = -0x1


# instance fields
.field mFirst:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSh:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->staticLock:Ljava/lang/Object;

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1206
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->ROOT_PATH:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 1212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/system/bin/su"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/system/xbin/su"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/system/app/SuperUser.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/data/data/com.noshufou.android.su"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->RootFilesPath:[Ljava/lang/String;

    const-string v0, "SoulCollector"

    .line 1706
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/shiftup/ui/DCActivity;-><init>()V

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/NextFloor/DestinyChild/MainActivity;->mFirst:Z

    return-void
.end method

.method public static ActivateAdjust()V
    .locals 0

    .line 1695
    invoke-static {}, Lcom/shiftup/adjust/AdjustAdapter;->activateAdjust()V

    return-void
.end method

.method public static ClearCache()V
    .locals 1

    .line 1099
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/NextFloor/DestinyChild/MainActivity;->_ClearCache(Ljava/io/File;)V

    return-void
.end method

.method public static CommitInputDialogText()V
    .locals 1

    .line 785
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogTextInDraft:Ljava/lang/String;

    sput-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogText:Ljava/lang/String;

    const-string v0, ""

    .line 786
    sput-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogTextInDraft:Ljava/lang/String;

    return-void
.end method

.method public static CopyToClipboard(Ljava/lang/String;)V
    .locals 2

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CopyToClipboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Moderato"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    new-instance v0, Lcom/NextFloor/DestinyChild/MainActivity$1Runnable_CopyToClipboard;

    invoke-direct {v0}, Lcom/NextFloor/DestinyChild/MainActivity$1Runnable_CopyToClipboard;-><init>()V

    .line 723
    invoke-virtual {v0, p0}, Lcom/NextFloor/DestinyChild/MainActivity$1Runnable_CopyToClipboard;->setData(Ljava/lang/String;)V

    .line 724
    sget-object p0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p0, "CopyToClipboardEnd"

    .line 725
    invoke-static {v1, p0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static CreateTextImage(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .line 1283
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 1284
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    .line 1285
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p2, 0x1

    .line 1286
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1287
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1288
    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1290
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 1292
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    .line 1291
    invoke-virtual {v0, p0, v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 1293
    iget v3, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    if-lez v1, :cond_2

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_2

    if-gtz v3, :cond_1

    goto :goto_0

    .line 1300
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1302
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 1304
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v2, p0, v3, p1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1306
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int p0, p0, p1

    mul-int/lit8 p0, p0, 0x4

    new-array p0, p0, [B

    .line 1308
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1309
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1310
    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 1312
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/NextFloor/DestinyChild/MainActivity;->nativeOnCreateTextImage(II[B)V

    return p2

    :cond_2
    :goto_0
    return v2
.end method

.method public static DefaultDataSetting()V
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/NextFloor/DestinyChild/MainActivity$1;

    invoke-direct {v1}, Lcom/NextFloor/DestinyChild/MainActivity$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 253
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static ExitApp()V
    .locals 1

    .line 1366
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static GA_SendPage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static GetABIS()Ljava/lang/String;
    .locals 2

    .line 1562
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1563
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 1565
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static GetAdjustId()Ljava/lang/String;
    .locals 1

    .line 1690
    invoke-static {}, Lcom/shiftup/adjust/AdjustAdapter;->getAdjustADID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetAdvertisingID()Ljava/lang/String;
    .locals 1

    .line 1413
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->google_ad_id:Ljava/lang/String;

    return-object v0
.end method

.method public static GetAndroidPackageSignature()I
    .locals 4

    const/4 v0, 0x0

    .line 515
    :try_start_0
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 516
    sget-object v2, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    .line 517
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 518
    array-length v2, v1

    if-lez v2, :cond_0

    aget-object v1, v1, v0

    .line 519
    invoke-virtual {v1}, Landroid/content/pm/Signature;->hashCode()I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method public static GetAppActivity()Landroid/app/Activity;
    .locals 1

    .line 1657
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    return-object v0
.end method

.method public static GetAppBaseContext()Landroid/content/Context;
    .locals 1

    .line 1653
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static GetAppContext()Landroid/content/Context;
    .locals 1

    .line 1649
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static GetButtomUINavigation()I
    .locals 1

    .line 494
    invoke-static {}, Lcom/shiftup/ui/DCActivity;->GetBottomUINavigation()I

    move-result v0

    return v0
.end method

.method public static GetContext()Lcom/NextFloor/DestinyChild/MainActivity;
    .locals 1

    .line 156
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    return-object v0
.end method

.method public static GetConversionData()Ljava/lang/String;
    .locals 1

    .line 1685
    invoke-static {}, Lcom/shiftup/adjust/AdjustAdapter;->getConversionData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetCurrentLanguage()Ljava/lang/String;
    .locals 1

    .line 1596
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetCurrentVersion()Ljava/lang/String;
    .locals 3

    .line 530
    :try_start_0
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 531
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 532
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static GetDeviceBuild()Ljava/lang/String;
    .locals 1

    .line 1584
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public static GetDeviceInfo()Ljava/lang/String;
    .locals 1

    .line 1644
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public static GetDeviceLocale()Ljava/lang/String;
    .locals 1

    .line 1638
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetDeviceManufacture()Ljava/lang/String;
    .locals 1

    .line 1572
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static GetDeviceModel()Ljava/lang/String;
    .locals 3

    .line 1554
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetDeviceModel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Moderato"

    invoke-static {v2, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static GetDeviceModelForUserAgent()Ljava/lang/String;
    .locals 1

    .line 1578
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static GetExternalFileDirectory()Ljava/lang/String;
    .locals 3

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetExternalStorageDirectory()Ljava/lang/String;
    .locals 2

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetFontMaxAscent(Ljava/lang/String;I)I
    .locals 2

    .line 1347
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 1348
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p1

    .line 1349
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p1, 0x1

    .line 1350
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1351
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1352
    sget-object p0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1354
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    .line 1356
    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int p0, p0

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static GetFontMaxBBox(Ljava/lang/String;I)I
    .locals 2

    .line 1318
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 1319
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p1

    .line 1320
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p1, 0x1

    .line 1321
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1322
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1323
    sget-object p0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1325
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    .line 1327
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p0

    int-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static GetFontMaxTop(Ljava/lang/String;I)I
    .locals 2

    .line 1333
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 1334
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p1

    .line 1335
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p1, 0x1

    .line 1336
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1337
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1338
    sget-object p0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1340
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    .line 1342
    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int p0, p0

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static GetIMEI()Ljava/lang/String;
    .locals 2

    .line 1120
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static GetInputDialogText()[B
    .locals 2

    .line 760
    :try_start_0
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogText:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogTextByteArray:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Moderato"

    const-string v1, "GetInputDialogText encoding failed."

    .line 764
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :goto_0
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogTextByteArray:[B

    return-object v0
.end method

.method public static GetInputDialogTextInDraft()[B
    .locals 2

    .line 771
    :try_start_0
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogTextInDraft:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogTextInDraftByteArray:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Moderato"

    const-string v1, "GetInputDialogTextInDraft encoding failed."

    .line 775
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :goto_0
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogTextInDraftByteArray:[B

    return-object v0
.end method

.method public static GetIsCanceled()I
    .locals 1

    .line 790
    sget-boolean v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_isInputDialogCanceled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static GetLineLocale()Ljava/lang/String;
    .locals 1

    .line 1590
    invoke-static {}, Lcom/NextFloor/DestinyChild/MainActivity;->GetAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetPackageName()Ljava/lang/String;
    .locals 1

    .line 504
    :try_start_0
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static GetPushToken()Ljava/lang/String;
    .locals 3

    .line 1141
    invoke-static {}, Lcom/NextFloor/DestinyChild/MainActivity;->GetAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "registration_id"

    const-string v2, ""

    .line 1142
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetReferrer()Ljava/lang/String;
    .locals 3

    .line 1134
    invoke-static {}, Lcom/NextFloor/DestinyChild/MainActivity;->GetAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref"

    const/4 v2, 0x0

    .line 1135
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "referrer"

    const-string v2, ""

    .line 1136
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetSharedPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1148
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1150
    :try_start_0
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const-string v2, "pref"

    const/4 v3, 0x4

    .line 1151
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    .line 1153
    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    .line 1158
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static GetSharedPreferenceInt(Ljava/lang/String;)I
    .locals 4

    .line 1165
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1167
    :try_start_0
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const-string v2, "pref"

    const/4 v3, 0x4

    .line 1168
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 1169
    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1170
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static GetTimeZone()Ljava/lang/String;
    .locals 4

    .line 540
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 541
    invoke-static {v0}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x36ee80

    .line 544
    div-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0xea60

    div-int v2, v0, v2

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%02d:%02d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v0, :cond_0

    const-string v0, "+"

    goto :goto_0

    :cond_0
    const-string v0, "-"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetTimeZoneID()Ljava/lang/String;
    .locals 1

    .line 551
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static GetTimeZoneOffset()I
    .locals 3

    .line 562
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    invoke-static {v0}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 566
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static GetUUID()Ljava/lang/String;
    .locals 2

    .line 1114
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 1115
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetUserLanguage()Ljava/lang/String;
    .locals 2

    const-string v0, "USER_LANG"

    .line 1602
    invoke-static {v0}, Lcom/NextFloor/DestinyChild/MainActivity;->GetSharedPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 1605
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static GetUserLanguageCulture()Ljava/lang/String;
    .locals 2

    const-string v0, "USER_LANG_CULT"

    .line 1620
    invoke-static {v0}, Lcom/NextFloor/DestinyChild/MainActivity;->GetSharedPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 1623
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static GetVersionCode()I
    .locals 4

    .line 1661
    sget v0, Lcom/NextFloor/DestinyChild/MainActivity;->versionCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1663
    :try_start_0
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1664
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/NextFloor/DestinyChild/MainActivity;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1666
    :catch_0
    sput v1, Lcom/NextFloor/DestinyChild/MainActivity;->versionCode:I

    .line 1669
    :cond_0
    :goto_0
    sget v0, Lcom/NextFloor/DestinyChild/MainActivity;->versionCode:I

    return v0
.end method

.method public static GyroSensorLimit(D)V
    .locals 0

    .line 638
    invoke-static {p0, p1}, Lcom/shiftup/sensor/GyroSensorManager;->SetRange(D)V

    return-void
.end method

.method public static GyroSensorReset()V
    .locals 0

    .line 633
    invoke-static {}, Lcom/shiftup/sensor/GyroSensorManager;->Reset()V

    return-void
.end method

.method public static GyroSensorX()D
    .locals 2

    .line 643
    invoke-static {}, Lcom/shiftup/sensor/GyroSensorManager;->GetRoll()D

    move-result-wide v0

    return-wide v0
.end method

.method public static GyroSensorY()D
    .locals 2

    .line 648
    invoke-static {}, Lcom/shiftup/sensor/GyroSensorManager;->GetPitch()D

    move-result-wide v0

    return-wide v0
.end method

.method public static GyroSensorZ()D
    .locals 2

    .line 653
    invoke-static {}, Lcom/shiftup/sensor/GyroSensorManager;->GetYaw()D

    move-result-wide v0

    return-wide v0
.end method

.method public static IsAvailableAndroid(I)Z
    .locals 1

    .line 1361
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static IsExistApp(Ljava/lang/String;)I
    .locals 7

    .line 1256
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1258
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 1260
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    const-string v4, "Moderato"

    const-string v5, ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> packageName"

    .line 1263
    invoke-static {v4, v5}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1266
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1268
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    return v6

    .line 1274
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_3

    return v6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static IsExistSDCard()I
    .locals 2

    .line 1103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 1104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static IsOpenInputDialog()I
    .locals 2

    .line 746
    sget-boolean v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_isInputDialogOpenRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 751
    :cond_0
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static OpenFacebook(Ljava/lang/String;)V
    .locals 5

    const-string v0, "android.intent.action.VIEW"

    .line 1036
    :try_start_0
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.facebook.katana"

    const/4 v3, 0x0

    .line 1037
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1038
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fb://profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1038
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1041
    :catch_0
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.facebook.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1042
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1041
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static OpenInputDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "Moderato"

    const-string v0, "Open Input Dialog"

    .line 798
    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const-string v1, ""

    sput-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogText:Ljava/lang/String;

    .line 800
    sput-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogTextInDraft:Ljava/lang/String;

    const/4 v1, 0x0

    .line 801
    sput-boolean v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_isInputDialogCanceled:Z

    const/4 v1, 0x1

    .line 802
    sput-boolean v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_isInputDialogOpenRequested:Z

    .line 803
    sput v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogCloseWhenTouchOutside:I

    .line 805
    new-instance v1, Lcom/NextFloor/DestinyChild/MainActivity$2;

    invoke-direct {v1, p2, p3, p0}, Lcom/NextFloor/DestinyChild/MainActivity$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p0, "Open Input Dialog End"

    .line 931
    invoke-static {p1, p0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OpenTwitter(ILjava/lang/String;)V
    .locals 3

    .line 1029
    sget-object p0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.twitter.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1030
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1029
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static OpenURL(Ljava/lang/String;)V
    .locals 2

    .line 1047
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1048
    sget-object p0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static OpenURLByPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1053
    sput-object p2, Lcom/NextFloor/DestinyChild/URLActivity;->m_url:Ljava/lang/String;

    .line 1054
    sput-object p1, Lcom/NextFloor/DestinyChild/URLActivity;->m_backButtonName:Ljava/lang/String;

    .line 1055
    sput p3, Lcom/NextFloor/DestinyChild/URLActivity;->m_orientation:I

    .line 1057
    new-instance p0, Landroid/content/Intent;

    sget-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const-class p2, Lcom/NextFloor/DestinyChild/URLActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1058
    sget-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static PackDataSetting()V
    .locals 2

    .line 241
    invoke-static {}, Lcom/NextFloor/DestinyChild/MainActivity;->GetExternalFileDirectory()Ljava/lang/String;

    move-result-object v0

    .line 242
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 243
    invoke-static {v0, v1}, Lcom/shiftup/ui/DCActivity;->CopyPackIfAbsent(Ljava/lang/String;Landroid/content/res/AssetManager;)V

    return-void
.end method

.method public static RunOnLogicThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 572
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->mGLView:Lcom/shiftup/renderer/OpenGLSurfaceView;

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static SendAdjustTrackingEvent(Ljava/lang/String;)V
    .locals 0

    .line 1680
    invoke-static {p0}, Lcom/shiftup/adjust/AdjustAdapter;->sendTrackingEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static SetAppGuardClient()V
    .locals 0

    .line 1700
    invoke-static {}, Lcom/shiftup/appguard/AppGuardAdapter;->setAppGuardClient()V

    return-void
.end method

.method public static SetButtomUINavigation(I)V
    .locals 0

    .line 489
    invoke-static {p0}, Lcom/shiftup/ui/DCActivity;->SetBottomUINavigation(I)V

    return-void
.end method

.method public static SetInputDialogTextInDraft(Ljava/lang/String;)V
    .locals 0

    .line 781
    sput-object p0, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogTextInDraft:Ljava/lang/String;

    return-void
.end method

.method public static SetPublicKey(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static SetRenderFPS(I)V
    .locals 1

    .line 481
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->mGLView:Lcom/shiftup/renderer/OpenGLSurfaceView;

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0, p0}, Lcom/shiftup/renderer/OpenGLSurfaceView;->SetFPS(I)V

    :cond_0
    return-void
.end method

.method public static SetSharedPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1176
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1179
    :try_start_0
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const-string v2, "pref"

    const/4 v3, 0x4

    .line 1180
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1181
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1182
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1183
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1185
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static SetSharedPreferenceInt(Ljava/lang/String;I)V
    .locals 4

    .line 1191
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1194
    :try_start_0
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const-string v2, "pref"

    const/4 v3, 0x4

    .line 1195
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1196
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1197
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1198
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1200
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static SetTrackingUserID(Ljava/lang/String;)V
    .locals 0

    .line 1674
    invoke-static {p0}, Lcom/shiftup/adjust/AdjustAdapter;->setUserID(Ljava/lang/String;)V

    .line 1675
    invoke-static {p0}, Lcom/shiftup/appguard/AppGuardAdapter;->setUserID(Ljava/lang/String;)V

    return-void
.end method

.method public static SetUserLanguage(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1612
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "USER_LANG"

    .line 1615
    invoke-static {v0, p0}, Lcom/NextFloor/DestinyChild/MainActivity;->SetSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static SetUserLanguageCulture(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1630
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "USER_LANG_CULT"

    .line 1633
    invoke-static {v0, p0}, Lcom/NextFloor/DestinyChild/MainActivity;->SetSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static SoundTimeCheck()V
    .locals 1

    .line 377
    sget-object v0, Lcom/shiftup/ui/DCActivity;->m_soundPlayer:Lcom/NextFloor/DestinyChild/SoundPlayer;

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Lcom/NextFloor/DestinyChild/SoundPlayer;->SoundTimeCheck()Z

    :cond_0
    return-void
.end method

.method public static StartRendering()V
    .locals 2

    .line 1076
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->mGLView:Lcom/shiftup/renderer/OpenGLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public static StopRendering()V
    .locals 2

    .line 1080
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->mGLView:Lcom/shiftup/renderer/OpenGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public static TrackPurchase(Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "Moderato"

    const-string v1, "TrackPurchase"

    .line 997
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "currency"

    .line 1001
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "decimal_price"

    .line 1002
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsFloat()F

    move-result v1

    .line 1004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrackPurchase currency "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-static {v1, v2, p1}, Lcom/shiftup/adjust/AdjustAdapter;->sendTrackingEventIAP(FLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1009
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Product Data : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static _ClearCache(Ljava/io/File;)V
    .locals 2

    .line 1084
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    .line 1087
    :goto_0
    :try_start_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1088
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1089
    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/NextFloor/DestinyChild/MainActivity;->_ClearCache(Ljava/io/File;)V

    goto :goto_1

    .line 1091
    :cond_0
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method private static varargs checkRootingFiles([Ljava/io/File;)Z
    .locals 5

    .line 1226
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 1227
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static copyAssetFolder(Ljava/lang/String;)V
    .locals 14

    const-string v0, "Failed to close output stream"

    const-string v1, "Failed to close input stream"

    const-string v2, "Moderato"

    .line 280
    sget-object v3, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 284
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 286
    invoke-static {v2, v5}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v5, v4

    .line 289
    :goto_0
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/NextFloor/DestinyChild/MainActivity;->GetExternalFileDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-nez v6, :cond_0

    const-string p0, "Failed to create directory"

    .line 292
    invoke-static {v2, p0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_0
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_6

    aget-object v9, v5, v7

    .line 301
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v10

    .line 304
    invoke-static {v2, v10}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v10, v4

    .line 309
    :goto_2
    array-length v10, v10

    if-nez v10, :cond_4

    .line 314
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 315
    :try_start_3
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/NextFloor/DestinyChild/MainActivity;->GetExternalFileDirectory()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 316
    :try_start_4
    invoke-static {v10, v11}, Lcom/NextFloor/DestinyChild/MainActivity;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 317
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 319
    :try_start_5
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 320
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception v9

    move-object v10, v4

    goto :goto_3

    :catch_3
    move-exception v9

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v11, v4

    goto :goto_5

    :catch_4
    move-exception v9

    move-object v11, v4

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v11, v4

    goto :goto_6

    :catch_5
    move-exception v9

    move-object v10, v4

    move-object v11, v10

    .line 324
    :goto_3
    :try_start_6
    invoke-static {v2, v9}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v10, :cond_1

    .line 329
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    .line 331
    :catch_6
    invoke-static {v2, v1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_4
    if-eqz v11, :cond_5

    .line 337
    :try_start_8
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    .line 340
    :catch_7
    invoke-static {v2, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catchall_3
    move-exception p0

    :goto_5
    move-object v4, v10

    :goto_6
    if-eqz v4, :cond_2

    .line 329
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    .line 331
    :catch_8
    invoke-static {v2, v1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_7
    if-eqz v11, :cond_3

    .line 337
    :try_start_a
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    .line 340
    :catch_9
    invoke-static {v2, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_3
    :goto_8
    throw p0

    .line 346
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/NextFloor/DestinyChild/MainActivity;->copyAssetFolder(Ljava/lang/String;)V

    :cond_5
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 355
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 356
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createFiles([Ljava/lang/String;)[Ljava/io/File;
    .locals 4

    .line 1217
    array-length v0, p0

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    .line 1218
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1219
    new-instance v2, Ljava/io/File;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static deleteExternalFileDirectory(Ljava/lang/String;)V
    .locals 3

    .line 258
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/NextFloor/DestinyChild/MainActivity;->GetExternalFileDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/NextFloor/DestinyChild/MainActivity;->deleteRecursive(Ljava/io/File;)V

    return-void
.end method

.method public static deleteRecursive(Ljava/io/File;)V
    .locals 4

    .line 263
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 265
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 266
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    invoke-static {v2}, Lcom/NextFloor/DestinyChild/MainActivity;->deleteRecursive(Ljava/io/File;)V

    goto :goto_1

    .line 271
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "RESPONSE_CODE"

    .line 958
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "Moderato"

    if-nez p0, :cond_0

    const-string p0, "Bundle with null response code, assuming OK (known issue)"

    .line 960
    invoke-static {v1, p0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 963
    :cond_0
    instance-of v2, p0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 964
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 965
    :cond_1
    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 966
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_2
    const-string v2, "Unexpected type for bundle response code."

    .line 968
    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isPlayMediaPlayer(Ljava/lang/String;)Z
    .locals 1

    .line 627
    sget-object v0, Lcom/shiftup/ui/DCActivity;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    invoke-virtual {v0, p0}, Lcom/NextFloor/DestinyChild/MusicPlayer;->isMusicPlaying(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$InitGoogleAd$1()V
    .locals 4

    const-string v0, "Moderato"

    const-string v1, "try get google ad"

    .line 1384
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1387
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1389
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    .line 1393
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1395
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_1
    if-nez v1, :cond_0

    const-string v2, ""

    .line 1400
    sput-object v2, Lcom/NextFloor/DestinyChild/MainActivity;->google_ad_id:Ljava/lang/String;

    goto :goto_2

    .line 1404
    :cond_0
    sput-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->google_ad_id:Ljava/lang/String;

    .line 1406
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "google ad id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onConfigurationChanged$0(II)V
    .locals 0

    .line 462
    invoke-static {p0, p1}, Lcom/shiftup/renderer/OpenGLRenderer;->nativeResize(II)V

    return-void
.end method

.method public static loadMediaPlayer(Ljava/lang/String;)V
    .locals 1

    .line 595
    sget-object v0, Lcom/shiftup/ui/DCActivity;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    invoke-virtual {v0, p0}, Lcom/NextFloor/DestinyChild/MusicPlayer;->preloadMusic(Ljava/lang/String;)V

    return-void
.end method

.method public static native nativeDone()V
.end method

.method public static native nativeOnChangeCouponID(Ljava/lang/String;)V
.end method

.method public static native nativeOnCheckedBanner(II)V
.end method

.method public static native nativeOnCreateTextImage(II[B)V
.end method

.method public static native nativeOnFailedToReceiveHttpRequest(I)V
.end method

.method public static native nativeOnPressBackButton()V
.end method

.method public static native nativeOnReceiveIAPNotifyID(Ljava/lang/String;)V
.end method

.method public static native nativeOnReceivePushToken(Ljava/lang/String;)V
.end method

.method public static native nativeOnReceivedHttpRequest(ILjava/lang/String;I)V
.end method

.method public static pauseMediaPlayer()V
    .locals 1

    .line 611
    sget-object v0, Lcom/shiftup/ui/DCActivity;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    invoke-virtual {v0}, Lcom/NextFloor/DestinyChild/MusicPlayer;->pauseMusic()V

    return-void
.end method

.method public static playMediaPlayer(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 601
    sget-object p1, Lcom/shiftup/ui/DCActivity;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    invoke-virtual {p1, p0, v0}, Lcom/NextFloor/DestinyChild/MusicPlayer;->playMusic(Ljava/lang/String;Z)V

    goto :goto_0

    .line 605
    :cond_0
    sget-object p1, Lcom/shiftup/ui/DCActivity;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/NextFloor/DestinyChild/MusicPlayer;->playMusic(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public static playMovie(Ljava/lang/String;)V
    .locals 3

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Movie Path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Moderato"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const-class v2, Lcom/shiftup/ui/MovieActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 659
    sput-object p0, Lcom/shiftup/ui/MovieActivity;->fileName:Ljava/lang/String;

    .line 660
    sget-object p0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static playSoundPool(Ljava/lang/String;)I
    .locals 2

    .line 579
    sget-object v0, Lcom/shiftup/ui/DCActivity;->m_soundPlayer:Lcom/NextFloor/DestinyChild/SoundPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/NextFloor/DestinyChild/SoundPlayer;->playSound(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static resumeMediaPlayer()V
    .locals 1

    .line 615
    sget-object v0, Lcom/shiftup/ui/DCActivity;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    invoke-virtual {v0}, Lcom/NextFloor/DestinyChild/MusicPlayer;->resumeMusic()V

    return-void
.end method

.method public static setMediaPlayerVolume(Ljava/lang/String;F)V
    .locals 1

    .line 623
    sget-object v0, Lcom/shiftup/ui/DCActivity;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    invoke-virtual {v0, p0, p1}, Lcom/NextFloor/DestinyChild/MusicPlayer;->setVolume(Ljava/lang/String;F)V

    return-void
.end method

.method public static setMovieBackgroundColor(III)V
    .locals 0

    .line 664
    sput p0, Lcom/shiftup/ui/MovieActivity;->mBackgroundRed:I

    .line 665
    sput p1, Lcom/shiftup/ui/MovieActivity;->mBackgroundGreen:I

    .line 666
    sput p2, Lcom/shiftup/ui/MovieActivity;->mBackgroundBlue:I

    return-void
.end method

.method public static setMovieMute(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 672
    sput-boolean v0, Lcom/shiftup/ui/MovieActivity;->mMute:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 676
    sput-boolean p0, Lcom/shiftup/ui/MovieActivity;->mMute:Z

    :goto_0
    return-void
.end method

.method public static setMovieTouchToSkip(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 683
    sput-boolean v0, Lcom/shiftup/ui/MovieActivity;->mTouchToSkip:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 687
    sput-boolean p0, Lcom/shiftup/ui/MovieActivity;->mTouchToSkip:Z

    :goto_0
    return-void
.end method

.method public static setPlaySoundPoolVolume(F)V
    .locals 1

    .line 588
    sget-object v0, Lcom/shiftup/ui/DCActivity;->m_soundPlayer:Lcom/NextFloor/DestinyChild/SoundPlayer;

    invoke-virtual {v0, p0}, Lcom/NextFloor/DestinyChild/SoundPlayer;->setSoundsVolume(F)V

    return-void
.end method

.method public static stopMediaPlayer(Ljava/lang/String;)V
    .locals 1

    .line 619
    sget-object v0, Lcom/shiftup/ui/DCActivity;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    invoke-virtual {v0, p0}, Lcom/NextFloor/DestinyChild/MusicPlayer;->stopMusic(Ljava/lang/String;)V

    return-void
.end method

.method public static stopSoundPool(I)I
    .locals 2

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopSoundPool "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Moderato"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    sget-object v0, Lcom/shiftup/ui/DCActivity;->m_soundPlayer:Lcom/NextFloor/DestinyChild/SoundPlayer;

    invoke-virtual {v0, p0}, Lcom/NextFloor/DestinyChild/SoundPlayer;->stopSound(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public GetFreeDiskspace()I
    .locals 5

    const-string v0, "Moderato"

    const-string v1, "GetFreeDiskspace"

    .line 1540
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    .line 1543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FreeDiskspace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v3, 0x100000

    .line 1544
    div-long/2addr v1, v3

    long-to-int v0, v1

    return v0
.end method

.method public GetOSVersion()Ljava/lang/String;
    .locals 1

    .line 1550
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public GetStoreKind()Ljava/lang/String;
    .locals 1

    .line 1535
    invoke-static {}, Lcom/shiftup/inapp/PurchaseAdapter;->GetStoreKind()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public InitGoogleAd()V
    .locals 2

    .line 1382
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1383
    new-instance v1, Lcom/NextFloor/DestinyChild/-$$Lambda$MainActivity$AEitMaIb9Hsg1aJzYgckzmEBnN8;

    invoke-direct {v1, p0}, Lcom/NextFloor/DestinyChild/-$$Lambda$MainActivity$AEitMaIb9Hsg1aJzYgckzmEBnN8;-><init>(Lcom/NextFloor/DestinyChild/MainActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1408
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public InitLine()V
    .locals 4

    const-string v0, "Moderato"

    const-string v1, "InitLine"

    .line 1420
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f10006a

    .line 1422
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1423
    new-instance v1, Lcom/shiftup/auth/LineInitParam;

    invoke-direct {v1, v0}, Lcom/shiftup/auth/LineInitParam;-><init>(Ljava/lang/String;)V

    .line 1424
    invoke-static {}, Lcom/shiftup/auth/AuthBridge;->getInstance()Lcom/shiftup/auth/AuthBridge;

    move-result-object v0

    sget-object v2, Lcom/shiftup/auth/AuthPlatform;->Line:Lcom/shiftup/auth/AuthPlatform;

    new-instance v3, Lcom/NextFloor/DestinyChild/MainActivity$3;

    invoke-direct {v3, p0}, Lcom/NextFloor/DestinyChild/MainActivity$3;-><init>(Lcom/NextFloor/DestinyChild/MainActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/shiftup/auth/AuthBridge;->init(Lcom/shiftup/auth/AuthPlatform;Lcom/shiftup/auth/AuthInitParam;Lcom/shiftup/auth/IAuthCallback;)V

    return-void
.end method

.method protected Initialize()V
    .locals 6

    .line 167
    invoke-static {}, Lcom/NextFloor/DestinyChild/MainActivity;->PackDataSetting()V

    .line 168
    invoke-static {}, Lcom/NextFloor/DestinyChild/MainActivity;->DefaultDataSetting()V

    .line 171
    invoke-virtual {p0}, Lcom/NextFloor/DestinyChild/MainActivity;->InitLine()V

    const/16 v0, 0xc

    .line 173
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 175
    invoke-static {}, Lcom/shiftup/ui/DCActivity;->GetApkPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_apkPath:Ljava/lang/String;

    .line 178
    new-instance v0, Lcom/shiftup/renderer/OpenGLSurfaceView;

    new-instance v1, Lcom/shiftup/renderer/OpenGLRenderer;

    invoke-direct {v1}, Lcom/shiftup/renderer/OpenGLRenderer;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/shiftup/renderer/OpenGLSurfaceView;-><init>(Landroid/content/Context;Lcom/shiftup/renderer/OpenGLRenderer;)V

    sput-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->mGLView:Lcom/shiftup/renderer/OpenGLSurfaceView;

    const-string v0, "Moderato"

    const-string v1, "Setcontent VIew begin"

    .line 180
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->mGLView:Lcom/shiftup/renderer/OpenGLSurfaceView;

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    const-string v1, "Setcontent VIew end"

    .line 182
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 192
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 196
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 197
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 199
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 200
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    move v5, v2

    move v2, v1

    move v1, v5

    :goto_0
    if-le v2, v1, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    move v2, v1

    move v1, v5

    .line 209
    :goto_1
    sget-object v3, Lcom/NextFloor/DestinyChild/MainActivity;->mGLView:Lcom/shiftup/renderer/OpenGLSurfaceView;

    invoke-virtual {v3, v1, v2}, Lcom/shiftup/renderer/OpenGLSurfaceView;->SetSize(II)V

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "real width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "real height : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "power"

    .line 215
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    sput-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_powerManager:Landroid/os/PowerManager;

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v1, 0x0

    .line 226
    sput-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialog:Landroid/app/Dialog;

    .line 228
    invoke-virtual {p0}, Lcom/NextFloor/DestinyChild/MainActivity;->InitGoogleAd()V

    .line 231
    invoke-static {}, Lcom/NextFloor/DestinyChild/MainActivity;->SetAppGuardClient()V

    const-string v1, "Assist Activity begin"

    .line 233
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {p0}, Lcom/NextFloor/DestinyChild/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const-string v1, "Assist Activity end"

    .line 235
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public LineOpenURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1459
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "jp.naver.line.android"

    .line 1460
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    move-object p1, p2

    .line 1473
    :cond_0
    sget-object p2, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    new-instance v0, Landroid/content/Intent;

    .line 1475
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1473
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public LobiOpenCommunity()V
    .locals 4

    .line 1484
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.kayac.nakamap"

    .line 1485
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "destiny_child"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v2

    const-string v1, "https://web.lobi.co/special/community-lp/%s"

    .line 1491
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v2

    const-string v1, "lobi://game_community?gameId=%s"

    .line 1496
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1498
    :goto_0
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    new-instance v2, Landroid/content/Intent;

    .line 1500
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1498
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public SetRequestOrientationLandscape()V
    .locals 1

    const/16 v0, 0xb

    .line 1531
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public SetRequestOrientationPortrait()V
    .locals 1

    const/16 v0, 0xc

    .line 1527
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 3

    .line 938
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Moderato"

    if-nez p1, :cond_0

    const-string p1, "Intent with no response code, assuming OK (known issue)"

    .line 940
    invoke-static {v1, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 943
    :cond_0
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 944
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 945
    :cond_1
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 946
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v2, "Unexpected type for intent response code."

    .line 948
    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public initGoogle()V
    .locals 4

    const-string v0, "Moderato"

    const-string v1, "Init Google"

    .line 694
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f100054

    .line 695
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-static {}, Lcom/shiftup/auth/AuthBridge;->getInstance()Lcom/shiftup/auth/AuthBridge;

    move-result-object v1

    sget-object v2, Lcom/shiftup/auth/AuthPlatform;->Google:Lcom/shiftup/auth/AuthPlatform;

    new-instance v3, Lcom/shiftup/auth/GoogleInitParam;

    invoke-direct {v3, v0}, Lcom/shiftup/auth/GoogleInitParam;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/shiftup/auth/AuthBridge;->init(Lcom/shiftup/auth/AuthPlatform;Lcom/shiftup/auth/AuthInitParam;Lcom/shiftup/auth/IAuthCallback;)V

    return-void
.end method

.method public synthetic lambda$InitGoogleAd$1$MainActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/NextFloor/DestinyChild/MainActivity;->lambda$InitGoogleAd$1()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 980
    :try_start_0
    invoke-static {p1}, Lcom/shiftup/auth/FacebookAdapter;->isFacebookRequestCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Facebook:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/shiftup/auth/AuthAdapter;->onActivityResult(IILandroid/content/Intent;)Z

    return-void

    .line 984
    :cond_0
    invoke-static {}, Lcom/shiftup/auth/AuthBridge;->getInstance()Lcom/shiftup/auth/AuthBridge;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/shiftup/auth/AuthBridge;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Moderato"

    .line 988
    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 991
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/shiftup/inapp/PurchaseAdapter;->HandleActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 432
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Moderato"

    const-string v1, "onConfigurationChanged"

    .line 435
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez v1, :cond_0

    const-string v1, "onConfigurationChanged orientation is ORIENTATION_UNDEFINED"

    .line 437
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "onConfigurationChanged orientation is ORIENTATION_PORTRAIT"

    .line 439
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "onConfigurationChanged orientation is ORIENTATION_LANDSCAPE"

    .line 441
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_2
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 446
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 451
    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    .line 456
    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 457
    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 459
    invoke-static {p1}, Lcom/shiftup/util/Converter;->convertDpToPx(I)I

    move-result p1

    .line 460
    invoke-static {v0}, Lcom/shiftup/util/Converter;->convertDpToPx(I)I

    move-result v0

    .line 462
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->mGLView:Lcom/shiftup/renderer/OpenGLSurfaceView;

    new-instance v2, Lcom/NextFloor/DestinyChild/-$$Lambda$MainActivity$h9CJpE027MYNG9m9VqGBD7R_774;

    invoke-direct {v2, p1, v0}, Lcom/NextFloor/DestinyChild/-$$Lambda$MainActivity$h9CJpE027MYNG9m9VqGBD7R_774;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 362
    sput-object p0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const/4 v0, 0x0

    .line 365
    invoke-static {v0}, Lcom/shiftup/util/SoftNavigationManager;->ShowOnFirstRun(Z)V

    .line 367
    invoke-super {p0, p1}, Lcom/shiftup/ui/DCActivity;->onCreate(Landroid/os/Bundle;)V

    .line 369
    invoke-virtual {p0}, Lcom/NextFloor/DestinyChild/MainActivity;->GetFreeDiskspace()I

    .line 371
    invoke-virtual {p0}, Lcom/NextFloor/DestinyChild/MainActivity;->initGoogle()V

    .line 372
    invoke-virtual {p0}, Lcom/NextFloor/DestinyChild/MainActivity;->Initialize()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 424
    invoke-super {p0}, Lcom/shiftup/ui/DCActivity;->onDestroy()V

    .line 426
    invoke-static {}, Lcom/shiftup/auth/AuthBridge;->getInstance()Lcom/shiftup/auth/AuthBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthBridge;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 735
    invoke-static {}, Lcom/NextFloor/DestinyChild/MainActivity;->nativeOnPressBackButton()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 468
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 386
    invoke-super {p0}, Lcom/shiftup/ui/DCActivity;->onPause()V

    .line 388
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->mGLView:Lcom/shiftup/renderer/OpenGLSurfaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 390
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 391
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->mGLView:Lcom/shiftup/renderer/OpenGLSurfaceView;

    invoke-virtual {v0}, Lcom/shiftup/renderer/OpenGLSurfaceView;->onPause()V

    .line 394
    :cond_0
    sget-object v0, Lcom/shiftup/ui/DCActivity;->m_soundPlayer:Lcom/NextFloor/DestinyChild/SoundPlayer;

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {v0}, Lcom/NextFloor/DestinyChild/SoundPlayer;->end()V

    .line 399
    :cond_1
    sget-object v0, Lcom/shiftup/ui/DCActivity;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {v0}, Lcom/NextFloor/DestinyChild/MusicPlayer;->pauseBGM()V

    :cond_2
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    .line 475
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 408
    invoke-super {p0}, Lcom/shiftup/ui/DCActivity;->onResume()V

    .line 410
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->mGLView:Lcom/shiftup/renderer/OpenGLSurfaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 412
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 413
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->mGLView:Lcom/shiftup/renderer/OpenGLSurfaceView;

    invoke-virtual {v0}, Lcom/shiftup/renderer/OpenGLSurfaceView;->onResume()V

    .line 416
    :cond_0
    sget-object v0, Lcom/shiftup/ui/DCActivity;->m_musicPlayer:Lcom/NextFloor/DestinyChild/MusicPlayer;

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {v0}, Lcom/NextFloor/DestinyChild/MusicPlayer;->resumeBGM()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1370
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 1371
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1375
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 1376
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    return-void
.end method
