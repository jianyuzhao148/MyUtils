.class Lcom/shiftup/util/SoftNavigationManager$1;
.super Ljava/lang/Object;
.source "SoftNavigationManager.java"

# interfaces
.implements Lcom/shiftup/util/SoftNavigationManager$NavigationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shiftup/util/SoftNavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hide(Landroid/view/View;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/shiftup/util/SoftNavigationManager;->access$100()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 1

    .line 40
    invoke-static {}, Lcom/shiftup/util/SoftNavigationManager;->access$000()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
