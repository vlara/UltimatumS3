.class public Lcom/android/settings/wifi/p2p/WifiP2pDialog;
.super Landroid/app/AlertDialog;
.source "WifiP2pDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceAddress:Landroid/widget/TextView;

.field private mDeviceName:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field private mWpsSetupIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method


# virtual methods
.method public getConfig()Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    new-instance v1, Landroid/net/wifi/WpsInfo;

    invoke-direct {v1}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    packed-switch v1, :pswitch_data_4c

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    :goto_22
    return-object v0

    :pswitch_23
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_22

    :pswitch_28
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a028f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto :goto_22

    :pswitch_45
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_22

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_28
        :pswitch_45
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400eb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a02e2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setInverseBackgroundForced(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d02ed

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setTitle(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a0288

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a02e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v2, v5, :cond_59

    const/4 v2, -0x1

    const v3, 0x7f0d02c6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_59
    const/4 v2, -0x2

    const v3, 0x7f0d02c9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_81
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v2, 0x7f0a02e3

    iput p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
