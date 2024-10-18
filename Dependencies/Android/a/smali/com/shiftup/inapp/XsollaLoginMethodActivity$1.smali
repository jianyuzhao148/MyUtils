.class Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;
.super Ljava/lang/Object;
.source "XsollaLoginMethodActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shiftup/inapp/XsollaLoginMethodActivity;->getSocialLoginListener(Lcom/xsolla/android/login/social/SocialNetwork;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPlatform:Lcom/xsolla/android/login/social/SocialNetwork;

.field final synthetic this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

.field final synthetic val$platform:Lcom/xsolla/android/login/social/SocialNetwork;


# direct methods
.method constructor <init>(Lcom/shiftup/inapp/XsollaLoginMethodActivity;Lcom/xsolla/android/login/social/SocialNetwork;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    iput-object p2, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;->val$platform:Lcom/xsolla/android/login/social/SocialNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;->mPlatform:Lcom/xsolla/android/login/social/SocialNetwork;

    return-void
.end method

.method static synthetic access$200(Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;)Lcom/xsolla/android/login/social/SocialNetwork;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;->mPlatform:Lcom/xsolla/android/login/social/SocialNetwork;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 133
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->access$000(Lcom/shiftup/inapp/XsollaLoginMethodActivity;Z)V

    .line 134
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;->mPlatform:Lcom/xsolla/android/login/social/SocialNetwork;

    invoke-static {p1, v0}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->access$102(Lcom/shiftup/inapp/XsollaLoginMethodActivity;Lcom/xsolla/android/login/social/SocialNetwork;)Lcom/xsolla/android/login/social/SocialNetwork;

    .line 135
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;->this$0:Lcom/shiftup/inapp/XsollaLoginMethodActivity;

    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;->mPlatform:Lcom/xsolla/android/login/social/SocialNetwork;

    new-instance v1, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1$1;

    invoke-direct {v1, p0}, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1$1;-><init>(Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;)V

    invoke-static {p1, v0, v1}, Lcom/xsolla/android/login/XLogin;->startSocialAuth(Landroid/app/Activity;Lcom/xsolla/android/login/social/SocialNetwork;Lcom/xsolla/android/login/callback/StartSocialCallback;)V

    return-void
.end method
