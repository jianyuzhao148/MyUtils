.class public Lcom/NextFloor/DestinyChild/GlobalApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "GlobalApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 9
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 10
    invoke-static {p0}, Lcom/NextFloor/NFCommon/NFCommonLocalPush;->CreateLocalNotificationChannel(Landroid/content/Context;)V

    return-void
.end method
