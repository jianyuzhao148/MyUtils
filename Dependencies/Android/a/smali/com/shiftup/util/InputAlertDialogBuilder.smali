.class public Lcom/shiftup/util/InputAlertDialogBuilder;
.super Ljava/lang/Object;
.source "InputAlertDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shiftup/util/InputAlertDialogBuilder$OnConfirmListener;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private editTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Landroid/content/DialogInterface$OnClickListener;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->editTexts:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->fieldNames:Ljava/util/ArrayList;

    const-string v0, "Input Parameters"

    .line 16
    iput-object v0, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->title:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->listener:Landroid/content/DialogInterface$OnClickListener;

    .line 21
    iput-object p1, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->ctx:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/shiftup/util/InputAlertDialogBuilder;)Ljava/util/ArrayList;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->editTexts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/shiftup/util/InputAlertDialogBuilder;)Ljava/util/ArrayList;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->fieldNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static start(Landroid/content/Context;)Lcom/shiftup/util/InputAlertDialogBuilder;
    .locals 1

    .line 25
    new-instance v0, Lcom/shiftup/util/InputAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/shiftup/util/InputAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addField(Ljava/lang/String;I)Lcom/shiftup/util/InputAlertDialogBuilder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p1}, Lcom/shiftup/util/InputAlertDialogBuilder;->addField(Ljava/lang/String;ILjava/lang/String;)Lcom/shiftup/util/InputAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addField(Ljava/lang/String;ILjava/lang/String;)Lcom/shiftup/util/InputAlertDialogBuilder;
    .locals 2

    .line 33
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 35
    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p2, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p2, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->fieldNames:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setListener(Lcom/shiftup/util/InputAlertDialogBuilder$OnConfirmListener;)Lcom/shiftup/util/InputAlertDialogBuilder;
    .locals 1

    .line 44
    new-instance v0, Lcom/shiftup/util/InputAlertDialogBuilder$1;

    invoke-direct {v0, p0, p1}, Lcom/shiftup/util/InputAlertDialogBuilder$1;-><init>(Lcom/shiftup/util/InputAlertDialogBuilder;Lcom/shiftup/util/InputAlertDialogBuilder$OnConfirmListener;)V

    iput-object v0, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/shiftup/util/InputAlertDialogBuilder;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public show()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x20

    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 75
    iget-object v2, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 76
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    iget-object v2, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 83
    iget-object v0, p0, Lcom/shiftup/util/InputAlertDialogBuilder;->listener:Landroid/content/DialogInterface$OnClickListener;

    const-string v2, "Confirm"

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
