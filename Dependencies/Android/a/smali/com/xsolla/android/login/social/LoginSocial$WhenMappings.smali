.class public final synthetic Lcom/xsolla/android/login/social/LoginSocial$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;->values()[Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xsolla/android/login/social/LoginSocial$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;->SUCCESS:Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;->CANCELLED:Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;->ERROR:Lcom/xsolla/android/login/ui/ActivityAuthWebView$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
