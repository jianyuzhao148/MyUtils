.class public Lcom/linecorp/linesdk/LineIdToken;
.super Ljava/lang/Object;
.source "LineIdToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/LineIdToken$Address;,
        Lcom/linecorp/linesdk/LineIdToken$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/linecorp/linesdk/LineIdToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final address:Lcom/linecorp/linesdk/LineIdToken$Address;

.field private final amr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final audience:Ljava/lang/String;

.field private final authTime:Ljava/util/Date;

.field private final birthdate:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final expiresAt:Ljava/util/Date;

.field private final familyName:Ljava/lang/String;

.field private final familyNamePronunciation:Ljava/lang/String;

.field private final gender:Ljava/lang/String;

.field private final givenName:Ljava/lang/String;

.field private final givenNamePronunciation:Ljava/lang/String;

.field private final issuedAt:Ljava/util/Date;

.field private final issuer:Ljava/lang/String;

.field private final middleName:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final nonce:Ljava/lang/String;

.field private final phoneNumber:Ljava/lang/String;

.field private final picture:Ljava/lang/String;

.field private final rawString:Ljava/lang/String;

.field private final subject:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/linecorp/linesdk/LineIdToken$1;

    invoke-direct {v0}, Lcom/linecorp/linesdk/LineIdToken$1;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/LineIdToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    .line 122
    invoke-static {p1}, Lcom/linecorp/linesdk/utils/ParcelUtils;->readDate(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    .line 123
    invoke-static {p1}, Lcom/linecorp/linesdk/utils/ParcelUtils;->readDate(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    .line 124
    invoke-static {p1}, Lcom/linecorp/linesdk/utils/ParcelUtils;->readDate(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    .line 133
    const-class v0, Lcom/linecorp/linesdk/LineIdToken$Address;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineIdToken$Address;

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/linecorp/linesdk/LineIdToken$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/LineIdToken;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/LineIdToken$Builder;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$100(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$200(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$300(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    .line 97
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$400(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$500(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    .line 99
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$600(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    .line 100
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$700(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    .line 101
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$800(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$900(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    .line 103
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$1000(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$1100(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$1200(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$1300(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$1400(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$1500(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$1600(Lcom/linecorp/linesdk/LineIdToken$Builder;)Lcom/linecorp/linesdk/LineIdToken$Address;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    .line 110
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$1700(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$1800(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    .line 112
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$1900(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$2000(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->access$2100(Lcom/linecorp/linesdk/LineIdToken$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/LineIdToken$Builder;Lcom/linecorp/linesdk/LineIdToken$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/LineIdToken;-><init>(Lcom/linecorp/linesdk/LineIdToken$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_f

    .line 366
    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/LineIdToken;

    .line 368
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 369
    :cond_2
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 370
    :cond_3
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 371
    :cond_4
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 372
    :cond_5
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 373
    :cond_6
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 374
    :cond_7
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    if-eqz v2, :cond_9

    :goto_0
    return v1

    .line 375
    :cond_9
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_a
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_1
    return v1

    .line 376
    :cond_b
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2

    :cond_c
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    if-eqz v2, :cond_d

    :goto_2
    return v1

    .line 377
    :cond_d
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_3

    :cond_e
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_3
    return v1

    .line 378
    :cond_f
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_4

    :cond_10
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    if-eqz v2, :cond_11

    :goto_4
    return v1

    .line 379
    :cond_11
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_5

    :cond_12
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_13

    :goto_5
    return v1

    .line 382
    :cond_13
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_6

    :cond_14
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    if-eqz v2, :cond_15

    :goto_6
    return v1

    .line 383
    :cond_15
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_7

    :cond_16
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    if-eqz v2, :cond_17

    :goto_7
    return v1

    .line 384
    :cond_17
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_8

    :cond_18
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    if-eqz v2, :cond_19

    :goto_8
    return v1

    .line 385
    :cond_19
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    if-eqz v2, :cond_1a

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    invoke-virtual {v2, v3}, Lcom/linecorp/linesdk/LineIdToken$Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_9

    :cond_1a
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    if-eqz v2, :cond_1b

    :goto_9
    return v1

    .line 386
    :cond_1b
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_a

    :cond_1c
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    if-eqz v2, :cond_1d

    :goto_a
    return v1

    .line 387
    :cond_1d
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_b

    :cond_1e
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    if-eqz v2, :cond_1f

    :goto_b
    return v1

    .line 389
    :cond_1f
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_c

    :cond_20
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    if-eqz v2, :cond_21

    :goto_c
    return v1

    .line 392
    :cond_21
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_d

    :cond_22
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    if-eqz v2, :cond_23

    :goto_d
    return v1

    .line 395
    :cond_23
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    iget-object p1, p1, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    if-eqz v2, :cond_24

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e

    :cond_24
    if-nez p1, :cond_25

    goto :goto_e

    :cond_25
    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_26
    :goto_f
    return v1
.end method

.method public getAudience()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresAt()Ljava/util/Date;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public getIssuedAt()Ljava/util/Date;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 405
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 406
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 407
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 408
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 409
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 410
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 411
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 412
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 413
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 414
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 415
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 416
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 417
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 418
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 419
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineIdToken$Address;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 420
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 421
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 422
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 423
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 424
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_e
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineIdToken{rawString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", issuer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subject=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audience=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expiresAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", issuedAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", nonce=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", amr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", picture=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phoneNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gender=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", birthdate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", givenName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", givenNamePronunciation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", middleName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", familyName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", familyNamePronunciation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/utils/ParcelUtils;->writeDate(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 151
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/utils/ParcelUtils;->writeDate(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 152
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/utils/ParcelUtils;->writeDate(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 153
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 162
    iget-object p2, p0, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object p2, p0, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
