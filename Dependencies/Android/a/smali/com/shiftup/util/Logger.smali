.class public final Lcom/shiftup/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shiftup/util/Logger$LogFilter;,
        Lcom/shiftup/util/Logger$LogFunction;
    }
.end annotation


# static fields
.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final FATAL:I = 0x7

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARNING:I = 0x5

.field private static filterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shiftup/util/Logger$LogFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shiftup/util/Logger;->filterList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs AddFilters([Lcom/shiftup/util/Logger$LogFilter;)V
    .locals 1

    .line 248
    sget-object v0, Lcom/shiftup/util/Logger;->filterList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static GetMessageFilter(Ljava/lang/String;)Lcom/shiftup/util/Logger$LogFilter;
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-static {p0, v0}, Lcom/shiftup/util/Logger;->GetMessageFilter(Ljava/lang/String;Z)Lcom/shiftup/util/Logger$LogFilter;

    move-result-object p0

    return-object p0
.end method

.method public static GetMessageFilter(Ljava/lang/String;Z)Lcom/shiftup/util/Logger$LogFilter;
    .locals 0

    if-eqz p1, :cond_0

    .line 146
    new-instance p1, Lcom/shiftup/util/Logger$3;

    invoke-direct {p1, p0}, Lcom/shiftup/util/Logger$3;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 153
    :cond_0
    new-instance p1, Lcom/shiftup/util/Logger$4;

    invoke-direct {p1, p0}, Lcom/shiftup/util/Logger$4;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static GetRateFilter(IZ)Lcom/shiftup/util/Logger$LogFilter;
    .locals 0

    if-eqz p1, :cond_0

    .line 205
    new-instance p1, Lcom/shiftup/util/Logger$5;

    invoke-direct {p1, p0}, Lcom/shiftup/util/Logger$5;-><init>(I)V

    return-object p1

    .line 212
    :cond_0
    new-instance p1, Lcom/shiftup/util/Logger$6;

    invoke-direct {p1, p0}, Lcom/shiftup/util/Logger$6;-><init>(I)V

    return-object p1
.end method

.method public static GetTagFilter(Ljava/lang/String;)Lcom/shiftup/util/Logger$LogFilter;
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-static {p0, v0}, Lcom/shiftup/util/Logger;->GetTagFilter(Ljava/lang/String;Z)Lcom/shiftup/util/Logger$LogFilter;

    move-result-object p0

    return-object p0
.end method

.method public static GetTagFilter(Ljava/lang/String;Z)Lcom/shiftup/util/Logger$LogFilter;
    .locals 0

    if-eqz p1, :cond_0

    .line 90
    new-instance p1, Lcom/shiftup/util/Logger$1;

    invoke-direct {p1, p0}, Lcom/shiftup/util/Logger$1;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 97
    :cond_0
    new-instance p1, Lcom/shiftup/util/Logger$2;

    invoke-direct {p1, p0}, Lcom/shiftup/util/Logger$2;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static varargs SetFilters([Lcom/shiftup/util/Logger$LogFilter;)V
    .locals 1

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/shiftup/util/Logger;->filterList:Ljava/util/List;

    return-void
.end method

.method public static SetLogRate(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Lcom/shiftup/util/Logger$LogFilter;

    const/4 v0, 0x6

    .line 32
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->GetRateFilter(IZ)Lcom/shiftup/util/Logger$LogFilter;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/shiftup/util/Logger;->SetFilters([Lcom/shiftup/util/Logger$LogFilter;)V

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lcom/shiftup/util/Logger$LogFilter;

    const/4 v0, 0x2

    .line 36
    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->GetRateFilter(IZ)Lcom/shiftup/util/Logger$LogFilter;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/shiftup/util/Logger;->SetFilters([Lcom/shiftup/util/Logger$LogFilter;)V

    :goto_0
    return-void
.end method

.method private static __Log(Ljava/lang/String;Ljava/lang/String;ILcom/shiftup/util/Logger$LogFunction;)V
    .locals 2

    .line 254
    sget-object v0, Lcom/shiftup/util/Logger;->filterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shiftup/util/Logger$LogFilter;

    .line 256
    invoke-interface {v1, p0, p1, p2}, Lcom/shiftup/util/Logger$LogFilter;->okay(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 259
    :cond_1
    invoke-interface {p3, p0, p1}, Lcom/shiftup/util/Logger$LogFunction;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 295
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 285
    new-instance v0, Lcom/shiftup/util/Logger$8;

    invoke-direct {v0}, Lcom/shiftup/util/Logger$8;-><init>()V

    const/4 v1, 0x3

    invoke-static {p0, p1, v1, v0}, Lcom/shiftup/util/Logger;->__Log(Ljava/lang/String;Ljava/lang/String;ILcom/shiftup/util/Logger$LogFunction;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 349
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 339
    new-instance v0, Lcom/shiftup/util/Logger$11;

    invoke-direct {v0}, Lcom/shiftup/util/Logger$11;-><init>()V

    const/4 v1, 0x6

    invoke-static {p0, p1, v1, v0}, Lcom/shiftup/util/Logger;->__Log(Ljava/lang/String;Ljava/lang/String;ILcom/shiftup/util/Logger$LogFunction;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 313
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 303
    new-instance v0, Lcom/shiftup/util/Logger$9;

    invoke-direct {v0}, Lcom/shiftup/util/Logger$9;-><init>()V

    const/4 v1, 0x4

    invoke-static {p0, p1, v1, v0}, Lcom/shiftup/util/Logger;->__Log(Ljava/lang/String;Ljava/lang/String;ILcom/shiftup/util/Logger$LogFunction;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 277
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shiftup/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 267
    new-instance v0, Lcom/shiftup/util/Logger$7;

    invoke-direct {v0}, Lcom/shiftup/util/Logger$7;-><init>()V

    const/4 v1, 0x2

    invoke-static {p0, p1, v1, v0}, Lcom/shiftup/util/Logger;->__Log(Ljava/lang/String;Ljava/lang/String;ILcom/shiftup/util/Logger$LogFunction;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 331
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 321
    new-instance v0, Lcom/shiftup/util/Logger$10;

    invoke-direct {v0}, Lcom/shiftup/util/Logger$10;-><init>()V

    const/4 v1, 0x5

    invoke-static {p0, p1, v1, v0}, Lcom/shiftup/util/Logger;->__Log(Ljava/lang/String;Ljava/lang/String;ILcom/shiftup/util/Logger$LogFunction;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 367
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shiftup/util/Logger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 357
    new-instance v0, Lcom/shiftup/util/Logger$12;

    invoke-direct {v0}, Lcom/shiftup/util/Logger$12;-><init>()V

    const/4 v1, 0x7

    invoke-static {p0, p1, v1, v0}, Lcom/shiftup/util/Logger;->__Log(Ljava/lang/String;Ljava/lang/String;ILcom/shiftup/util/Logger$LogFunction;)V

    return-void
.end method
