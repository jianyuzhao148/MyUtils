.class public Lcom/adjust/sdk/AdjustInstance$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adjust/sdk/IRunActivityHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AdjustInstance;->resetSessionPartnerParameters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AdjustInstance;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityHandler;->resetSessionPartnerParametersI()V

    return-void
.end method
