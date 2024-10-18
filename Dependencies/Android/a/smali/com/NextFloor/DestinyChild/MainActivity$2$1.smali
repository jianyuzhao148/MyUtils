.class Lcom/NextFloor/DestinyChild/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NextFloor/DestinyChild/MainActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_bDelete:Z

.field private m_end:I

.field private m_start:I

.field final synthetic this$0:Lcom/NextFloor/DestinyChild/MainActivity$2;


# direct methods
.method constructor <init>(Lcom/NextFloor/DestinyChild/MainActivity$2;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$1;->this$0:Lcom/NextFloor/DestinyChild/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 814
    iput-boolean p1, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$1;->m_bDelete:Z

    .line 815
    iput p1, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$1;->m_start:I

    .line 816
    iput p1, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$1;->m_end:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 820
    iget-boolean v0, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$1;->m_bDelete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 822
    iput-boolean v0, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$1;->m_bDelete:Z

    .line 823
    iget v0, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$1;->m_start:I

    iget v1, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$1;->m_end:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    add-int v0, p2, p4

    .line 831
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 832
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open Input Dialog userInput new line entered start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", before="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", count="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", s="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Moderato"

    invoke-static {p3, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 836
    iput-boolean p1, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$1;->m_bDelete:Z

    .line 837
    iput p2, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$1;->m_start:I

    .line 838
    iput v0, p0, Lcom/NextFloor/DestinyChild/MainActivity$2$1;->m_end:I

    :cond_0
    return-void
.end method
