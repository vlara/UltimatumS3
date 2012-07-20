.class public Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
.super Landroid/app/AlertDialog;
.source "WifiApWhitelistDialog.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mButtonOk:Landroid/widget/Button;

.field private mEtDeviceName:Landroid/widget/EditText;

.field private mEtMac:Landroid/widget/EditText;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMac:Ljava/lang/String;

.field private mTvMac:Landroid/widget/TextView;

.field private mType:I

.field private mView:Landroid/view/View;

.field macWatcher:Landroid/text/TextWatcher;

.field nameWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WifiApWhitelistDialog"

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->macWatcher:Landroid/text/TextWatcher;

    iput p2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    return-void
.end method

.method private validate()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_38

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_38

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_3d

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_3d

    :cond_38
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_44

    :cond_3d
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_43
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v7, -0x1

    const v6, 0x7f0d0264

    const v5, 0x7f0a0287

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400d7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setInverseBackgroundForced(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0288

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a026c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-nez v1, :cond_9d

    const v1, 0x7f0d025e

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_61
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d04f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d02c9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->macWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    return-void

    :cond_9d
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-ne v1, v8, :cond_bf

    const v1, 0x7f0d025e

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_61

    :cond_bf
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_118

    const v1, 0x7f0d0262

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0286

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0289

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_61

    :cond_118
    const v1, 0x7f0d0213

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0083

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_61
.end method
