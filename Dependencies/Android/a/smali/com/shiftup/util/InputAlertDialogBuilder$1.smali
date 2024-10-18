.class Lcom/shiftup/util/InputAlertDialogBuilder$1;
.super Ljava/lang/Object;
.source "InputAlertDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/util/InputAlertDialogBuilder;->setListener(Lcom/shiftup/util/InputAlertDialogBuilder$OnConfirmListener;)Lcom/shiftup/util/InputAlertDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/util/InputAlertDialogBuilder;

.field final synthetic val$listener:Lcom/shiftup/util/InputAlertDialogBuilder$OnConfirmListener;


# direct methods
.method constructor <init>(Lcom/shiftup/util/InputAlertDialogBuilder;Lcom/shiftup/util/InputAlertDialogBuilder$OnConfirmListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/shiftup/util/InputAlertDialogBuilder$1;->this$0:Lcom/shiftup/util/InputAlertDialogBuilder;

    iput-object p2, p0, Lcom/shiftup/util/InputAlertDialogBuilder$1;->val$listener:Lcom/shiftup/util/InputAlertDialogBuilder$OnConfirmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 47
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/shiftup/util/InputAlertDialogBuilder$1;->this$0:Lcom/shiftup/util/InputAlertDialogBuilder;

    invoke-static {v1}, Lcom/shiftup/util/InputAlertDialogBuilder;->access$000(Lcom/shiftup/util/InputAlertDialogBuilder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/shiftup/util/InputAlertDialogBuilder$1;->this$0:Lcom/shiftup/util/InputAlertDialogBuilder;

    invoke-static {v1}, Lcom/shiftup/util/InputAlertDialogBuilder;->access$100(Lcom/shiftup/util/InputAlertDialogBuilder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/shiftup/util/InputAlertDialogBuilder$1;->this$0:Lcom/shiftup/util/InputAlertDialogBuilder;

    invoke-static {v2}, Lcom/shiftup/util/InputAlertDialogBuilder;->access$000(Lcom/shiftup/util/InputAlertDialogBuilder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/shiftup/util/InputAlertDialogBuilder$1;->val$listener:Lcom/shiftup/util/InputAlertDialogBuilder$OnConfirmListener;

    invoke-interface {v0, p1, p2}, Lcom/shiftup/util/InputAlertDialogBuilder$OnConfirmListener;->onConfirm(Landroid/content/DialogInterface;Ljava/util/Map;)V

    return-void
.end method
