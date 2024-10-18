.class Lcom/NextFloor/DestinyChild/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "MainActivity.java"


# static fields
.field private static usableHeightPrevious:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x1020002

    .line 112
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    new-instance v1, Lcom/NextFloor/DestinyChild/-$$Lambda$AndroidBug5497Workaround$e3vHpEMU_ga49kza79069ZnA3fY;

    invoke-direct {v1, v0}, Lcom/NextFloor/DestinyChild/-$$Lambda$AndroidBug5497Workaround$e3vHpEMU_ga49kza79069ZnA3fY;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic lambda$assistActivity$0(Landroid/view/View;)V
    .locals 2

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 118
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    .line 119
    sget v0, Lcom/NextFloor/DestinyChild/AndroidBug5497Workaround;->usableHeightPrevious:I

    if-eq v1, v0, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 121
    sput v1, Lcom/NextFloor/DestinyChild/AndroidBug5497Workaround;->usableHeightPrevious:I

    :cond_0
    return-void
.end method
