.class public Lcom/linecorp/linesdk/internal/LoginHandler;
.super Ljava/lang/Object;
.source "LoginHandler.java"


# static fields
.field private static REQUEST_CODE_LOGIN:I = 0x1


# instance fields
.field private loginListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/linecorp/linesdk/LoginListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/LoginHandler;->loginListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private getLoginIntent(Landroid/app/Activity;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;
    .locals 0

    if-eqz p2, :cond_0

    .line 65
    invoke-static {p1, p3, p4}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginIntent(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p1, p3, p4}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginIntentWithoutLineAppAuth(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public addLoginListener(Lcom/linecorp/linesdk/LoginListener;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/LoginHandler;->loginListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public performLogin(Landroid/app/Activity;Lcom/linecorp/linesdk/internal/FragmentWrapper;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/linecorp/linesdk/internal/LoginHandler;->getLoginIntent(Landroid/app/Activity;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object p1

    .line 53
    sget p3, Lcom/linecorp/linesdk/internal/LoginHandler;->REQUEST_CODE_LOGIN:I

    invoke-virtual {p2, p1, p3}, Lcom/linecorp/linesdk/internal/FragmentWrapper;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public performLogin(Landroid/app/Activity;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linecorp/linesdk/internal/LoginHandler;->getLoginIntent(Landroid/app/Activity;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object p2

    .line 42
    sget p3, Lcom/linecorp/linesdk/internal/LoginHandler;->REQUEST_CODE_LOGIN:I

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public removeLoginListener(Lcom/linecorp/linesdk/LoginListener;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/LoginHandler;->loginListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
