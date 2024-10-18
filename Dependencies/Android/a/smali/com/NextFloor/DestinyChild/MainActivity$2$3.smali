.class Lcom/NextFloor/DestinyChild/MainActivity$2$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NextFloor/DestinyChild/MainActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/NextFloor/DestinyChild/MainActivity$2;

.field final synthetic val$userInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/NextFloor/DestinyChild/MainActivity$2;Landroid/widget/EditText;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$3;->this$0:Lcom/NextFloor/DestinyChild/MainActivity$2;

    iput-object p2, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$3;->val$userInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/16 p3, 0x42

    if-eq p2, p3, :cond_0

    return p1

    .line 902
    :cond_0
    sget-object p2, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    iget-object p2, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$3;->val$userInput:Landroid/widget/EditText;

    .line 903
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogText:Ljava/lang/String;

    .line 904
    sget-object p2, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    sput-boolean p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_isInputDialogCanceled:Z

    .line 905
    sget-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 907
    sget-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    sget-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    const/4 p1, 0x0

    .line 908
    sput-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialog:Landroid/app/Dialog;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
