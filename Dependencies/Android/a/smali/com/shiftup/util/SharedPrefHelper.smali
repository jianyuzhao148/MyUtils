.class public Lcom/shiftup/util/SharedPrefHelper;
.super Ljava/lang/Object;
.source "SharedPrefHelper.java"


# static fields
.field private static m_lock:Ljava/lang/Object;

.field private static m_pref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shiftup/util/SharedPrefHelper;->m_lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, v0}, Lcom/shiftup/util/SharedPrefHelper;->GetInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static GetInt(Ljava/lang/String;I)I
    .locals 2

    .line 40
    sget-object v0, Lcom/shiftup/util/SharedPrefHelper;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    invoke-static {}, Lcom/shiftup/util/SharedPrefHelper;->GetPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static GetPreference()Landroid/content/SharedPreferences;
    .locals 3

    .line 14
    sget-object v0, Lcom/shiftup/util/SharedPrefHelper;->m_pref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "pref"

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/shiftup/util/SharedPrefHelper;->m_pref:Landroid/content/SharedPreferences;

    .line 19
    :cond_0
    sget-object v0, Lcom/shiftup/util/SharedPrefHelper;->m_pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static GetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 22
    invoke-static {p0, v0}, Lcom/shiftup/util/SharedPrefHelper;->GetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 24
    sget-object v0, Lcom/shiftup/util/SharedPrefHelper;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/shiftup/util/SharedPrefHelper;->GetPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static SetInt(Ljava/lang/String;I)V
    .locals 2

    .line 46
    sget-object v0, Lcom/shiftup/util/SharedPrefHelper;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/shiftup/util/SharedPrefHelper;->GetPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 48
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 49
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 50
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static SetString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 30
    sget-object v0, Lcom/shiftup/util/SharedPrefHelper;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/shiftup/util/SharedPrefHelper;->GetPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 33
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 34
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
