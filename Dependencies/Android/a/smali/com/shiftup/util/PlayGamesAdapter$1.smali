.class Lcom/shiftup/util/PlayGamesAdapter$1;
.super Ljava/lang/Object;
.source "PlayGamesAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/util/PlayGamesAdapter;->IsGooglePlayServicesAvailable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$status:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/shiftup/util/PlayGamesAdapter$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 46
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/shiftup/util/PlayGamesAdapter$1;->val$status:I

    new-instance v3, Lcom/shiftup/util/PlayGamesAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/shiftup/util/PlayGamesAdapter$1$1;-><init>(Lcom/shiftup/util/PlayGamesAdapter$1;)V

    const/16 v4, 0x232a

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void
.end method
