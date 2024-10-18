.class public interface abstract Lcom/xsolla/android/payments/status/StatusApi;
.super Ljava/lang/Object;
.source "StatusApi.kt"


# virtual methods
.method public abstract getPaymentStatus(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "project_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "external_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xsolla/android/payments/status/PaymentStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/merchant/projects/{project_id}/transactions/external/{external_id}/status"
    .end annotation
.end method
