.class public Lcom/adjust/sdk/PackageBuilder$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/PackageBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/PackageBuilder;Lcom/adjust/sdk/ActivityState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/adjust/sdk/PackageBuilder$a;->a:I

    iput p1, p0, Lcom/adjust/sdk/PackageBuilder$a;->b:I

    iput p1, p0, Lcom/adjust/sdk/PackageBuilder$a;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$a;->d:J

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$a;->e:J

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$a;->f:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder$a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder$a;->h:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget p1, p2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    iput p1, p0, Lcom/adjust/sdk/PackageBuilder$a;->a:I

    iget p1, p2, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    iput p1, p0, Lcom/adjust/sdk/PackageBuilder$a;->b:I

    iget p1, p2, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    iput p1, p0, Lcom/adjust/sdk/PackageBuilder$a;->c:I

    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$a;->d:J

    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$a;->e:J

    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$a;->f:J

    iget-object p1, p2, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder$a;->g:Ljava/lang/String;

    iget-object p1, p2, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder$a;->h:Ljava/lang/String;

    return-void
.end method
