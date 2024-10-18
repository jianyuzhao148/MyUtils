.class public Lcom/shiftup/util/StaticContext;
.super Ljava/lang/Object;
.source "StaticContext.java"


# static fields
.field private static sCurrentActivity:Landroid/app/Activity;


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

.method public static GetAppContext()Landroid/content/Context;
    .locals 1

    .line 25
    sget-object v0, Lcom/shiftup/util/StaticContext;->sCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static GetApplication()Landroid/app/Application;
    .locals 1

    .line 26
    sget-object v0, Lcom/shiftup/util/StaticContext;->sCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static GetCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 18
    sget-object v0, Lcom/shiftup/util/StaticContext;->sCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static GetCurrentContext()Landroid/content/Context;
    .locals 1

    .line 17
    sget-object v0, Lcom/shiftup/util/StaticContext;->sCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static SetCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 29
    sput-object p0, Lcom/shiftup/util/StaticContext;->sCurrentActivity:Landroid/app/Activity;

    return-void
.end method
