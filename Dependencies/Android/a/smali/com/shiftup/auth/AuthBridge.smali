.class public Lcom/shiftup/auth/AuthBridge;
.super Ljava/lang/Object;
.source "AuthBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shiftup/auth/AuthBridge$Callback;,
        Lcom/shiftup/auth/AuthBridge$AuthBridgeSingleton;
    }
.end annotation


# static fields
.field private static final PREF_KEY_DEVICE_ID:Ljava/lang/String; = "UniqueDeviceID"

.field private static final TAG:Ljava/lang/String; = "Auth/AuthBridge"

.field private static platformMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shiftup/auth/AuthPlatform;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cbs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shiftup/auth/AuthPlatform;",
            "Lcom/shiftup/auth/IAuthCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shiftup/auth/AuthBridge;->platformMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shiftup/auth/AuthBridge;->cbs:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/shiftup/auth/AuthBridge$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/shiftup/auth/AuthBridge;-><init>()V

    return-void
.end method

.method private getAuthPlatformFromCode(I)Lcom/shiftup/auth/AuthPlatform;
    .locals 1

    .line 91
    sget-object v0, Lcom/shiftup/auth/AuthBridge;->platformMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shiftup/auth/AuthPlatform;

    return-object p1
.end method

.method private getAuthRequestCode(Lcom/shiftup/auth/AuthPlatform;)I
    .locals 3

    .line 79
    sget-object v0, Lcom/shiftup/auth/AuthBridge;->platformMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 85
    :cond_1
    invoke-static {}, Lcom/shiftup/ui/DCActivity;->getAuthRequestCode()I

    move-result v0

    .line 86
    sget-object v1, Lcom/shiftup/auth/AuthBridge;->platformMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public static getInstance()Lcom/shiftup/auth/AuthBridge;
    .locals 1

    .line 37
    invoke-static {}, Lcom/shiftup/auth/AuthBridge$AuthBridgeSingleton;->access$100()Lcom/shiftup/auth/AuthBridge;

    move-result-object v0

    return-object v0
.end method

.method public static native onCancelCallback(Ljava/lang/String;)V
.end method

.method public static native onErrorCallback(Ljava/lang/String;)V
.end method

.method public static native onSuccessCallback(Ljava/lang/String;)V
.end method


