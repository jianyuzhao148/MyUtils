.class public final Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;
.super Ljava/lang/Object;
.source "EndToEndDumper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;

.field private static instance:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;

    invoke-direct {v0}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;-><init>()V

    sput-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;->$$INSTANCE:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;
    .locals 1

    .line 31
    sget-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;->instance:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;

    return-object v0
.end method
