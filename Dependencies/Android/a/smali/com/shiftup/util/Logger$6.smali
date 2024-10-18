.class Lcom/shiftup/util/Logger$6;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/shiftup/util/Logger$LogFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/util/Logger;->GetRateFilter(IZ)Lcom/shiftup/util/Logger$LogFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$rate:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/shiftup/util/Logger$6;->val$rate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public okay(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 215
    iget p1, p0, Lcom/shiftup/util/Logger$6;->val$rate:I

    if-lt p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
