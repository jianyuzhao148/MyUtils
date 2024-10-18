.class final Lcom/xsolla/android/login/ui/ActivityAuthWebView$onCreate$1;
.super Ljava/lang/Object;
.source "ActivityAuthWebView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/login/ui/ActivityAuthWebView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xsolla/android/login/ui/ActivityAuthWebView;


# direct methods
.method constructor <init>(Lcom/xsolla/android/login/ui/ActivityAuthWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/xsolla/android/login/ui/ActivityAuthWebView$onCreate$1;->this$0:Lcom/xsolla/android/login/ui/ActivityAuthWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 38
    iget-object p1, p0, Lcom/xsolla/android/login/ui/ActivityAuthWebView$onCreate$1;->this$0:Lcom/xsolla/android/login/ui/ActivityAuthWebView;

    .line 40
    new-instance v0, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;

    sget-object v1, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;->CANCELLED:Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Result;-><init>(Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 38
    invoke-static {p1, v1, v0}, Lcom/xsolla/android/login/ui/ActivityAuthWebView;->access$finishWithResult(Lcom/xsolla/android/login/ui/ActivityAuthWebView;ILcom/xsolla/android/login/ui/ActivityAuthWebView$Result;)V

    return-void
.end method
