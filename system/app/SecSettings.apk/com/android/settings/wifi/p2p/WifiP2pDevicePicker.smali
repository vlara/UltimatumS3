.class public Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$Scanner;
    }
.end annotation


# static fields
.field private static mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;


# instance fields
.field private customActionBarView:Landroid/view/View;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectInProgress:Z

.field private mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLandscape:Z

.field private mIsTablet:Z

.field private mMultiConnect:Z

.field private mNoDeviceIcon:Landroid/widget/ImageView;

.field private mNoFileShareDevice:Landroid/widget/TextView;

.field private mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mP2pMenu:Landroid/view/MenuItem;

.field private mPeersBusy:Landroid/preference/PreferenceGroup;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/settings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanClicked:Z

.field private mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field protected revertMenuItem:Landroid/view/View;

.field protected revertMenuItemIcon:Landroid/view/View;

.field protected revertMenuItemText:Landroid/view/View;

.field protected saveMenuItem:Landroid/view/View;

.field protected saveMenuItemIcon:Landroid/view/View;

.field protected saveMenuItemText:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoFileShareDevice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDeviceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->send()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .registers 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p1
.end method

.method private getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_14

    :cond_21
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_14

    :cond_2d
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_14
.end method

.method private isP2pConnected()Z
    .registers 7

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1d} :catch_21

    if-ne v4, v5, :cond_20

    const/4 v3, 0x1

    :cond_20
    :goto_20
    return v3

    :catch_21
    move-exception v1

    const-string v4, "WifiP2pDevicePicker"

    const-string v5, "isP2pConnected - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private isP2pEnabled()Z
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_19} :catch_1b

    move-result v3

    :goto_1a
    return v3

    :catch_1b
    move-exception v1

    const-string v3, "WifiP2pDevicePicker"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private send()Z
    .registers 10

    const/4 v8, -0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v4, "WifiP2pDevicePicker"

    const-string v5, "nothing selected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_12
    return v4

    :cond_13
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    invoke-virtual {v5, v8, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    goto :goto_12

    :cond_36
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v5, v4, :cond_8c

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4c
    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v5, :cond_4c

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v7, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$8;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$8;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v5, v6, v0, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_4c

    :cond_6d
    iput-boolean v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    invoke-virtual {v5, v8, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    goto :goto_12

    :cond_8c
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v7, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_12
.end method

.method private setP2pMenu(I)V
    .registers 10

    const/16 v2, 0x8

    const/4 v7, 0x5

    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v1, :cond_35

    :cond_16
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_20
    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v6, v6, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    packed-switch p1, :pswitch_data_aa

    :goto_34
    return-void

    :cond_35
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20

    :pswitch_40
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v2, 0x7f0d0305

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_34

    :pswitch_4d
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v1, :cond_55

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v1, :cond_6f

    :cond_55
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v2, 0x7f020061

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_62
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v2, 0x7f0d0305

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_34

    :cond_6f
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_62

    :pswitch_7b
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v1, :cond_83

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v1, :cond_9d

    :cond_83
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v2, 0x7f020064

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_90
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v2, 0x7f0d0524

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_34

    :cond_9d
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_90

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_40
        :pswitch_4d
        :pswitch_7b
    .end packed-switch
.end method

.method private setScanTimer(ZZ)V
    .registers 8

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_57

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoFileShareDevice:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const-string v1, "WifiP2pDevicePicker"

    const-string v2, "setScanTimer - true ===> discoverPeersWithFlush one time for 30 sec"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$7;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$7;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v1, v2, v4, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_56
    :goto_56
    return-void

    :cond_57
    const-string v1, "WifiP2pDevicePicker"

    const-string v2, "setScanTimer - false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    if-eqz p2, :cond_56

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_56
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setForcedClick(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x3

    :goto_15
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_e

    :cond_1e
    move v0, v1

    goto :goto_15
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    const v10, 0x7f0a003b

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v0, "available"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v8}, Lcom/android/settings/ProgressCategory;->setIgnoreNoDevice(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v8}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    const-string v0, "connected"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const-string v0, "busy"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;JJ)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    const-string v0, "layout_inflater"

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v0, 0x7f0400e7

    invoke-virtual {v7, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v1, 0x7f0a02da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v1, 0x7f0a02d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v1, 0x7f0a02db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemText:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v1, 0x7f0a02d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemText:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_f5

    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    :cond_f5
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_102

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    :cond_102
    :goto_102
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$5;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return-void

    :cond_118
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_102
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 10

    const v7, 0x7f0d04f0

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-ne p1, v4, :cond_40

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0305

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0321

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d04f1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :cond_3f
    :goto_3f
    return-object v0

    :cond_40
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3f

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d02ed

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0316

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_3f
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3e

    move v1, v2

    :goto_10
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_12} :catch_40

    :goto_12
    const v1, 0x7f0d0305

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v1, :cond_49

    :cond_2f
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v2, 0x7f020061

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_3d
    return-void

    :cond_3e
    move v1, v3

    goto :goto_10

    :catch_40
    move-exception v0

    const-string v1, "WifiP2pDevicePicker"

    const-string v4, "Fragment not attached to Activity"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_49
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3d
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const v1, 0x7f0400e8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoFileShareDevice:Landroid/widget/TextView;

    const v1, 0x7f0a0259

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDeviceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_d
    :goto_d
    return v0

    :pswitch_e
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v1

    if-nez v1, :cond_24

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-nez v1, :cond_1c

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_d

    :cond_1c
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v1, :cond_d

    invoke-direct {p0, v2, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_d

    :cond_24
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->showDialog(I)V

    goto :goto_d

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0, v1, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    :goto_14
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_19
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_23
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    if-nez v0, :cond_2a

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    :cond_2a
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setP2pTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    goto :goto_14
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v14}, Lcom/android/settings/ProgressCategory;->removeAll()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v14}, Landroid/preference/PreferenceGroup;->removeAll()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v14}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v14

    if-nez v14, :cond_2b

    const-string v14, "WifiP2pDevicePicker"

    const-string v15, "return, P2P is not enabled..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void

    :cond_2b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v14}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v14

    if-nez v14, :cond_134

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v15, 0x7f0d02f7

    invoke-virtual {v14, v15}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/settings/ProgressCategory;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    if-eqz p1, :cond_61

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_72

    :cond_61
    const-string v14, "WifiP2pDevicePicker"

    const-string v15, "no devices found"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6f
    :goto_6f
    sput-object p1, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    goto :goto_2a

    :cond_72
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoFileShareDevice:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDeviceIcon:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v15, 0x7f0d02f7

    invoke-virtual {v14, v15}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/settings/ProgressCategory;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const v15, 0x7f0d02f9

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c0
    :goto_c0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_120

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v14, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v14, :cond_d6

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_ff

    :cond_d6
    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v14

    if-nez v14, :cond_ff

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v14, v14, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v15, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    new-instance v15, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v8}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c0

    :cond_ff
    new-instance v10, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v10, v14, v8}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v6, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_112

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    :cond_112
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v10, v1}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v14, v10}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    move v1, v2

    goto :goto_c0

    :cond_120
    if-gtz v1, :cond_129

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_129
    if-gtz v3, :cond_6f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6f

    :cond_134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoFileShareDevice:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDeviceIcon:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v15, 0x7f0d02f8

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v14, :cond_6f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v14}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v14

    if-eqz v14, :cond_1bd

    const-string v14, "WifiP2pDevicePicker"

    const-string v15, "I am GO"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v14}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_191
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v14, 0x0

    iput v14, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    new-instance v11, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v11, v14, v4}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v6, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b3

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    :cond_1b3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v14, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_191

    :cond_1bd
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v14}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string v14, "WifiP2pDevicePicker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "I am GC, my GO addr :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1f5
    :goto_1f5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v14, v14, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v15, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22f

    const/4 v14, 0x0

    iput v14, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    new-instance v13, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14, v8}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v6, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_225

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    :cond_225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v14, v13}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f5

    :cond_22f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v14, v14, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v15, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v14, v14, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v15, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1f5

    const/4 v14, 0x0

    iput v14, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    new-instance v12, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v12, v14, v8}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v6, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_261

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    :cond_261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v14, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    instance-of v1, p2, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v1, :cond_22

    move-object v0, p2

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_49

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->showDialog(I)V

    :cond_22
    :goto_22
    const-string v1, "WifiP2pDevicePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# of Selected Peers : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_49
    const-string v1, "WifiP2pDevicePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelectedPeers.update : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_22

    :cond_6d
    const-string v1, "WifiP2pDevicePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelectedPeers.remove : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_22
.end method

.method public onResume()V
    .registers 4

    const-string v0, "WifiP2pDevicePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), p2p enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p2p connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_40

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    :cond_40
    :goto_40
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_4f
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setP2pTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    goto :goto_40
.end method