# virtual methods
.method public AppleInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 188
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Apple:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    const-string v2, "Auth/AuthBridge"

    if-nez v1, :cond_0

    const-string v1, "Apple Init Failed"

    .line 189
    invoke-static {v2, v1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "Apple Init"

    .line 192
    invoke-static {v2, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v1, Lcom/shiftup/auth/AppleInitParam;

    invoke-direct {v1, p1, p2, p3}, Lcom/shiftup/auth/AppleInitParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance p1, Lcom/shiftup/auth/AuthBridge$1;

    invoke-direct {p1, p0}, Lcom/shiftup/auth/AuthBridge$1;-><init>(Lcom/shiftup/auth/AuthBridge;)V

    invoke-virtual {p0, v0, v1, p1}, Lcom/shiftup/auth/AuthBridge;->init(Lcom/shiftup/auth/AuthPlatform;Lcom/shiftup/auth/AuthInitParam;Lcom/shiftup/auth/IAuthCallback;)V

    return-void
.end method

.method public AppleLogin()V
    .locals 3

    .line 178
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Apple:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    const-string v2, "Auth/AuthBridge"

    if-nez v1, :cond_0

    const-string v0, "Apple Login Failed!"

    .line 179
    invoke-static {v2, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "Apple Login"

    .line 183
    invoke-static {v2, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->platformLogIn()V

    return-void
.end method

.method public FacebookGetCurrentState()Ljava/lang/String;
    .locals 2

    .line 257
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Facebook:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->getCurrentState()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public FacebookGetId()Ljava/lang/String;
    .locals 2

    .line 245
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Facebook:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public FacebookGetToken()Ljava/lang/String;
    .locals 2

    .line 251
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Facebook:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public FacebookInit()V
    .locals 2

    .line 230
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Facebook:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shiftup/auth/AuthAdapter;->init(Lcom/shiftup/auth/AuthInitParam;)V

    :cond_0
    return-void
.end method

.method public FacebookLogIn()V
    .locals 2

    .line 235
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Facebook:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->platformLogIn()V

    :cond_0
    return-void
.end method

.method public FacebookLogOut()V
    .locals 2

    .line 240
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Facebook:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->platformLogOut()V

    :cond_0
    return-void
.end method

.method public GetUniqueDeviceID()Ljava/lang/String;
    .locals 3

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 98
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "UniqueDeviceID"

    .line 101
    invoke-static {v1, v0}, Lcom/shiftup/util/SharedPrefHelper;->GetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 103
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v1, v0}, Lcom/shiftup/util/SharedPrefHelper;->SetString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 109
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 111
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GoogleGetCurrentState()Ljava/lang/String;
    .locals 2

    .line 222
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Google:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->getCurrentState()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public GoogleGetId()Ljava/lang/String;
    .locals 2

    .line 210
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Google:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public GoogleGetToken()Ljava/lang/String;
    .locals 2

    .line 216
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Google:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public GoogleLogIn()V
    .locals 2

    .line 199
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Google:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->platformLogIn()V

    :cond_0
    return-void
.end method

.method public GoogleLogOut()V
    .locals 2

    .line 205
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Google:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->platformLogOut()V

    :cond_0
    return-void
.end method

.method public LineGetCurrentState()Ljava/lang/String;
    .locals 3

    .line 167
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Line:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    const-string v2, "Auth/AuthBridge"

    if-nez v1, :cond_0

    const-string v0, "Line OpenAPI Get Current State Failed!"

    .line 168
    invoke-static {v2, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v1, "Line OpenAPI State"

    .line 172
    invoke-static {v2, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->getCurrentState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LineGetId()Ljava/lang/String;
    .locals 3

    .line 147
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Line:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    const-string v2, "Auth/AuthBridge"

    if-nez v1, :cond_0

    const-string v0, "Line OpenAPI Get ID Failed!"

    .line 148
    invoke-static {v2, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v1, "Line OpenAPI Get ID"

    .line 152
    invoke-static {v2, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LineGetToken()Ljava/lang/String;
    .locals 3

    .line 157
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Line:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    const-string v2, "Auth/AuthBridge"

    if-nez v1, :cond_0

    const-string v0, "Line OpenAPI Login Failed!"

    .line 158
    invoke-static {v2, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v1, "Line OpenAPI Get Token"

    .line 162
    invoke-static {v2, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LineLogIn()V
    .locals 3

    .line 127
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Line:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    const-string v2, "Auth/AuthBridge"

    if-nez v1, :cond_0

    const-string v0, "Line OpenAPI Logout Failed!"

    .line 128
    invoke-static {v2, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "Line OpenAPI LogIn"

    .line 132
    invoke-static {v2, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->platformLogIn()V

    return-void
.end method

.method public LineLogOut()V
    .locals 3

    .line 137
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Line:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    const-string v2, "Auth/AuthBridge"

    if-nez v1, :cond_0

    const-string v0, "Line OpenAPI Logout Failed!"

    .line 138
    invoke-static {v2, v0}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "Line OpenAPI LogOut"

    .line 142
    invoke-static {v2, v1}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, v0, Lcom/shiftup/auth/AuthPlatform;->adapter:Lcom/shiftup/auth/AuthAdapter;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->platformLogOut()V

    return-void
.end method

.method public TwitterGetCurrentState()Ljava/lang/String;
    .locals 2

    .line 295
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Twitter:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->getCurrentState()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public TwitterGetId()Ljava/lang/String;
    .locals 2

    .line 282
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Twitter:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public TwitterGetToken()Ljava/lang/String;
    .locals 2

    .line 288
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Twitter:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public TwitterInit()V
    .locals 2

    .line 265
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Twitter:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shiftup/auth/AuthAdapter;->init(Lcom/shiftup/auth/AuthInitParam;)V

    :cond_0
    return-void
.end method

.method public TwitterLogIn()V
    .locals 2

    .line 271
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Twitter:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->platformLogIn()V

    :cond_0
    return-void
.end method

.method public TwitterLogOut()V
    .locals 2

    .line 277
    sget-object v0, Lcom/shiftup/auth/AuthPlatform;->Twitter:Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shiftup/auth/AuthAdapter;->platformLogOut()V

    :cond_0
    return-void
.end method

.method public init(Lcom/shiftup/auth/AuthPlatform;Lcom/shiftup/auth/AuthInitParam;Lcom/shiftup/auth/IAuthCallback;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 42
    iget-object v0, p0, Lcom/shiftup/auth/AuthBridge;->cbs:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/shiftup/auth/AuthAdapter;->SetCallback(Lcom/shiftup/auth/IAuthCallback;)V

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/shiftup/auth/AuthAdapter;->init(Lcom/shiftup/auth/AuthInitParam;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    const-string v0, "Moderato"

    const/4 v1, 0x0

    .line 53
    :try_start_0
    invoke-direct {p0, p1}, Lcom/shiftup/auth/AuthBridge;->getAuthPlatformFromCode(I)Lcom/shiftup/auth/AuthPlatform;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v2}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v2}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/shiftup/auth/AuthAdapter;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/shiftup/auth/AuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown Exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AuthException "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IllegalArgumentException "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method public onDestroy()V
    .locals 2

    .line 73
    sget-object v0, Lcom/shiftup/auth/AuthBridge;->platformMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shiftup/auth/AuthPlatform;

    invoke-virtual {v1}, Lcom/shiftup/auth/AuthPlatform;->GetAuthAdapter()Lcom/shiftup/auth/AuthAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shiftup/auth/AuthAdapter;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startActivityForAuth(Landroid/content/Intent;Lcom/shiftup/auth/AuthPlatform;)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/shiftup/util/StaticContext;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/shiftup/auth/AuthBridge;->getAuthRequestCode(Lcom/shiftup/auth/AuthPlatform;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
