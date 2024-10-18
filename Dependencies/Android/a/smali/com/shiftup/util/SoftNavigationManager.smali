.class public Lcom/shiftup/util/SoftNavigationManager;
.super Ljava/lang/Object;
.source "SoftNavigationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shiftup/util/SoftNavigationManager$NavigationHandler;
    }
.end annotation


# static fields
.field private static final PREF_KEY_NAV_SETTING:Ljava/lang/String; = "SetButtomUINavigation"

.field public static final PREF_VAL_HIDE_NAV:I = 0x1

.field public static final PREF_VAL_NOT_AVAILABLE:I = -0x1

.field public static final PREF_VAL_SHOW_NAV:I = 0x0

.field public static final PREF_VAL_UNSET:I = -0xa

.field private static final TAG:Ljava/lang/String; = "SoftNavigationManager"

.field private static UI_VISIBILITY_HIDE_NAV:I

.field private static UI_VISIBILITY_SHOW_NAV:I

.field private static final handler:Lcom/shiftup/util/SoftNavigationManager$NavigationHandler;

.field private static m_navSetting:I

.field private static m_showOnFirst:Ljava/lang/Boolean;

.field private static m_softNavAvailable:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 37
    new-instance v0, Lcom/shiftup/util/SoftNavigationManager$1;

    invoke-direct {v0}, Lcom/shiftup/util/SoftNavigationManager$1;-><init>()V

    sput-object v0, Lcom/shiftup/util/SoftNavigationManager;->handler:Lcom/shiftup/util/SoftNavigationManager$NavigationHandler;

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lcom/shiftup/util/SoftNavigationManager$2;

    invoke-direct {v0}, Lcom/shiftup/util/SoftNavigationManager$2;-><init>()V

    sput-object v0, Lcom/shiftup/util/SoftNavigationManager;->handler:Lcom/shiftup/util/SoftNavigationManager$NavigationHandler;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetSoftNavigationState()I
    .locals 1

    .line 89
    sget v0, Lcom/shiftup/util/SoftNavigationManager;->m_navSetting:I

    return v0
.end method

