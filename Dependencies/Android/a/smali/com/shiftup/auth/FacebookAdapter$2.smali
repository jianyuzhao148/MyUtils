.class Lcom/shiftup/auth/FacebookAdapter$2;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/auth/FacebookAdapter;->SetFacebookRegisterCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/auth/FacebookAdapter;


# direct methods
.method constructor <init>(Lcom/shiftup/auth/FacebookAdapter;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/shiftup/auth/FacebookAdapter$2;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter$2;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    const-string v1, ""

    iput-object v1, v0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    .line 87
    iput-object v1, v0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookId:Ljava/lang/String;

    const/4 v0, 0x4

    .line 88
    invoke-static {v0}, Lcom/shiftup/auth/AuthAdapter;->SetAuthState(I)V

    .line 89
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter$2;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    iget-object v0, v0, Lcom/shiftup/auth/FacebookAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FacebookCallback  onCancel"

    invoke-static {v0, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter$2;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    const-string v1, ""

    iput-object v1, v0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    .line 96
    iput-object v1, v0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookId:Ljava/lang/String;

    const/4 v0, 0x4

    .line 97
    invoke-static {v0}, Lcom/shiftup/auth/AuthAdapter;->SetAuthState(I)V

    .line 98
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter$2;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    iget-object v0, v0, Lcom/shiftup/auth/FacebookAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FacebookCallback  onError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2

    .line 75
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter$2;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/shiftup/auth/FacebookAdapter$2;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/shiftup/auth/FacebookAdapter;->mFacebookId:Ljava/lang/String;

    const/4 p1, 0x3

    .line 79
    invoke-static {p1}, Lcom/shiftup/auth/AuthAdapter;->SetAuthState(I)V

    .line 80
    iget-object p1, p0, Lcom/shiftup/auth/FacebookAdapter$2;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    iget-object p1, p1, Lcom/shiftup/auth/FacebookAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Facebook Token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shiftup/auth/FacebookAdapter$2;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    iget-object v1, v1, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shiftup/auth/FacebookAdapter$2;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    iget-object v1, v1, Lcom/shiftup/auth/FacebookAdapter;->mFacebookId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/shiftup/auth/FacebookAdapter$2;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
