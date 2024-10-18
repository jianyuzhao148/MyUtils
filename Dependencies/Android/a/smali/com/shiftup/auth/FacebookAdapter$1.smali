.class Lcom/shiftup/auth/FacebookAdapter$1;
.super Lcom/facebook/AccessTokenTracker;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/auth/FacebookAdapter;->SetFacebookRegisterCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shiftup/auth/FacebookAdapter;


# direct methods
.method constructor <init>(Lcom/shiftup/auth/FacebookAdapter;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/shiftup/auth/FacebookAdapter$1;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 61
    iget-object p1, p0, Lcom/shiftup/auth/FacebookAdapter$1;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    iget-object p1, p1, Lcom/shiftup/auth/FacebookAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Facebook Token Changed"

    invoke-static {p1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/shiftup/auth/FacebookAdapter$1;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    invoke-virtual {p2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/shiftup/auth/FacebookAdapter$1;->this$0:Lcom/shiftup/auth/FacebookAdapter;

    const-string p2, ""

    iput-object p2, p1, Lcom/shiftup/auth/FacebookAdapter;->mFacebookToken:Ljava/lang/String;

    :goto_0
    return-void
.end method