.method private static InitUIVisibilityParams(Landroid/view/View;)V
    .locals 1

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    sput p0, Lcom/shiftup/util/SoftNavigationManager;->UI_VISIBILITY_SHOW_NAV:I

    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "InitUIVisibilityParams::: default system UI visibility param - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/shiftup/util/SoftNavigationManager;->UI_VISIBILITY_SHOW_NAV:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SoftNavigationManager"

    invoke-static {v0, p0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x400

    .line 139
    sput p0, Lcom/shiftup/util/SoftNavigationManager;->UI_VISIBILITY_HIDE_NAV:I

    or-int/lit8 p0, p0, 0x2

    .line 140
    sput p0, Lcom/shiftup/util/SoftNavigationManager;->UI_VISIBILITY_HIDE_NAV:I

    or-int/lit8 p0, p0, 0x4

    .line 141
    sput p0, Lcom/shiftup/util/SoftNavigationManager;->UI_VISIBILITY_HIDE_NAV:I

    or-int/lit16 p0, p0, 0x1000

    .line 142
    sput p0, Lcom/shiftup/util/SoftNavigationManager;->UI_VISIBILITY_HIDE_NAV:I

    return-void
.end method

.method public static Initialize(Landroid/view/Window;)V
    .locals 2

    .line 118
    sget-object v0, Lcom/shiftup/util/SoftNavigationManager;->m_showOnFirst:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/shiftup/util/SoftNavigationManager;->InitUIVisibilityParams(Landroid/view/View;)V

    .line 126
    :cond_0
    sget-object v0, Lcom/shiftup/util/SoftNavigationManager;->m_showOnFirst:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/shiftup/util/SoftNavigationManager;->LoadNavigationSettings(I)V

    .line 128
    invoke-static {}, Lcom/shiftup/util/SoftNavigationManager;->IsSoftNavigationAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/shiftup/util/SoftNavigationManager;->UpdateSoftNavigation(Landroid/view/View;)V

    :cond_1
    return-void

    .line 119
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\"ShowOnFirstRun\" must be called before \"Initialize\""

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static IsSoftNavigationAvailable()Z
    .locals 5

    .line 68
    sget-object v0, Lcom/shiftup/util/SoftNavigationManager;->m_softNavAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 69
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 71
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "SoftNavigationManager"

    if-lez v1, :cond_0

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/shiftup/util/SoftNavigationManager;->m_softNavAvailable:Ljava/lang/Boolean;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " config_showNavigationBar "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shiftup/util/SoftNavigationManager;->m_softNavAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x4

    .line 78
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    const/4 v1, 0x3

    .line 79
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " KeyCharacterMap KEYCODE_BACK, KEYCODE_HOME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 81
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/shiftup/util/SoftNavigationManager;->m_softNavAvailable:Ljava/lang/Boolean;

    .line 85
    :cond_3
    :goto_2
    sget-object v0, Lcom/shiftup/util/SoftNavigationManager;->m_softNavAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static LoadNavigationSettings(I)V
    .locals 3

    .line 147
    invoke-static {}, Lcom/shiftup/util/SoftNavigationManager;->IsSoftNavigationAvailable()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 148
    invoke-static {v1}, Lcom/shiftup/util/SoftNavigationManager;->SetSoftNavigationState(I)V

    return-void

    :cond_0
    const-string v0, "SetButtomUINavigation"

    const/16 v2, -0xa

    .line 152
    invoke-static {v0, v2}, Lcom/shiftup/util/SharedPrefHelper;->GetInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    .line 158
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/shiftup/util/SoftNavigationManager;->SetSoftNavigationState(I)V

    return-void
.end method

.method public static SetSoftNavigation(Z)V
    .locals 2

    .line 93
    sget v0, Lcom/shiftup/util/SoftNavigationManager;->m_navSetting:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    xor-int/lit8 p0, p0, 0x1

    .line 94
    invoke-static {p0}, Lcom/shiftup/util/SoftNavigationManager;->SetSoftNavigationState(I)V

    :cond_0
    return-void
.end method

.method private static SetSoftNavigationState(I)V
    .locals 1

    .line 99
    sput p0, Lcom/shiftup/util/SoftNavigationManager;->m_navSetting:I

    const-string v0, "SetButtomUINavigation"

    .line 100
    invoke-static {v0, p0}, Lcom/shiftup/util/SharedPrefHelper;->SetInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static ShowOnFirstRun(Z)V
    .locals 0

    .line 64
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/shiftup/util/SoftNavigationManager;->m_showOnFirst:Ljava/lang/Boolean;

    return-void
.end method

.method public static UpdateSoftNavigation(Landroid/view/View;)V
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateSoftNavigation::: Current soft navigation setting - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/shiftup/util/SoftNavigationManager;->m_navSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoftNavigationManager"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget v0, Lcom/shiftup/util/SoftNavigationManager;->m_navSetting:I

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateSoftNavigation::: UI visibility param for showing soft nav. - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/shiftup/util/SoftNavigationManager;->UI_VISIBILITY_SHOW_NAV:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/shiftup/util/SoftNavigationManager;->handler:Lcom/shiftup/util/SoftNavigationManager$NavigationHandler;

    invoke-interface {v0, p0}, Lcom/shiftup/util/SoftNavigationManager$NavigationHandler;->show(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateSoftNavigation::: UI visibility param for hiding soft nav. - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/shiftup/util/SoftNavigationManager;->UI_VISIBILITY_HIDE_NAV:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/shiftup/util/SoftNavigationManager;->handler:Lcom/shiftup/util/SoftNavigationManager$NavigationHandler;

    invoke-interface {v0, p0}, Lcom/shiftup/util/SoftNavigationManager$NavigationHandler;->hide(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 11
    sget v0, Lcom/shiftup/util/SoftNavigationManager;->UI_VISIBILITY_SHOW_NAV:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 11
    sget v0, Lcom/shiftup/util/SoftNavigationManager;->UI_VISIBILITY_HIDE_NAV:I

    return v0
.end method
