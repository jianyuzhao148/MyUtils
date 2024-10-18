.class Lcom/shiftup/inapp/XsollaPurchaseAdapter$2$1;
.super Ljava/lang/Object;
.source "XsollaPurchaseAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;->onFailure(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2$1;->this$1:Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "XSOLLA_FAIL"

    const/4 p2, 0x0

    .line 269
    invoke-static {p1, p2}, Lcom/shiftup/inapp/PurchaseAdapter;->nativeOnGenericPurchaseResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
