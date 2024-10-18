.class Lcom/shiftup/inapp/XsollaPurchaseAdapter$2$2;
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

    .line 258
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2$2;->this$1:Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 261
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2$2;->this$1:Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;

    iget-object p2, p1, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;->val$strOrderId:Ljava/lang/String;

    invoke-static {p1}, Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;->access$200(Lcom/shiftup/inapp/XsollaPurchaseAdapter$2;)Lcom/xsolla/android/store/api/XStoreCallback;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xsolla/android/store/XStore;->getOrder(Ljava/lang/String;Lcom/xsolla/android/store/api/XStoreCallback;)V

    return-void
.end method
