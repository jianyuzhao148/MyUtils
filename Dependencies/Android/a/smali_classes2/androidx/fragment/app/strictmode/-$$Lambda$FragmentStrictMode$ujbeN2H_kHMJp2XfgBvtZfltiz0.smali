.class public final synthetic Landroidx/fragment/app/strictmode/-$$Lambda$FragmentStrictMode$ujbeN2H_kHMJp2XfgBvtZfltiz0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/fragment/app/strictmode/Violation;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/strictmode/-$$Lambda$FragmentStrictMode$ujbeN2H_kHMJp2XfgBvtZfltiz0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroidx/fragment/app/strictmode/-$$Lambda$FragmentStrictMode$ujbeN2H_kHMJp2XfgBvtZfltiz0;->f$1:Landroidx/fragment/app/strictmode/Violation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/strictmode/-$$Lambda$FragmentStrictMode$ujbeN2H_kHMJp2XfgBvtZfltiz0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/strictmode/-$$Lambda$FragmentStrictMode$ujbeN2H_kHMJp2XfgBvtZfltiz0;->f$1:Landroidx/fragment/app/strictmode/Violation;

    invoke-static {v0, v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->lambda$ujbeN2H_kHMJp2XfgBvtZfltiz0(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V

    const/4 v0, 0x0

    throw v0
.end method
