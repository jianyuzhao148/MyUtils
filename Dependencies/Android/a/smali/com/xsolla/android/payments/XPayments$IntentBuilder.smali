.class public final Lcom/xsolla/android/payments/XPayments$IntentBuilder;
.super Ljava/lang/Object;
.source "XPayments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xsolla/android/payments/XPayments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentBuilder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXPayments.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XPayments.kt\ncom/xsolla/android/payments/XPayments$IntentBuilder\n*L\n1#1,161:1\n*E\n"
.end annotation


# instance fields
.field private accessData:Lcom/xsolla/android/payments/data/AccessData;

.field private accessToken:Lcom/xsolla/android/payments/data/AccessToken;

.field private final context:Landroid/content/Context;

.field private isSandbox:Z

.field private redirectHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->isSandbox:Z

    return-void
.end method

.method private final generateUrl()Ljava/lang/String;
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->accessToken:Lcom/xsolla/android/payments/data/AccessToken;

    const-string v1, "https://"

    if-eqz v0, :cond_0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/paystation3/?access_token="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xsolla/android/payments/data/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->accessData:Lcom/xsolla/android/payments/data/AccessData;

    if-eqz v0, :cond_1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/paystation3/?access_data="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xsolla/android/payments/data/AccessData;->getUrlencodedString()Ljava/lang/String;

    const/4 v0, 0x0

    throw v0

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "access token or access data isn\'t specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getServer()Ljava/lang/String;
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->isSandbox:Z

    if-eqz v0, :cond_0

    const-string v0, "sandbox-secure.xsolla.com"

    goto :goto_0

    :cond_0
    const-string v0, "secure.xsolla.com"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final accessToken(Lcom/xsolla/android/payments/data/AccessToken;)Lcom/xsolla/android/payments/XPayments$IntentBuilder;
    .locals 1

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->accessToken:Lcom/xsolla/android/payments/data/AccessToken;

    return-object p0
.end method

.method public final build()Landroid/content/Intent;
    .locals 4

    .line 95
    invoke-direct {p0}, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->generateUrl()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 97
    iget-object v2, p0, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->context:Landroid/content/Context;

    const-class v3, Lcom/xsolla/android/payments/ui/ActivityPaystationWebView;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "token"

    .line 99
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 100
    iget-object v0, p0, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->redirectHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v3, "redir"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 98
    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1

    .line 100
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final isSandbox(Z)Lcom/xsolla/android/payments/XPayments$IntentBuilder;
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->isSandbox:Z

    return-object p0
.end method

.method public final redirectHost(Ljava/lang/String;)Lcom/xsolla/android/payments/XPayments$IntentBuilder;
    .locals 1

    const-string v0, "redirectHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/xsolla/android/payments/XPayments$IntentBuilder;->redirectHost:Ljava/lang/String;

    return-object p0
.end method
