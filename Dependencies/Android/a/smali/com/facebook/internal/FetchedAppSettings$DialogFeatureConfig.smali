.class public final Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
.super Ljava/lang/Object;
.source "FetchedAppSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FetchedAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DialogFeatureConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;


# instance fields
.field private final dialogName:Ljava/lang/String;

.field private final featureName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->Companion:Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->dialogName:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V

    return-void
.end method


# virtual methods
.method public final getDialogName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->dialogName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureName:Ljava/lang/String;

    return-object v0
.end method
