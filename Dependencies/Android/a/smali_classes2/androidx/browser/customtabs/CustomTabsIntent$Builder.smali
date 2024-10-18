.class public final Landroidx/browser/customtabs/CustomTabsIntent$Builder;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActionButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mColorSchemeParamBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultColorSchemeBuilder:Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

.field private mDefaultColorSchemeBundle:Landroid/os/Bundle;

.field private mInstantAppsEnabled:Z

.field private final mIntent:Landroid/content/Intent;

.field private mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mShareState:I

.field private mStartAnimationBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    .line 390
    new-instance v0, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mDefaultColorSchemeBuilder:Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    const/4 v0, 0x0

    .line 397
    iput v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mShareState:I

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mInstantAppsEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsSession;)V
    .locals 2

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    .line 390
    new-instance v0, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mDefaultColorSchemeBuilder:Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    const/4 v0, 0x0

    .line 397
    iput v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mShareState:I

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mInstantAppsEnabled:Z

    if-eqz p1, :cond_0

    .line 417
    invoke-virtual {p0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setSession(Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :cond_0
    return-void
.end method

.method private setSessionParameters(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 2

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.customtabs.extra.SESSION"

    .line 450
    invoke-static {v0, v1, p1}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    if-eqz p2, :cond_0

    const-string p1, "android.support.customtabs.extra.SESSION_ID"

    .line 452
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 455
    :cond_0
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build()Landroidx/browser/customtabs/CustomTabsIntent;
    .locals 3

    .line 877
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.SESSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 879
    invoke-direct {p0, v0, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setSessionParameters(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 881
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 882
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.MENU_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 884
    :cond_1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 885
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 887
    :cond_2
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    iget-boolean v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mInstantAppsEnabled:Z

    const-string v2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 889
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mDefaultColorSchemeBuilder:Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->build()Landroidx/browser/customtabs/CustomTabColorSchemeParams;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 890
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mDefaultColorSchemeBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 891
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 894
    :cond_3
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mColorSchemeParamBundles:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 895
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 896
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mColorSchemeParamBundles:Landroid/util/SparseArray;

    const-string v2, "androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 898
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 900
    :cond_4
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    iget v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mShareState:I

    const-string v2, "androidx.browser.customtabs.extra.SHARE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 902
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mStartAnimationBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsIntent;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setSession(Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 2

    .line 429
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsSession;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsSession;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsSession;->getId()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setSessionParameters(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    return-object p0
.end method

.method public setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mDefaultColorSchemeBuilder:Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    return-object p0
.end method
