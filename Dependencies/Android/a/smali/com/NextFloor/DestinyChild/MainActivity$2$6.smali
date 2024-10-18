.class Lcom/NextFloor/DestinyChild/MainActivity$2$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 860
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$6;->this$0:Lcom/NextFloor/DestinyChild/MainActivity$2;

    iput-object p2, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$6;->val$userInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 863
    sget-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    iget-object p1, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$6;->val$userInput:Landroid/widget/EditText;

    .line 864
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogText:Ljava/lang/String;

    .line 865
    sget-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const/4 p1, 0x0

    sput-boolean p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_isInputDialogCanceled:Z

    .line 866
    sget-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 868
    sput-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
