.class Lcom/NextFloor/DestinyChild/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NextFloor/DestinyChild/MainActivity;->OpenInputDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$acceptButtonName:Ljava/lang/String;

.field final synthetic val$cancelButtonName:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 805
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/MainActivity$2;->val$acceptButtonName:Ljava/lang/String;

    iput-object p2, p0, Lcom/NextFloor/DestinyChild/MainActivity$2;->val$cancelButtonName:Ljava/lang/String;

    iput-object p3, p0, Lcom/NextFloor/DestinyChild/MainActivity$2;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 807
    sget-object v0, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 808
    sget-object v1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0037

    .line 809
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800d1

    .line 810
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 812
    new-instance v2, Lcom/NextFloor/DestinyChild/MainActivity$2$1;

    invoke-direct {v2, p0}, Lcom/NextFloor/DestinyChild/MainActivity$2$1;-><init>(Lcom/NextFloor/DestinyChild/MainActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 842
    new-instance v2, Lcom/NextFloor/DestinyChild/MainActivity$2$2;

    invoke-direct {v2, p0}, Lcom/NextFloor/DestinyChild/MainActivity$2$2;-><init>(Lcom/NextFloor/DestinyChild/MainActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 850
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    sget-object v3, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 852
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 854
    invoke-virtual {v1}, Landroid/widget/EditText;->performClick()Z

    .line 855
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x1

    .line 858
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/NextFloor/DestinyChild/MainActivity$2;->val$acceptButtonName:Ljava/lang/String;

    new-instance v4, Lcom/NextFloor/DestinyChild/MainActivity$2$6;

    invoke-direct {v4, p0, v1}, Lcom/NextFloor/DestinyChild/MainActivity$2$6;-><init>(Lcom/NextFloor/DestinyChild/MainActivity$2;Landroid/widget/EditText;)V

    .line 859
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/NextFloor/DestinyChild/MainActivity$2;->val$cancelButtonName:Ljava/lang/String;

    new-instance v4, Lcom/NextFloor/DestinyChild/MainActivity$2$5;

    invoke-direct {v4, p0}, Lcom/NextFloor/DestinyChild/MainActivity$2$5;-><init>(Lcom/NextFloor/DestinyChild/MainActivity$2;)V

    .line 872
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v3, Lcom/NextFloor/DestinyChild/MainActivity$2$4;

    invoke-direct {v3, p0}, Lcom/NextFloor/DestinyChild/MainActivity$2$4;-><init>(Lcom/NextFloor/DestinyChild/MainActivity$2;)V

    .line 884
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v3, Lcom/NextFloor/DestinyChild/MainActivity$2$3;

    invoke-direct {v3, p0, v1}, Lcom/NextFloor/DestinyChild/MainActivity$2$3;-><init>(Lcom/NextFloor/DestinyChild/MainActivity$2;Landroid/widget/EditText;)V

    .line 897
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v3, "Moderato"

    const-string v4, "Open Input Dialog Show Start"

    .line 918
    invoke-static {v3, v4}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialog:Landroid/app/Dialog;

    .line 920
    sget-object v2, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const/4 v2, 0x0

    sput-boolean v2, Lcom/NextFloor/DestinyChild/MainActivity;->m_isInputDialogOpenRequested:Z

    .line 921
    sget-object v2, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/NextFloor/DestinyChild/MainActivity$2;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 922
    sget-object v2, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 923
    sget-object v2, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 925
    sget-object v2, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 926
    invoke-virtual {v2, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const-string v0, "Open Input Dialog Show Complete"

    .line 927
    invoke-static {v3, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
