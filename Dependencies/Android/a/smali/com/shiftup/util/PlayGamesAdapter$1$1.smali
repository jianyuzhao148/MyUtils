.class Lcom/shiftup/util/PlayGamesAdapter$1$1;
.super Ljava/lang/Object;
.source "PlayGamesAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/util/PlayGamesAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/util/PlayGamesAdapter$1;


# direct methods
.method constructor <init>(Lcom/shiftup/util/PlayGamesAdapter$1;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/shiftup/util/PlayGamesAdapter$1$1;->this$0:Lcom/shiftup/util/PlayGamesAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string p1, "su.util.PlayGamesAdapter"

    const-string v0, "IsGooglePlayServicesAvailable showErrorDialogFragment OnCancel"

    .line 49
    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :try_start_0
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "showErrorDialogFragment : onCancel Exception!!"

    .line 53
    invoke-static {p1, v1}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->w(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
