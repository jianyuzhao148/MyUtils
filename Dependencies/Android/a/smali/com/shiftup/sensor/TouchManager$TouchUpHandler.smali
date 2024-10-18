.class final Lcom/shiftup/sensor/TouchManager$TouchUpHandler;
.super Lcom/shiftup/sensor/Pointer$Handler;
.source "TouchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shiftup/sensor/TouchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchUpHandler"
.end annotation


# direct methods
.method varargs constructor <init>([Lcom/shiftup/sensor/Pointer;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/shiftup/sensor/Pointer$Handler;-><init>([Lcom/shiftup/sensor/Pointer;)V

    return-void
.end method


# virtual methods
.method public forEachPointer(IFF)V
    .locals 0

    .line 113
    invoke-static {p1, p2, p3}, Lcom/shiftup/sensor/TouchManager;->access$200(IFF)V

    return-void
.end method
