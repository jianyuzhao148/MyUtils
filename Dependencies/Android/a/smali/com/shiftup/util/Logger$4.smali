.class Lcom/shiftup/util/Logger$4;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/shiftup/util/Logger$LogFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/util/Logger;->GetMessageFilter(Ljava/lang/String;Z)Lcom/shiftup/util/Logger$LogFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$regex:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/shiftup/util/Logger$4;->val$regex:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public okay(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/shiftup/util/Logger$4;->val$regex:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
