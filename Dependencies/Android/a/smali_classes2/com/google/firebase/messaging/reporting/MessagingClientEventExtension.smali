.class public final Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;
.super Ljava/lang/Object;
.source "MessagingClientEventExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;
    }
.end annotation


# instance fields
.field private final messaging_client_event_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;

    invoke-direct {v0}, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;->build()Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;->messaging_client_event_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;
    .locals 1

    .line 27
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;

    invoke-direct {v0}, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getMessagingClientEventInternal()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;->messaging_client_event_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/google/firebase/messaging/ProtoEncoderDoNotUse;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
