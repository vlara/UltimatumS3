.class public Lcom/android/settings/wifi/PrioritySettingDialog;
.super Landroid/app/AlertDialog;
.source "PrioritySettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/PrioritySettingDialog$1;,
        Lcom/android/settings/wifi/PrioritySettingDialog$WifiServiceHandler;
    }
.end annotation


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mContext:Landroid/content/Context;

.field private mPriorityButton:I

.field private mPriorityView:Landroid/view/ViewGroup;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSecurity:I

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field orderedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/AccessPoint;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez p2, :cond_d

    const/4 v0, 0x0

    :goto_a
    iput v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mSecurity:I

    return-void

    :cond_d
    iget v0, p2, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_a
.end method

.method static getOrderedConfigs(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_41

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_26

    const/4 v6, 0x0

    invoke-interface {v4, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_f

    :cond_26
    const/4 v2, 0x0

    const/4 v2, 0x0

    :goto_28
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3d

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v7, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v6, v7, :cond_3d

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3d
    invoke-interface {v4, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_f

    :cond_41
    const/4 v4, 0x0

    :cond_42
    return-object v4
.end method

.method static resortOrderedConfigs(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_19
    return-void
.end method

.method private validatePriorityButtons()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, -0x3

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-nez v2, :cond_17

    :goto_16
    return-void

    :cond_17
    if-ne v0, v3, :cond_28

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_16

    :cond_28
    if-ne v1, v6, :cond_39

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_16

    :cond_39
    if-nez v0, :cond_4a

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_16

    :cond_4a
    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_5d

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_16

    :cond_5d
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_16
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

.method public cancel()V
    .registers 3

    const-string v0, "WifiPriorityDialog"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->cancelOrDismiss(Z)V

    return-void
.end method

.method protected cancelOrDismiss(Z)V
    .registers 5

    const-string v0, "WifiPriorityDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelOrDismiss isCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPriorityButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2d

    iget v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    if-nez v0, :cond_32

    :cond_2d
    if-eqz p1, :cond_36

    invoke-super {p0}, Landroid/app/AlertDialog;->cancel()V

    :cond_32
    :goto_32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    return-void

    :cond_36
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_32
.end method

.method public dismiss()V
    .registers 3

    const-string v0, "WifiPriorityDialog"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->cancelOrDismiss(Z)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 6

    const-string v0, "WifiPriorityDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged checkedId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    const/4 v8, -0x1

    const-string v6, "WifiPriorityDialog"

    const-string v7, "onClick"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-ne v2, v8, :cond_13

    :cond_12
    return-void

    :cond_13
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ne p2, v8, :cond_3c

    const/4 v6, 0x1

    if-lt v2, v6, :cond_3c

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-static {v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->resortOrderedConfigs(Ljava/util/List;)V

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    :cond_3c
    const/4 v6, -0x3

    if-ne p2, v6, :cond_61

    add-int/lit8 v6, v5, -0x2

    if-gt v2, v6, :cond_61

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-static {v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->resortOrderedConfigs(Ljava/util/List;)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    :cond_61
    const/4 v6, -0x2

    if-ne p2, v6, :cond_12

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_6a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400dd

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/settings/wifi/PrioritySettingDialog$WifiServiceHandler;

    invoke-direct {v5, p0, v7}, Lcom/android/settings/wifi/PrioritySettingDialog$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/PrioritySettingDialog;Lcom/android/settings/wifi/PrioritySettingDialog$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    const-string v3, "WifiPriorityDialog"

    const-string v4, "PrioritySettingDialog onCreate null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400de

    iget-object v5, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    const v4, 0x7f0a02c2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v3, 0x7f0d098d

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    const v4, 0x7f0a02c3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    if-nez v3, :cond_77

    const-string v3, "WifiPriorityDialog"

    const-string v4, "mRadioGroup is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_76
    return-void

    :cond_77
    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    const/4 v3, -0x1

    const v4, 0x7f0d098a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v3, -0x3

    const v4, 0x7f0d098b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v3, -0x2

    const v4, 0x7f0d098c

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/android/settings/wifi/PrioritySettingDialog;->getOrderedConfigs(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    iput v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    iget-object v3, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0, p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    goto :goto_76
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method protected updateRadioGroup(I)V
    .registers 12

    const/4 v9, -0x2

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    if-eqz v6, :cond_74

    const-string v6, "WifiPriorityDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRadioGroup add ordered configurations. number:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->removeAllViews()V

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    new-instance v5, Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setTextColor(I)V

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setId(I)V

    new-instance v3, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v6, v5, v0, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "WifiPriorityDialog"

    const-string v7, "updateRadioGroup current ssid:"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_2f

    :cond_6b
    iget-object v6, p0, Lcom/android/settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, p1}, Landroid/widget/RadioGroup;->check(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    :goto_73
    return-void

    :cond_74
    const-string v6, "WifiPriorityDialog"

    const-string v7, "updateRadioGroup orderedConfigs is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73
.end method
