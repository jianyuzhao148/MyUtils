.class final Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2$1;
.super Ljava/lang/Object;
.source "LoginSocial.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;


# direct methods
.method constructor <init>(Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;)V
    .locals 0

    iput-object p1, p0, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2$1;->this$0:Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2$1;->this$0:Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;

    iget-object v0, v0, Lcom/xsolla/android/login/social/LoginSocial$finishSocialAuth$2;->$callback:Lcom/xsolla/android/login/callback/FinishSocialCallback;

    const-string v1, "oauthToken is null"

    invoke-interface {v0, v1}, Lcom/xsolla/android/login/callback/FinishSocialCallback;->onAuthError(Ljava/lang/String;)V

    return-void
.end method
