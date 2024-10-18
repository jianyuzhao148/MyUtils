.class Lcom/NextFloor/DestinyChild/URLActivity$2;
.super Lcom/NextFloor/DestinyChild/URLActivity$myWebClient;
.source "URLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NextFloor/DestinyChild/URLActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/NextFloor/DestinyChild/URLActivity;


# direct methods
.method constructor <init>(Lcom/NextFloor/DestinyChild/URLActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/NextFloor/DestinyChild/URLActivity$2;->this$0:Lcom/NextFloor/DestinyChild/URLActivity;

    invoke-direct {p0, p1}, Lcom/NextFloor/DestinyChild/URLActivity$myWebClient;-><init>(Lcom/NextFloor/DestinyChild/URLActivity;)V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 121
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/NextFloor/DestinyChild/URLActivity$2;->this$0:Lcom/NextFloor/DestinyChild/URLActivity;

    invoke-direct {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "page with invalid ssl certificate. continue?"

    .line 122
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 123
    new-instance p3, Lcom/NextFloor/DestinyChild/URLActivity$2$1;

    invoke-direct {p3, p0, p2}, Lcom/NextFloor/DestinyChild/URLActivity$2$1;-><init>(Lcom/NextFloor/DestinyChild/URLActivity$2;Landroid/webkit/SslErrorHandler;)V

    const-string v0, "yes"

    invoke-virtual {p1, v0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 129
    new-instance p3, Lcom/NextFloor/DestinyChild/URLActivity$2$2;

    invoke-direct {p3, p0, p2}, Lcom/NextFloor/DestinyChild/URLActivity$2$2;-><init>(Lcom/NextFloor/DestinyChild/URLActivity$2;Landroid/webkit/SslErrorHandler;)V

    const-string v0, "no"

    invoke-virtual {p1, v0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 135
    new-instance p3, Lcom/NextFloor/DestinyChild/URLActivity$2$3;

    invoke-direct {p3, p0, p2}, Lcom/NextFloor/DestinyChild/URLActivity$2$3;-><init>(Lcom/NextFloor/DestinyChild/URLActivity$2;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
