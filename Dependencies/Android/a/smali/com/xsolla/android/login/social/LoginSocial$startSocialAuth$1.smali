.class final Lcom/xsolla/android/login/social/LoginSocial$startSocialAuth$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LoginSocial.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/login/social/LoginSocial;->startSocialAuth(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/xsolla/android/login/social/SocialNetwork;Lcom/xsolla/android/login/callback/StartSocialCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Lcom/xsolla/android/login/callback/StartSocialCallback;

.field final synthetic $fragment:Landroidx/fragment/app/Fragment;

.field final synthetic $socialNetwork:Lcom/xsolla/android/login/social/SocialNetwork;


# direct methods
.method constructor <init>(Lcom/xsolla/android/login/callback/StartSocialCallback;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/xsolla/android/login/social/SocialNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/xsolla/android/login/social/LoginSocial$startSocialAuth$1;->$callback:Lcom/xsolla/android/login/callback/StartSocialCallback;

    iput-object p2, p0, Lcom/xsolla/android/login/social/LoginSocial$startSocialAuth$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xsolla/android/login/social/LoginSocial$startSocialAuth$1;->$fragment:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Lcom/xsolla/android/login/social/LoginSocial$startSocialAuth$1;->$socialNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xsolla/android/login/social/LoginSocial$startSocialAuth$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/xsolla/android/login/social/LoginSocial$startSocialAuth$1;->$callback:Lcom/xsolla/android/login/callback/StartSocialCallback;

    invoke-interface {p1}, Lcom/xsolla/android/login/callback/StartSocialCallback;->onAuthStarted()V

    goto :goto_0

    .line 128
    :cond_0
    sget-object p1, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    iget-object v0, p0, Lcom/xsolla/android/login/social/LoginSocial$startSocialAuth$1;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xsolla/android/login/social/LoginSocial$startSocialAuth$1;->$fragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/xsolla/android/login/social/LoginSocial$startSocialAuth$1;->$socialNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

    iget-object v3, p0, Lcom/xsolla/android/login/social/LoginSocial$startSocialAuth$1;->$callback:Lcom/xsolla/android/login/callback/StartSocialCallback;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/xsolla/android/login/social/LoginSocial;->access$tryWebviewBasedSocialAuth(Lcom/xsolla/android/login/social/LoginSocial;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/xsolla/android/login/social/SocialNetwork;Lcom/xsolla/android/login/callback/StartSocialCallback;)V

    :goto_0
    return-void
.end method
