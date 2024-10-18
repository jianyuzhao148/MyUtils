.class Lcom/shiftup/sensor/GyroSensorManager$GyroscopeListener;
.super Ljava/lang/Object;
.source "GyroSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shiftup/sensor/GyroSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GyroscopeListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shiftup/sensor/GyroSensorManager$1;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/shiftup/sensor/GyroSensorManager$GyroscopeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 69
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {}, Lcom/shiftup/sensor/GyroSensorManager;->access$100()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 72
    :cond_0
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {}, Lcom/shiftup/sensor/GyroSensorManager;->access$100()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    .line 75
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v2, v3}, Lcom/shiftup/sensor/GyroSensorManager;->access$102(J)J

    .line 76
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/shiftup/sensor/GyroSensorManager;->access$218(D)D

    .line 77
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-double v2, v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/shiftup/sensor/GyroSensorManager;->access$318(D)D

    .line 78
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    float-to-double v2, p1

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shiftup/sensor/GyroSensorManager;->access$418(D)D

    .line 81
    invoke-static {}, Lcom/shiftup/sensor/GyroSensorManager;->access$200()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shiftup/sensor/GyroSensorManager;->access$500(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shiftup/sensor/GyroSensorManager;->access$202(D)D

    .line 82
    invoke-static {}, Lcom/shiftup/sensor/GyroSensorManager;->access$300()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shiftup/sensor/GyroSensorManager;->access$500(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shiftup/sensor/GyroSensorManager;->access$302(D)D

    .line 83
    invoke-static {}, Lcom/shiftup/sensor/GyroSensorManager;->access$400()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shiftup/sensor/GyroSensorManager;->access$500(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shiftup/sensor/GyroSensorManager;->access$402(D)D

    return-void
.end method
