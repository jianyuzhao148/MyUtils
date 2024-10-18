.class Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$1;
.super Ljava/lang/Object;
.source "LineApiClientImpl.java"

# interfaces
.implements Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->logout()Lcom/linecorp/linesdk/LineApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$1;->this$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$1;->this$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    invoke-static {v0, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->access$000(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method
