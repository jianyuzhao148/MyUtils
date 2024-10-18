.class public Lcom/linecorp/linesdk/auth/LineLoginResult;
.super Ljava/lang/Object;
.source "LineLoginResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/linecorp/linesdk/auth/LineLoginResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final errorData:Lcom/linecorp/linesdk/LineApiError;

.field private final friendshipStatusChanged:Ljava/lang/Boolean;

.field private final lineCredential:Lcom/linecorp/linesdk/LineCredential;

.field private final lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

.field private final lineProfile:Lcom/linecorp/linesdk/LineProfile;

.field private final nonce:Ljava/lang/String;

.field private final responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/linecorp/linesdk/auth/LineLoginResult$1;

    invoke-direct {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult$1;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/auth/LineLoginResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-class v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/utils/ParcelUtils;->readEnum(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    .line 62
    const-class v0, Lcom/linecorp/linesdk/LineProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineProfile;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    .line 63
    const-class v0, Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineIdToken;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    .line 64
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    .line 65
    const-class v0, Lcom/linecorp/linesdk/LineCredential;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineCredential;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    .line 66
    const-class v0, Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/linecorp/linesdk/LineApiError;

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/linecorp/linesdk/auth/LineLoginResult$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$100(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    .line 51
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$200(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$300(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    .line 53
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$400(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    .line 54
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$500(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    .line 55
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$600(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    .line 56
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->access$700(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;Lcom/linecorp/linesdk/auth/LineLoginResult$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;-><init>(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)V

    return-void
.end method

.method public static authenticationAgentError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    .line 94
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->AUTHENTICATION_AGENT_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v0, p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static canceledError()Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 2

    .line 98
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->CANCEL:Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object v1, Lcom/linecorp/linesdk/LineApiError;->DEFAULT:Lcom/linecorp/linesdk/LineApiError;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object v0

    return-object v0
.end method

.method public static error(Lcom/linecorp/linesdk/LineApiResponse;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "*>;)",
            "Lcom/linecorp/linesdk/auth/LineLoginResult;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    .line 71
    new-instance v0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    invoke-direct {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;-><init>()V

    .line 72
    invoke-virtual {v0, p0}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->responseCode(Lcom/linecorp/linesdk/LineApiResponseCode;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    .line 73
    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->errorData(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    .line 74
    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->build()Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static internalError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    .line 82
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v0, p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->error(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static internalError(Ljava/lang/Exception;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    .line 90
    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static internalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 1

    .line 86
    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->internalError(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_5

    .line 217
    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/auth/LineLoginResult;

    .line 219
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    iget-object v2, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    if-eq v1, v2, :cond_2

    return v0

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v2, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    if-eqz v1, :cond_4

    :goto_0
    return v0

    .line 221
    :cond_4
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    if-eqz v1, :cond_5

    iget-object v2, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    invoke-virtual {v1, v2}, Lcom/linecorp/linesdk/LineProfile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    if-eqz v1, :cond_6

    :goto_1
    return v0

    .line 224
    :cond_6
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    if-eqz v1, :cond_7

    iget-object v2, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v1, v2}, Lcom/linecorp/linesdk/LineIdToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_7
    iget-object v1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    if-eqz v1, :cond_8

    :goto_2
    return v0

    .line 227
    :cond_8
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    iget-object v2, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_9
    iget-object v1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    :goto_3
    return v0

    .line 229
    :cond_a
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    if-eqz v1, :cond_b

    iget-object v2, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    invoke-virtual {v1, v2}, Lcom/linecorp/linesdk/LineCredential;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    :cond_b
    iget-object v1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    if-eqz v1, :cond_c

    :goto_4
    return v0

    .line 233
    :cond_c
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    iget-object p1, p1, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/LineApiError;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    :goto_5
    return v0
.end method

.method public getErrorData()Lcom/linecorp/linesdk/LineApiError;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    return-object v0
.end method

.method public getLineCredential()Lcom/linecorp/linesdk/LineCredential;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    return-object v0
.end method

.method public getLineProfile()Lcom/linecorp/linesdk/LineProfile;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    return-object v0
.end method

.method public getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 242
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 243
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineProfile;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 244
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineIdToken;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 245
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 246
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineCredential;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 247
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiError;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineLoginResult{responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", lineProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineIdToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", friendshipStatusChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineCredential="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/utils/ParcelUtils;->writeEnum(Landroid/os/Parcel;Ljava/lang/Enum;)V

    .line 115
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->nonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 118
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->friendshipStatusChanged:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult;->errorData:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
