.class Lextern/okhttp3/internal/ws/RealWebSocket$1;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/internal/ws/RealWebSocket;-><init>(Lextern/okhttp3/Request;Lextern/okhttp3/WebSocketListener;Ljava/util/Random;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lextern/okhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Lextern/okhttp3/internal/ws/RealWebSocket;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lextern/okhttp3/internal/ws/RealWebSocket$1;->this$0:Lextern/okhttp3/internal/ws/RealWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 155
    :goto_0
    :try_start_0
    iget-object v0, p0, Lextern/okhttp3/internal/ws/RealWebSocket$1;->this$0:Lextern/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lextern/okhttp3/internal/ws/RealWebSocket;->writeOneFrame()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    iget-object v1, p0, Lextern/okhttp3/internal/ws/RealWebSocket$1;->this$0:Lextern/okhttp3/internal/ws/RealWebSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lextern/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lextern/okhttp3/Response;)V

    :cond_0
    return-void
.end method
