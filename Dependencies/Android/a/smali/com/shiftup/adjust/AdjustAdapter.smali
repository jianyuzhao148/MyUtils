.class public Lcom/shiftup/adjust/AdjustAdapter;
.super Ljava/lang/Object;
.source "AdjustAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shiftup/adjust/AdjustAdapter$AdjustLifecycleCallbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdjustAdapter"

.field private static m_bActivated:Z = false

.field private static m_strADID:Ljava/lang/String; = "none"

.field private static m_strConversionData:Ljava/lang/String; = "none"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activateAdjust()V
    .locals 14

    .line 59
    sget-boolean v0, Lcom/shiftup/adjust/AdjustAdapter;->m_bActivated:Z

    const-string v1, "AdjustAdapter"

    if-eqz v0, :cond_0

    const-string v0, "adjust already initiated!"

    .line 60
    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 64
    sput-boolean v0, Lcom/shiftup/adjust/AdjustAdapter;->m_bActivated:Z

    const-string v2, "init adjust"

    .line 65
    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v1, Lcom/adjust/sdk/AdjustConfig;

    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "5oxcn2wcqxs0"

    const-string v4, "production"

    invoke-direct {v1, v2, v3, v4}, Lcom/adjust/sdk/AdjustConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v2, Lcom/shiftup/destinychild/BuildConfig;->ADJUST_SECRET:[J

    const/4 v3, 0x0

    .line 69
    aget-wide v4, v2, v3

    aget-wide v6, v2, v0

    const/4 v0, 0x2

    aget-wide v8, v2, v0

    const/4 v0, 0x3

    aget-wide v10, v2, v0

    const/4 v0, 0x4

    aget-wide v12, v2, v0

    move-object v3, v1

    invoke-virtual/range {v3 .. v13}, Lcom/adjust/sdk/AdjustConfig;->setAppSecret(JJJJJ)V

    .line 71
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    .line 72
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/shiftup/adjust/AdjustAdapter$AdjustLifecycleCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/shiftup/adjust/AdjustAdapter$AdjustLifecycleCallbacks;-><init>(Lcom/shiftup/adjust/AdjustAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 73
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onResume()V

    return-void
.end method

.method public static getAdjustADID()Ljava/lang/String;
    .locals 1

    .line 125
    invoke-static {}, Lcom/shiftup/adjust/AdjustAdapter;->getConversionData()Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/shiftup/adjust/AdjustAdapter;->m_strADID:Ljava/lang/String;

    return-object v0
.end method

.method public static getConversionData()Ljava/lang/String;
    .locals 3

    .line 106
    sget-boolean v0, Lcom/shiftup/adjust/AdjustAdapter;->m_bActivated:Z

    const-string v1, "AdjustAdapter"

    if-nez v0, :cond_0

    const-string v0, "GetConversionData() failed. adjust is not initiated!"

    .line 107
    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/shiftup/adjust/AdjustAdapter;->m_strConversionData:Ljava/lang/String;

    return-object v0

    .line 112
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getAttribution()Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v0

    .line 113
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/shiftup/adjust/AdjustAdapter;->m_strConversionData:Ljava/lang/String;

    .line 115
    iget-object v0, v0, Lcom/adjust/sdk/AdjustAttribution;->adid:Ljava/lang/String;

    sput-object v0, Lcom/shiftup/adjust/AdjustAdapter;->m_strADID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v0, "none"

    .line 118
    sput-object v0, Lcom/shiftup/adjust/AdjustAdapter;->m_strConversionData:Ljava/lang/String;

    .line 119
    sput-object v0, Lcom/shiftup/adjust/AdjustAdapter;->m_strADID:Ljava/lang/String;

    .line 121
    :goto_0
    sget-object v0, Lcom/shiftup/adjust/AdjustAdapter;->m_strConversionData:Ljava/lang/String;

    return-object v0
.end method

.method public static sendTrackingEvent(Ljava/lang/String;)V
    .locals 4

    .line 77
    sget-boolean v0, Lcom/shiftup/adjust/AdjustAdapter;->m_bActivated:Z

    const-string v1, "AdjustAdapter"

    if-nez v0, :cond_0

    const-string p0, "SendTrackingEvent() failed. adjust is not initiated!"

    .line 78
    invoke-static {v1, p0}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/shiftup/adjust/AdjustAdapter;->getConversionData()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTrackingEvent  eventToken : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    const-string p0, "param"

    .line 86
    invoke-virtual {v1, p0, v0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, p0, v0}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    return-void
.end method

.method public static sendTrackingEventIAP(FLjava/lang/String;Z)V
    .locals 3

    .line 92
    sget-boolean v0, Lcom/shiftup/adjust/AdjustAdapter;->m_bActivated:Z

    const-string v1, "AdjustAdapter"

    if-nez v0, :cond_0

    const-string p0, "SendTrackingEventIAP() failed. adjust is not initiated!"

    .line 93
    invoke-static {v1, p0}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTrackingEventIAP  price : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  currency : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    const-string v1, "jpse0f"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    float-to-double v1, p0

    .line 98
    invoke-virtual {v0, v1, v2, p1}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    .line 99
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    if-eqz p2, :cond_1

    const-string p0, "xuncj7"

    .line 102
    invoke-static {p0}, Lcom/shiftup/adjust/AdjustAdapter;->sendTrackingEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdjustAdapter"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nid"

    .line 131
    invoke-static {v0, p0}, Lcom/adjust/sdk/Adjust;->addSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {v0, p0}, Lcom/adjust/sdk/Adjust;->addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
