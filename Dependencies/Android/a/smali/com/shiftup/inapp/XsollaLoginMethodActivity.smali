.class public Lcom/shiftup/inapp/XsollaLoginMethodActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "XsollaLoginMethodActivity.java"


# static fields
.field private static final RC_LOGIN:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "XsollaLoginMethod"


# instance fields
.field private mCurrentNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLoginListener:Landroid/view/View$OnClickListener;

.field private maxAddedButtonWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->maxAddedButtonWidth:I

    .line 153
    new-instance v0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$2;

    invoke-direct {v0, p0}, Lcom/shiftup/inapp/XsollaLoginMethodActivity$2;-><init>(Lcom/shiftup/inapp/XsollaLoginMethodActivity;)V

    iput-object v0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mLoginListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/shiftup/inapp/XsollaLoginMethodActivity;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->setButtonsEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/shiftup/inapp/XsollaLoginMethodActivity;)Lcom/xsolla/android/login/social/SocialNetwork;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mCurrentNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

    return-object p0
.end method

.method static synthetic access$102(Lcom/shiftup/inapp/XsollaLoginMethodActivity;Lcom/xsolla/android/login/social/SocialNetwork;)Lcom/xsolla/android/login/social/SocialNetwork;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mCurrentNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

    return-object p1
.end method

.method private addButton(ILandroid/view/View$OnClickListener;)V
    .locals 4

    .line 101
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "XsollaLoginMethod"

    const-string p2, "given image resource for button does not exist!"

    .line 105
    invoke-static {p1, p2}, Lcom/shiftup/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0021

    iget-object v2, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 110
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {v0}, Landroid/widget/Button;->getLineHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    .line 113
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int p2, v1

    .line 114
    invoke-virtual {v0}, Landroid/widget/Button;->getLineHeight()I

    move-result v1

    .line 116
    invoke-virtual {p1, v3, v3, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    new-instance p2, Landroid/text/style/ImageSpan;

    invoke-direct {p2, p1, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 119
    new-instance p1, Landroid/text/SpannableString;

    const-string v1, " "

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/16 v2, 0x11

    .line 120
    invoke-interface {p1, p2, v3, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 121
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->updateMaxWidth(Landroid/widget/Button;)V

    return-void
.end method

.method private addButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 4

    .line 80
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0021

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/widget/Button;->getLineHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 88
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p2

    float-to-int p2, p3

    .line 89
    invoke-virtual {v0}, Landroid/widget/Button;->getLineHeight()I

    move-result p3

    .line 91
    invoke-virtual {p1, v3, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p2, 0x0

    .line 92
    invoke-virtual {v0, p1, p2, p2, p2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x10

    .line 93
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->updateMaxWidth(Landroid/widget/Button;)V

    return-void
.end method

.method private addButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 71
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0021

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-direct {p0, v0}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->updateMaxWidth(Landroid/widget/Button;)V

    return-void
.end method

.method private getSocialLoginListener(Lcom/xsolla/android/login/social/SocialNetwork;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 128
    new-instance v0, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/shiftup/inapp/XsollaLoginMethodActivity$1;-><init>(Lcom/shiftup/inapp/XsollaLoginMethodActivity;Lcom/xsolla/android/login/social/SocialNetwork;)V

    return-object v0
.end method

.method private setButtonsEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setUniformWidth()V
    .locals 5

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max width is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->maxAddedButtonWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XsollaLoginMethod"

    invoke-static {v1, v0}, Lcom/shiftup/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    iget-object v2, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 58
    iget v4, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->maxAddedButtonWidth:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateMaxWidth(Landroid/widget/Button;)V
    .locals 2

    const/4 v0, 0x0

    .line 43
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Button;->measure(II)V

    .line 45
    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p1

    .line 47
    iget v0, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->maxAddedButtonWidth:I

    if-ge v0, p1, :cond_0

    .line 48
    iput p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->maxAddedButtonWidth:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 179
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 187
    invoke-direct {p0, p1}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->setButtonsEnabled(Z)V

    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mCurrentNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

    new-instance v5, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;

    invoke-direct {v5, p0}, Lcom/shiftup/inapp/XsollaLoginMethodActivity$3;-><init>(Lcom/shiftup/inapp/XsollaLoginMethodActivity;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/xsolla/android/login/XLogin;->finishSocialAuth(Landroid/content/Context;Lcom/xsolla/android/login/social/SocialNetwork;IILandroid/content/Intent;Lcom/xsolla/android/login/callback/FinishSocialCallback;)V

    const/4 p1, 0x0

    .line 236
    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mCurrentNetwork:Lcom/xsolla/android/login/social/SocialNetwork;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 163
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    .line 164
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f080227

    .line 165
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 169
    sget-object p1, Lcom/xsolla/android/login/social/SocialNetwork;->LINKEDIN:Lcom/xsolla/android/login/social/SocialNetwork;

    invoke-direct {p0, p1}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->getSocialLoginListener(Lcom/xsolla/android/login/social/SocialNetwork;)Landroid/view/View$OnClickListener;

    move-result-object p1

    const v0, 0x7f0d0003

    invoke-direct {p0, v0, p1}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->addButton(ILandroid/view/View$OnClickListener;)V

    .line 170
    sget-object p1, Lcom/xsolla/android/login/social/SocialNetwork;->BAIDU:Lcom/xsolla/android/login/social/SocialNetwork;

    invoke-direct {p0, p1}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->getSocialLoginListener(Lcom/xsolla/android/login/social/SocialNetwork;)Landroid/view/View$OnClickListener;

    move-result-object p1

    const/high16 v0, 0x7f0d0000

    invoke-direct {p0, v0, p1}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->addButton(ILandroid/view/View$OnClickListener;)V

    .line 171
    sget-object p1, Lcom/xsolla/android/login/social/SocialNetwork;->TWITTER:Lcom/xsolla/android/login/social/SocialNetwork;

    invoke-direct {p0, p1}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->getSocialLoginListener(Lcom/xsolla/android/login/social/SocialNetwork;)Landroid/view/View$OnClickListener;

    move-result-object p1

    const-string v0, "Twitter"

    const v1, 0x7f0d0004

    invoke-direct {p0, v0, v1, p1}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->addButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 172
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->mLoginListener:Landroid/view/View$OnClickListener;

    const-string v0, "Email"

    invoke-direct {p0, v0, p1}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->addButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-direct {p0}, Lcom/shiftup/inapp/XsollaLoginMethodActivity;->setUniformWidth()V

    return-void
.end method
