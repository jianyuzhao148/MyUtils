.class public final Lcom/shiftup/sensor/GyroSensorManager;
.super Ljava/lang/Object;
.source "GyroSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shiftup/sensor/GyroSensorManager$GyroscopeListener;
    }
.end annotation


# static fields
.field private static m_gyroListener:Landroid/hardware/SensorEventListener;

.field private static m_gyroSensor:Landroid/hardware/Sensor;

.field private static m_maxDegree:D

.field private static m_pitch:D

.field private static m_roll:D

.field private static m_sensorManager:Landroid/hardware/SensorManager;

.field private static m_timestamp:J

.field private static m_yaw:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dispose()V
    .locals 3

    .line 41
    sget-object v0, Lcom/shiftup/sensor/GyroSensorManager;->m_sensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/shiftup/sensor/GyroSensorManager;->m_gyroListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/shiftup/sensor/GyroSensorManager;->m_gyroSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/shiftup/sensor/GyroSensorManager;->m_sensorManager:Landroid/hardware/SensorManager;

    .line 44
    sput-object v0, Lcom/shiftup/sensor/GyroSensorManager;->m_gyroSensor:Landroid/hardware/Sensor;

    .line 45
    sput-object v0, Lcom/shiftup/sensor/GyroSensorManager;->m_gyroListener:Landroid/hardware/SensorEventListener;

    .line 47
    invoke-static {}, Lcom/shiftup/sensor/GyroSensorManager;->Reset()V

    return-void
.end method

.method private static FitToRange(D)D
    .locals 5

    .line 60
    sget-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_maxDegree:D

    cmpg-double v2, v0, p0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    neg-double v2, v0

    cmpl-double v4, v2, p0

    if-lez v4, :cond_1

    neg-double p0, v0

    :cond_1
    return-wide p0
.end method

.method public static GetPitch()D
    .locals 2

    .line 56
    sget-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_pitch:D

    return-wide v0
.end method

.method public static GetRoll()D
    .locals 2

    .line 55
    sget-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_roll:D

    return-wide v0
.end method

.method public static GetYaw()D
    .locals 2

    .line 57
    sget-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_yaw:D

    return-wide v0
.end method

.method public static Initialize(Landroid/content/Context;)V
    .locals 3

    const-string v0, "sensor"

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    sput-object p0, Lcom/shiftup/sensor/GyroSensorManager;->m_sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x4

    .line 25
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    sput-object p0, Lcom/shiftup/sensor/GyroSensorManager;->m_gyroSensor:Landroid/hardware/Sensor;

    .line 26
    new-instance p0, Lcom/shiftup/sensor/GyroSensorManager$GyroscopeListener;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shiftup/sensor/GyroSensorManager$GyroscopeListener;-><init>(Lcom/shiftup/sensor/GyroSensorManager$1;)V

    sput-object p0, Lcom/shiftup/sensor/GyroSensorManager;->m_gyroListener:Landroid/hardware/SensorEventListener;

    const-wide/16 v0, 0x0

    .line 28
    sput-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_timestamp:J

    const-wide v0, 0x4086800000000000L    # 720.0

    .line 29
    sput-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_maxDegree:D

    .line 31
    invoke-static {}, Lcom/shiftup/sensor/GyroSensorManager;->Reset()V

    .line 33
    sget-object p0, Lcom/shiftup/sensor/GyroSensorManager;->m_sensorManager:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/shiftup/sensor/GyroSensorManager;->m_gyroListener:Landroid/hardware/SensorEventListener;

    sget-object v1, Lcom/shiftup/sensor/GyroSensorManager;->m_gyroSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public static IsDisposable()Z
    .locals 1

    .line 37
    sget-object v0, Lcom/shiftup/sensor/GyroSensorManager;->m_sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 51
    sput-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_yaw:D

    sput-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_pitch:D

    sput-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_roll:D

    return-void
.end method

.method public static SetRange(D)V
    .locals 0

    .line 54
    sput-wide p0, Lcom/shiftup/sensor/GyroSensorManager;->m_maxDegree:D

    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .line 9
    sget-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_timestamp:J

    return-wide v0
.end method

.method static synthetic access$102(J)J
    .locals 0

    .line 9
    sput-wide p0, Lcom/shiftup/sensor/GyroSensorManager;->m_timestamp:J

    return-wide p0
.end method

.method static synthetic access$200()D
    .locals 2

    .line 9
    sget-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_roll:D

    return-wide v0
.end method

.method static synthetic access$202(D)D
    .locals 0

    .line 9
    sput-wide p0, Lcom/shiftup/sensor/GyroSensorManager;->m_roll:D

    return-wide p0
.end method

.method static synthetic access$218(D)D
    .locals 2

    .line 9
    sget-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_roll:D

    add-double/2addr v0, p0

    sput-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_roll:D

    return-wide v0
.end method

.method static synthetic access$300()D
    .locals 2

    .line 9
    sget-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_pitch:D

    return-wide v0
.end method

.method static synthetic access$302(D)D
    .locals 0

    .line 9
    sput-wide p0, Lcom/shiftup/sensor/GyroSensorManager;->m_pitch:D

    return-wide p0
.end method

.method static synthetic access$318(D)D
    .locals 2

    .line 9
    sget-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_pitch:D

    add-double/2addr v0, p0

    sput-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_pitch:D

    return-wide v0
.end method

.method static synthetic access$400()D
    .locals 2

    .line 9
    sget-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_yaw:D

    return-wide v0
.end method

.method static synthetic access$402(D)D
    .locals 0

    .line 9
    sput-wide p0, Lcom/shiftup/sensor/GyroSensorManager;->m_yaw:D

    return-wide p0
.end method

.method static synthetic access$418(D)D
    .locals 2

    .line 9
    sget-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_yaw:D

    add-double/2addr v0, p0

    sput-wide v0, Lcom/shiftup/sensor/GyroSensorManager;->m_yaw:D

    return-wide v0
.end method

.method static synthetic access$500(D)D
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/shiftup/sensor/GyroSensorManager;->FitToRange(D)D

    move-result-wide p0

    return-wide p0
.end method
