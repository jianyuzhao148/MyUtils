.class Lcom/linecorp/linesdk/widget/LoginButton$2;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linecorp/linesdk/widget/LoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/widget/LoginButton;

.field final synthetic val$externalListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/widget/LoginButton;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton$2;->this$0:Lcom/linecorp/linesdk/widget/LoginButton;

    iput-object p2, p0, Lcom/linecorp/linesdk/widget/LoginButton$2;->val$externalListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton$2;->this$0:Lcom/linecorp/linesdk/widget/LoginButton;

    invoke-static {v0}, Lcom/linecorp/linesdk/widget/LoginButton;->access$500(Lcom/linecorp/linesdk/widget/LoginButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton$2;->val$externalListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
