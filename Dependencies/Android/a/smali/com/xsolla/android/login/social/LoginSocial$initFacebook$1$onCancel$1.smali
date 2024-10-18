.class final Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1$onCancel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LoginSocial.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1;->onCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1$onCancel$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1$onCancel$1;

    invoke-direct {v0}, Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1$onCancel$1;-><init>()V

    sput-object v0, Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1$onCancel$1;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1$onCancel$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xsolla/android/login/social/LoginSocial$initFacebook$1$onCancel$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 91
    sget-object p1, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    invoke-static {p1}, Lcom/xsolla/android/login/social/LoginSocial;->access$getFinishSocialCallback$p(Lcom/xsolla/android/login/social/LoginSocial;)Lcom/xsolla/android/login/callback/FinishSocialCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/xsolla/android/login/callback/FinishSocialCallback;->onAuthSuccess()V

    goto :goto_0

    .line 93
    :cond_0
    sget-object v0, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    invoke-static {v0}, Lcom/xsolla/android/login/social/LoginSocial;->access$getFinishSocialCallback$p(Lcom/xsolla/android/login/social/LoginSocial;)Lcom/xsolla/android/login/callback/FinishSocialCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/xsolla/android/login/callback/FinishSocialCallback;->onAuthError(Ljava/lang/String;)V

    .line 95
    :cond_1
    :goto_0
    sget-object p1, Lcom/xsolla/android/login/social/LoginSocial;->INSTANCE:Lcom/xsolla/android/login/social/LoginSocial;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xsolla/android/login/social/LoginSocial;->access$setFinishSocialCallback$p(Lcom/xsolla/android/login/social/LoginSocial;Lcom/xsolla/android/login/callback/FinishSocialCallback;)V

    return-void
.end method
