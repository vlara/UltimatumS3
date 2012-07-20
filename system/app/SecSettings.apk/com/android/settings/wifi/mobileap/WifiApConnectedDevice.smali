.class public Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
.super Landroid/preference/Preference;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mConnectedTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIsContains:Z

.field private mMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    const v0, 0x7f040099

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    return-object v0
.end method

.method private reloadWhiteList()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1f

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_1f
    return-void
.end method

.method private showDialog(I)V
    .registers 7

    packed-switch p1, :pswitch_data_24

    :goto_3
    return-void

    :pswitch_4
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->show()V

    goto :goto_3

    :pswitch_14
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->show()V

    goto :goto_3

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_4
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .registers 5

    instance-of v1, p1, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 10

    const/4 v7, 0x0

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->isContains(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsContains:Z

    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsContains:Z

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    :cond_19
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->setSummary(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v5, 0x7f0a01a6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x7f0a01a5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v5, 0x7f0a01a7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_94

    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsContains:Z

    if-nez v5, :cond_82

    const v5, 0x7f020169

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$1;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_82
    :goto_82
    const v5, 0x7f0a01a4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_94
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_af

    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsContains:Z

    if-eqz v5, :cond_82

    const v5, 0x7f02016a

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$2;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_82

    :cond_af
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_82
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 20

    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v11, :cond_21

    const-string v11, "WifiApConnectedDevice"

    const-string v12, "onClick"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p1

    check-cast v10, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_21

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v9

    invoke-virtual {v10}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getType()I

    move-result v11

    packed-switch v11, :pswitch_data_106

    :cond_21
    :goto_21
    :pswitch_21
    return-void

    :pswitch_22
    const-string v11, "WifiApConnectedDevice"

    const-string v12, "ADD_DEVICE_FROM_CONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p1

    check-cast v11, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v11}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v9, v11, v2}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->update(Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0268

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<font color=#59D0F3>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</font>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_21

    :pswitch_83
    const-string v11, "WifiApConnectedDevice"

    const-string v12, "REMOVE_DEVICE_FROM_CONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->reloadWhiteList()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0269

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<font color=#59D0F3>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</font>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/4 v11, 0x4

    iput v11, v3, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v11, "mac"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    invoke-virtual {v11, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->notifyHierarchyChanged()V

    goto/16 :goto_21

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_83
    .end packed-switch
.end method

.method update(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    if-ne p2, v0, :cond_b

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    :cond_7
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->notifyHierarchyChanged()V

    :goto_a
    return v0

    :cond_b
    if-nez p2, :cond_7

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method
