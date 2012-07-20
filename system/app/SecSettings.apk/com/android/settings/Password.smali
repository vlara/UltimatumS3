.class public Lcom/android/settings/Password;
.super Landroid/app/Activity;
.source "Password.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mDigits:Landroid/widget/TextView;

.field private mHeadrText:Landroid/widget/TextView;

.field private mPassword:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private keyPressed(I)V
    .registers 5

    const/16 v1, 0x43

    if-eq p1, v1, :cond_17

    iget-object v1, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_17

    :goto_16
    return-void

    :cond_17
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v1, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_16
.end method

.method private match(Ljava/lang/String;)Z
    .registers 6

    const v3, 0x7f0d0009

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/Password;->reasonable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "****"

    iget-object v2, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d076b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return v0

    :cond_2b
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_2a

    :cond_37
    const-string v1, "****"

    iget-object v2, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    :cond_49
    const/4 v0, 0x1

    goto :goto_2a

    :cond_4b
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private onPasswordConfirm()V
    .registers 4

    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, ".password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/Password;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/Password;->finish()V

    :cond_21
    return-void
.end method

.method private reasonable(Ljava/lang/String;)Z
    .registers 6

    const v3, 0x7f0d0009

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "****"

    iget-object v2, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    :goto_22
    return v0

    :cond_23
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_22

    :cond_2f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_63

    :cond_3e
    const-string v1, "****"

    iget-object v2, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_22

    :cond_57
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_22

    :cond_63
    const/4 v0, 0x1

    goto :goto_22
.end method

.method private setupKeypad()V
    .registers 4

    const v2, 0x7f0a00af

    const v1, 0x7f0a00b1

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0a00b2

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00b3

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00b4

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00b5

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00b6

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00b7

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00b8

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00b9

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00ba

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00bc

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0a00bb

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d077f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/Password$1;

    invoke-direct {v2, p0}, Lcom/android/settings/Password$1;-><init>(Lcom/android/settings/Password;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_52

    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_7

    :pswitch_e
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_7

    :pswitch_14
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_7

    :pswitch_1a
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_7

    :pswitch_20
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_7

    :pswitch_26
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_7

    :pswitch_2c
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_7

    :pswitch_32
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_7

    :pswitch_38
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_7

    :pswitch_3e
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_7

    :pswitch_43
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_7

    :pswitch_49
    invoke-direct {p0}, Lcom/android/settings/Password;->onPasswordConfirm()V

    goto :goto_7

    :pswitch_4d
    invoke-virtual {p0}, Lcom/android/settings/Password;->finish()V

    goto :goto_7

    nop

    :pswitch_data_52
    .packed-switch 0x7f0a00af
        :pswitch_43
        :pswitch_7
        :pswitch_8
        :pswitch_e
        :pswitch_14
        :pswitch_1a
        :pswitch_20
        :pswitch_26
        :pswitch_2c
        :pswitch_32
        :pswitch_38
        :pswitch_49
        :pswitch_3e
        :pswitch_4d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040050

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/Password;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2c

    const-string v2, ".title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Password;->mTitle:Ljava/lang/String;

    const-string v2, ".subject"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Password;->mSubject:Ljava/lang/String;

    const-string v2, ".password"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    :cond_2c
    const v2, 0x7f0a003d

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/Password;->mHeadrText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/Password;->mHeadrText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/Password;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a00ae

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    const v2, 0x7f0a00b1

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_72

    invoke-direct {p0}, Lcom/android/settings/Password;->setupKeypad()V

    :cond_72
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    :goto_8
    return v2

    :pswitch_9
    iget-object v0, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    nop

    :pswitch_data_12
    .packed-switch 0x7f0a00af
        :pswitch_9
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
