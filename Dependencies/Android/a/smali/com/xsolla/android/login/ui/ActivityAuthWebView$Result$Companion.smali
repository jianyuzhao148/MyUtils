.class public final Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result$Companion;
.super Ljava/lang/Object;
.source "ActivityAuthWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromResultIntent(Landroid/content/Intent;)Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "result"

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance p1, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;

    sget-object v0, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;->ERROR:Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {p1, v0, v1, v2}, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;-><init>(Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
