.class public final synthetic Lcom/NextFloor/DestinyChild/-$$Lambda$AndroidBug5497Workaround$e3vHpEMU_ga49kza79069ZnA3fY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/NextFloor/DestinyChild/-$$Lambda$AndroidBug5497Workaround$e3vHpEMU_ga49kza79069ZnA3fY;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/NextFloor/DestinyChild/-$$Lambda$AndroidBug5497Workaround$e3vHpEMU_ga49kza79069ZnA3fY;->f$0:Landroid/view/View;

    invoke-static {v0}, Lcom/NextFloor/DestinyChild/AndroidBug5497Workaround;->lambda$assistActivity$0(Landroid/view/View;)V

    return-void
.end method
