.class public final synthetic Lcom/NextFloor/DestinyChild/-$$Lambda$MainActivity$h9CJpE027MYNG9m9VqGBD7R_774;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/NextFloor/DestinyChild/-$$Lambda$MainActivity$h9CJpE027MYNG9m9VqGBD7R_774;->f$0:I

    iput p2, p0, Lcom/NextFloor/DestinyChild/-$$Lambda$MainActivity$h9CJpE027MYNG9m9VqGBD7R_774;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/NextFloor/DestinyChild/-$$Lambda$MainActivity$h9CJpE027MYNG9m9VqGBD7R_774;->f$0:I

    iget v1, p0, Lcom/NextFloor/DestinyChild/-$$Lambda$MainActivity$h9CJpE027MYNG9m9VqGBD7R_774;->f$1:I

    invoke-static {v0, v1}, Lcom/NextFloor/DestinyChild/MainActivity;->lambda$onConfigurationChanged$0(II)V

    return-void
.end method
