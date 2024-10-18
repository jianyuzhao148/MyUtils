.class Lcom/NextFloor/DestinyChild/MainActivity$2$5;
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


# direct methods
.method constructor <init>(Lcom/NextFloor/DestinyChild/MainActivity$2;)V
    .locals 0

    .line 873
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$5;->this$0:Lcom/NextFloor/DestinyChild/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 876
    sget-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const-string p1, ""

    sput-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialogText:Ljava/lang/String;

    .line 877
    sget-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_this:Lcom/NextFloor/DestinyChild/MainActivity;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_isInputDialogCanceled:Z

    .line 878
    sget-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 880
    sput-object p1, Lcom/NextFloor/DestinyChild/MainActivity;->m_inputDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
