.class public Lcom/shiftup/inapp/XsollaLoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "XsollaLoginActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XsollaLoginActivity"


# instance fields
.field private loginButton:Landroid/widget/Button;

.field private loginListener:Landroid/view/View$OnClickListener;

.field private passwordText:Landroid/widget/TextView;

.field private registerButton:Landroid/widget/Button;

.field private registerListener:Landroid/view/View$OnClickListener;

.field private usernameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/shiftup/inapp/XsollaLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/shiftup/inapp/XsollaLoginActivity$1;-><init>(Lcom/shiftup/inapp/XsollaLoginActivity;)V

    iput-object v0, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->loginListener:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v0, Lcom/shiftup/inapp/XsollaLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/shiftup/inapp/XsollaLoginActivity$2;-><init>(Lcom/shiftup/inapp/XsollaLoginActivity;)V

    iput-object v0, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->registerListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/shiftup/inapp/XsollaLoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->usernameText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/shiftup/inapp/XsollaLoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->passwordText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/shiftup/inapp/XsollaLoginActivity;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/shiftup/inapp/XsollaLoginActivity;->setButtonsEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/shiftup/inapp/XsollaLoginActivity;)Landroid/widget/Button;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->loginButton:Landroid/widget/Button;

    return-object p0
.end method

.method private setButtonsEnabled(Z)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->registerButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    .line 144
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f080072

    .line 145
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->loginButton:Landroid/widget/Button;

    const p1, 0x7f080073

    .line 146
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->registerButton:Landroid/widget/Button;

    const p1, 0x7f0801f5

    .line 147
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->usernameText:Landroid/widget/TextView;

    .line 149
    new-instance v0, Lcom/shiftup/inapp/XsollaLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/shiftup/inapp/XsollaLoginActivity$3;-><init>(Lcom/shiftup/inapp/XsollaLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p1, 0x7f0801f4

    .line 164
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->passwordText:Landroid/widget/TextView;

    .line 165
    new-instance v0, Lcom/shiftup/inapp/XsollaLoginActivity$4;

    invoke-direct {v0, p0}, Lcom/shiftup/inapp/XsollaLoginActivity$4;-><init>(Lcom/shiftup/inapp/XsollaLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 180
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->loginButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->loginListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object p1, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->registerButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/shiftup/inapp/XsollaLoginActivity;->registerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
