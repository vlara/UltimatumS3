.class public Lcom/android/settings/wfd/WfdSwitchEnabler;
.super Ljava/lang/Object;
.source "WfdSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mWfdChannel:Lcom/samsung/wfd/WfdManager$Channel;

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/wfd/WfdSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler$1;-><init>(Lcom/android/settings/wfd/WfdSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->isP2pEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_49

    const-string v0, "WfdSwitchEnabler"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_49
    :goto_49
    const-string v0, "wfd"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v3}, Lcom/samsung/wfd/WfdManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)Lcom/samsung/wfd/WfdManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdChannel:Lcom/samsung/wfd/WfdManager$Channel;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdChannel:Lcom/samsung/wfd/WfdManager$Channel;

    if-nez v0, :cond_70

    const-string v0, "WfdSwitchEnabler"

    const-string v1, "Failed to set up connection with wifi display service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    :cond_70
    :goto_70
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_7a
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "mWifiP2pManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_82
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "mWfdManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/wfd/WfdSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler$1;-><init>(Lcom/android/settings/wfd/WfdSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_40

    const-string v0, "WfdSwitchEnabler"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_40
    :goto_40
    const-string v0, "wfd"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v3}, Lcom/samsung/wfd/WfdManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)Lcom/samsung/wfd/WfdManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdChannel:Lcom/samsung/wfd/WfdManager$Channel;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdChannel:Lcom/samsung/wfd/WfdManager$Channel;

    if-nez v0, :cond_67

    const-string v0, "WfdSwitchEnabler"

    const-string v1, "Failed to set up connection with wifi display service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    :cond_67
    :goto_67
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_71
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "mWifiP2pManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :cond_79
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "mWfdManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WfdSwitchEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V

    return-void
.end method

.method private handleP2pStateChanged(I)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_b
    packed-switch p1, :pswitch_data_70

    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled wifi state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return-void

    :pswitch_27
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "WfdSwitchEnabler"

    const-string v1, "handleP2pStateChanged WifiP2pManager.WIFI_P2P_STATE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_26

    :pswitch_4b
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "WfdSwitchEnabler"

    const-string v1, "handleP2pStateChanged WifiP2pManager.WIFI_P2P_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_26

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_27
    .end packed-switch
.end method

.method private isP2pEnabled()Z
    .registers 6

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_15

    move-result v3

    :goto_14
    return v3

    :catch_15
    move-exception v1

    const-string v3, "WfdSwitchEnabler"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_14
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p2, :cond_d

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_d
    if-nez p2, :cond_1b

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_15
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_1b
    if-eqz p2, :cond_2a

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    goto :goto_4

    :cond_2a
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    goto :goto_4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v3, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_17

    move v1, v2

    goto :goto_6

    :cond_17
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->isP2pEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3, v2}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    goto :goto_6

    :cond_2f
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    goto :goto_6
.end method

.method public pause()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_16
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_5
.end method

.method public resume()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_17
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_4
.end method

.method public setP2PDisable(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setP2PDisable  mSwitch.setChecked(bChecked); !!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method
