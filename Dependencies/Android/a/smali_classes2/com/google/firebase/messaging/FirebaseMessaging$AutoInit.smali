.class Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;
.super Ljava/lang/Object;
.source "FirebaseMessaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/FirebaseMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoInit"
.end annotation


# instance fields
.field private autoInitEnabled:Ljava/lang/Boolean;

.field private dataCollectionDefaultChangeEventHandler:Lcom/google/firebase/events/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/events/EventHandler<",
            "Lcom/google/firebase/DataCollectionDefaultChange;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private final subscriber:Lcom/google/firebase/events/Subscriber;

.field final synthetic this$0:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/events/Subscriber;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->this$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-object p2, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->subscriber:Lcom/google/firebase/events/Subscriber;

    return-void
.end method

.method private synthetic lambda$initialize$0(Lcom/google/firebase/events/Event;)V
    .locals 0

    .line 694
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 695
    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->this$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-static {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->access$100(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    :cond_0
    return-void
.end method

.method private readEnabled()Ljava/lang/Boolean;
    .locals 6

    const-string v0, "firebase_messaging_auto_init_enabled"

    .line 733
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->this$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->access$000(Lcom/google/firebase/messaging/FirebaseMessaging;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.firebase.messaging"

    const/4 v3, 0x0

    .line 735
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "auto_init"

    .line 738
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 739
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 744
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 748
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    .line 747
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 749
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 751
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 752
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method declared-synchronized initialize()V
    .locals 3

    monitor-enter p0

    .line 684
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 685
    monitor-exit p0

    return-void

    .line 687
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->readEnabled()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->autoInitEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 692
    new-instance v0, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$AutoInit$3qCUZxCiQu2xA1m7ZYwRofiE0u8;

    invoke-direct {v0, p0}, Lcom/google/firebase/messaging/-$$Lambda$FirebaseMessaging$AutoInit$3qCUZxCiQu2xA1m7ZYwRofiE0u8;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;)V

    iput-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->dataCollectionDefaultChangeEventHandler:Lcom/google/firebase/events/EventHandler;

    .line 698
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->subscriber:Lcom/google/firebase/events/Subscriber;

    const-class v2, Lcom/google/firebase/DataCollectionDefaultChange;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/events/Subscriber;->subscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V

    :cond_1
    const/4 v0, 0x1

    .line 701
    iput-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isEnabled()Z
    .locals 1

    monitor-enter p0

    .line 705
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->initialize()V

    .line 706
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->autoInitEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->this$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->access$000(Lcom/google/firebase/messaging/FirebaseMessaging;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$initialize$0$FirebaseMessaging$AutoInit(Lcom/google/firebase/events/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->lambda$initialize$0(Lcom/google/firebase/events/Event;)V

    return-void
.end method
