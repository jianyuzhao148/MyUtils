.class final Lcom/shiftup/sensor/TouchManager$PinchHandler;
.super Lcom/shiftup/sensor/Pointer$Handler;
.source "TouchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shiftup/sensor/TouchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PinchHandler"
.end annotation


# instance fields
.field private final pinch:F


# direct methods
.method constructor <init>(Lcom/shiftup/sensor/Pointer;F)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shiftup/sensor/Pointer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 121
    invoke-direct {p0, v0}, Lcom/shiftup/sensor/Pointer$Handler;-><init>([Lcom/shiftup/sensor/Pointer;)V

    .line 122
    iput p2, p0, Lcom/shiftup/sensor/TouchManager$PinchHandler;->pinch:F

    return-void
.end method


# virtual methods
.method public forEachPointer(IFF)V
    .locals 0

    .line 128
    iget p1, p0, Lcom/shiftup/sensor/TouchManager$PinchHandler;->pinch:F

    invoke-static {p2, p3, p1}, Lcom/shiftup/sensor/TouchManager;->access$300(FFF)V

    return-void
.end method
