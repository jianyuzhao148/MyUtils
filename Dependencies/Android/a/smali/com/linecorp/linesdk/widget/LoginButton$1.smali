.class Lcom/linecorp/linesdk/widget/LoginButton$1;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/widget/LoginButton;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/widget/LoginButton;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton$1;->this$0:Lcom/linecorp/linesdk/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 133
    iget-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton$1;->this$0:Lcom/linecorp/linesdk/widget/LoginButton;

    invoke-static {p1}, Lcom/linecorp/linesdk/widget/LoginButton;->access$000(Lcom/linecorp/linesdk/widget/LoginButton;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 137
    iget-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton$1;->this$0:Lcom/linecorp/linesdk/widget/LoginButton;

    invoke-static {p1}, Lcom/linecorp/linesdk/widget/LoginButton;->access$000(Lcom/linecorp/linesdk/widget/LoginButton;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 141
    iget-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton$1;->this$0:Lcom/linecorp/linesdk/widget/LoginButton;

    invoke-static {p1}, Lcom/linecorp/linesdk/widget/LoginButton;->access$100(Lcom/linecorp/linesdk/widget/LoginButton;)Lcom/linecorp/linesdk/internal/FragmentWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton$1;->this$0:Lcom/linecorp/linesdk/widget/LoginButton;

    invoke-static {p1}, Lcom/linecorp/linesdk/widget/LoginButton;->access$000(Lcom/linecorp/linesdk/widget/LoginButton;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/widget/LoginButton$1;->this$0:Lcom/linecorp/linesdk/widget/LoginButton;

    invoke-static {v1}, Lcom/linecorp/linesdk/widget/LoginButton;->access$100(Lcom/linecorp/linesdk/widget/LoginButton;)Lcom/linecorp/linesdk/internal/FragmentWrapper;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/linecorp/linesdk/widget/LoginButton;->access$200(Lcom/linecorp/linesdk/widget/LoginButton;Ljava/lang/String;Lcom/linecorp/linesdk/internal/FragmentWrapper;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton$1;->this$0:Lcom/linecorp/linesdk/widget/LoginButton;

    invoke-static {p1}, Lcom/linecorp/linesdk/widget/LoginButton;->access$000(Lcom/linecorp/linesdk/widget/LoginButton;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/widget/LoginButton$1;->this$0:Lcom/linecorp/linesdk/widget/LoginButton;

    invoke-static {v1}, Lcom/linecorp/linesdk/widget/LoginButton;->access$300(Lcom/linecorp/linesdk/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/linecorp/linesdk/widget/LoginButton;->access$400(Lcom/linecorp/linesdk/widget/LoginButton;Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Channel id should not be empty."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Channel id should be set."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
