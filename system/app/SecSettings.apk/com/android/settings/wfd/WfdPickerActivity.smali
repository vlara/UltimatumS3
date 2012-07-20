.class public Lcom/android/settings/wfd/WfdPickerActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mIsWfdEnabledCalled:Z


# instance fields
.field private ALLSHARE_CAST_START:Ljava/lang/String;

.field private final KEY_LAST_CONNECTED_DEVICE_ADDR:Ljava/lang/String;

.field private final KEY_LAST_CONNECTED_DEVICE_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TICKS_PER_SEC:I

.field private final TOT_CONNECT_TIME:I

.field private final TOT_CONNECT_TIME_MS:I

.field private final TOT_SCANNING_TIME:I

.field private final TOT_SCANNING_TIME_MS:I

.field private WFD_RESTART_ACTION:Ljava/lang/String;

.field private actionBarSwitch:Landroid/widget/Switch;

.field private bIsConnectRequestedFlag:Z

.field private bStartConnectingFlag:Z

.field private bTerminatedFlag:Z

.field private mAutoConnectDialog:Landroid/app/AlertDialog;

.field private mAutoConnectSysProp:Ljava/lang/String;

.field private mCastEndConnect:Landroid/view/MenuItem;

.field private mCastScanStopMenu:Landroid/view/MenuItem;

.field private mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mCurDialog:Landroid/app/AlertDialog;

.field private mCurMenuType:I

.field private mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEndConnectionFlag:Z

.field private mErrorHandlingDialog:Landroid/app/AlertDialog;

.field mIntentFilter:Landroid/content/IntentFilter;

.field private mIsStartedByAllShare:Z

.field private mIsTablet:Z

.field private mLastConnectDeviceAddr:Ljava/lang/String;

.field private mLastConnectDeviceName:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mMultiPaneSwitch:Landroid/preference/SwitchPreference;

.field private mNoDeviceImage:Landroid/widget/ImageView;

.field private mNoDeviceText:Landroid/widget/TextView;

.field private mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/settings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTickCount:I

.field private mTimer:Landroid/os/CountDownTimer;

.field private mWFDDialogState:I

.field private mWFDSettingState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfdChannel:Lcom/samsung/wfd/WfdManager$Channel;

.field private mWfdDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field private mWfdRestartTrigger:Z

.field private mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

.field private mWfdTerminateDialog:Landroid/app/AlertDialog;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pTrigger:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsWfdEnabledCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "WfdPickerActivity"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TAG:Ljava/lang/String;

    const-string v0, "wlan.wfd.lastdevicename"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->KEY_LAST_CONNECTED_DEVICE_NAME:Ljava/lang/String;

    const-string v0, "wlan.wfd.lastdeviceaddr"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->KEY_LAST_CONNECTED_DEVICE_ADDR:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->actionBarSwitch:Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdChannel:Lcom/samsung/wfd/WfdManager$Channel;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEndConnectionFlag:Z

    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bIsConnectRequestedFlag:Z

    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bTerminatedFlag:Z

    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pTrigger:Z

    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdRestartTrigger:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    iput v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TICKS_PER_SEC:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    const v0, 0xea60

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_SCANNING_TIME:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_SCANNING_TIME_MS:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.sec.android.allshare.intent.action.CAST_START"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->ALLSHARE_CAST_START:Ljava/lang/String;

    const-string v0, "com.samsung.wfd.PICK_WFD_NETWORK"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->WFD_RESTART_ACTION:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$1;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private CheckItemForWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    if-eqz v4, :cond_11

    iget v4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    and-int v0, v4, v1

    if-ne v0, v2, :cond_f

    :goto_e
    return v2

    :cond_f
    move v2, v3

    goto :goto_e

    :cond_11
    move v2, v3

    goto :goto_e
.end method

.method private CheckItemWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 4

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    :cond_a
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "WfdPickerActivity"

    const-string v1, "CheckItemWifiBusy >> can not connect!!! busy device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const-string v0, "WfdPickerActivity"

    const-string v1, "CheckItemWifiBusy >> can connect!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_18
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wfd/WfdPickerActivity;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/ProgressCategory;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->addMessagePreference(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEndConnectionFlag:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEndConnectionFlag:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$2410(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .registers 3

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/wfd/WfdSwitchEnabler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/preference/PreferenceGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDeviceResultRoutine(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    return-void
.end method

.method private addMessagePreference(I)V
    .registers 4

    const-string v0, "WfdPickerActivity"

    const-string v1, "addMessagePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_17
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2a
    return-void
.end method

.method private cancelWfdConnect()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v0, "WfdPickerActivity"

    const-string v1, "WakeUnLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bIsConnectRequestedFlag:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_3b

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-ne v0, v4, :cond_3c

    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if( isWfdConnected() == true )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if( isP2pConnected() && isWfdConnected() == false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WfdPickerActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdPickerActivity$2;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect After removeGroup..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_6b
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    goto :goto_3b

    :cond_6e
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WfdPickerActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdPickerActivity$3;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect After cancelConnect..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_8a
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    if-ne v0, v4, :cond_91

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    :cond_91
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    goto :goto_3b
.end method

.method private changeActionBar()V
    .registers 6

    const/16 v2, 0x10

    const/4 v4, -0x2

    const-string v0, "WfdPickerActivity"

    const-string v1, "changeActionBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_17

    :goto_16
    return-void

    :cond_17
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_16
.end method

.method private clearLastConnectedDeviceInfo()V
    .registers 3

    const-string v0, "WfdPickerActivity"

    const-string v1, "clearLastConnectedDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    const-string v0, "wlan.wfd.lastdevicename"

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wlan.wfd.lastdeviceaddr"

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createAutoConnectDialog()Landroid/app/AlertDialog;
    .registers 7

    const/4 v4, 0x0

    const-string v0, "WfdPickerActivity"

    const-string v1, "createAutoConnectDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v0, 0x7f0400cd

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a025d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0d032e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    const v0, 0x7f0400c9

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_4f
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$4;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wfd/WfdPickerActivity$4;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_87

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bIsConnectRequestedFlag:Z

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$5;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$5;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    :cond_87
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/wfd/WfdPickerActivity$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WfdPickerActivity$6;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f0d04f1

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$7;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$7;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private createErrorHandlingDialog(I)Landroid/app/AlertDialog;
    .registers 6

    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createErrorHandlingDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d032e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const/16 v0, 0xd

    if-ne p1, v0, :cond_66

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d0331

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f0d04f0

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$10;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$10;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f0d04a8

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$11;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$11;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    return-object v0

    :cond_66
    const/16 v0, 0xe

    if-ne p1, v0, :cond_3f

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d0332

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3f
.end method

.method private createWfdTerminateDialog()Landroid/app/AlertDialog;
    .registers 5

    const-string v0, "WfdPickerActivity"

    const-string v1, "createWfdTerminateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d032e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d0330

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f0d04f0

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$8;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$8;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f0d04f1

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$9;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$9;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getLastConnectedDeviceInfo()V
    .registers 6

    const-string v2, "wlan.wfd.lastdevicename"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wlan.wfd.lastdeviceaddr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    :cond_16
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_20

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    :cond_20
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastConnectedDeviceInfo Last n:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " a:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isP2pConnected()Z
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_28

    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected >> true!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_26} :catch_2a

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    move v0, v1

    goto :goto_27

    :catch_2a
    move-exception v0

    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_27
.end method

.method private isP2pEnabled()Z
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled >> true!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_24} :catch_28

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    move v0, v1

    goto :goto_25

    :catch_28
    move-exception v0

    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_25
.end method

.method private isWfdConnected()Z
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    :cond_1f
    const-string v0, "WfdPickerActivity"

    const-string v1, "isWfdConnected - getWfdState true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected - getWfdState current state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "WfdPickerActivity"

    const-string v1, "makeConnConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    if-nez p1, :cond_6e

    const-string v0, "WfdPickerActivity"

    const-string v1, "try to connect with last connected info..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConnConfig << n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const-string v0, "WfdPickerActivity"

    const-string v1, "we do not have mP2pDevice...so set use default WpsInfo info..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v0, Landroid/net/wifi/WpsInfo;->setup:I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v0, Landroid/net/wifi/WpsInfo;->setup:I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    :goto_6b
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0

    :cond_6e
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConnConfig << n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_6b

    :cond_ad
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v0

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_6b

    :cond_ba
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v0

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_6b

    :cond_c7
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_6b
.end method

.method private printWfdSettingState()V
    .registers 3

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    packed-switch v0, :pswitch_data_46

    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is Unknown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void

    :pswitch_d
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :pswitch_15
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :pswitch_1d
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :pswitch_25
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_SCANNING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :pswitch_2d
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :pswitch_35
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_ESTABLISHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :pswitch_3d
    const-string v0, "WfdPickerActivity"

    const-string v1, " printWfdSettingState << curr WFDState is WFD_PICKER_STATE_SCANSTOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_d
        :pswitch_15
        :pswitch_1d
        :pswitch_25
        :pswitch_2d
        :pswitch_35
        :pswitch_3d
    .end packed-switch
.end method

.method private scanDevice()V
    .registers 8

    const/4 v3, 0x3

    const/4 v6, 0x0

    const/16 v2, 0x8

    const-string v0, "WfdPickerActivity"

    const-string v1, "scanDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_18
    iput v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const-string v0, "WfdPickerActivity"

    const-string v1, "remove current device list!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4e
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$12;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wfd/WfdPickerActivity$12;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_87

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WfdPickerActivity$13;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdPickerActivity$13;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_87
    :goto_87
    return-void

    :cond_88
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WfdPickerActivity$14;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdPickerActivity$14;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_87
.end method

.method private scanDeviceResultRoutine(I)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanDeviceResultRoutine << reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    if-nez v0, :cond_29

    const-string v0, "WfdPickerActivity"

    const-string v1, "mWfdDeviceList is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    return-void

    :cond_29
    packed-switch p1, :pswitch_data_136

    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check the reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3, v3}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_c1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28

    :pswitch_64
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan timer expired! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :pswitch_83
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers received onFailure! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :pswitch_a2
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers cancel! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_c1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-ne v0, v4, :cond_28

    if-nez p1, :cond_28

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->CheckItemForWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->CheckItemWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f7

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_f7
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoconnect prop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    goto/16 :goto_28

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_64
        :pswitch_83
        :pswitch_a2
    .end packed-switch
.end method

.method private setCastMenu(I)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x1

    const-string v0, "WfdPickerActivity"

    const-string v2, "setCastMenu"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1c

    move v0, v1

    :goto_18
    packed-switch p1, :pswitch_data_c8

    :goto_1b
    :pswitch_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_18

    :pswitch_1e
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_2b

    if-eqz v0, :cond_4c

    :cond_2b
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    const v2, 0x7f020061

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_38
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    const v2, 0x7f0d0305

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    goto :goto_1b

    :cond_4c
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_38

    :pswitch_57
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_64

    if-eqz v0, :cond_85

    :cond_64
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    const v2, 0x7f020064

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_71
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    const v2, 0x7f0d0524

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    goto :goto_1b

    :cond_85
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_71

    :pswitch_90
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_ENDCONNECT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_9d

    if-eqz v0, :cond_bd

    :cond_9d
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v2, 0x7f02005d

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_aa
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v2, 0x7f0d02fe

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1b

    :cond_bd
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_aa

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1e
        :pswitch_57
        :pswitch_90
    .end packed-switch
.end method

.method private setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_a1

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3f

    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    const-string v0, "wlan.wfd.lastdevicename"

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastConnectedDeviceInfo DeviceName - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_7a

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7a

    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    const-string v0, "wlan.wfd.lastdeviceaddr"

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastConnectedDeviceInfo DeviceAddr - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastConnectedDeviceInfo Last n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a0
    return-void

    :cond_a1
    const-string v0, "WfdPickerActivity"

    const-string v1, "setLastConnectedDeviceInfo if (mP2pDevice == null) initialize!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    const-string v0, "wlan.wfd.lastdevicename"

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wlan.wfd.lastdeviceaddr"

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0
.end method

.method private terminateWfdActivity(Z)V
    .registers 5

    const/4 v2, 0x1

    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bTerminatedFlag:Z

    if-ne v0, v2, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bTerminatedFlag:Z

    if-nez v0, :cond_19

    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bTerminatedFlag:Z

    :cond_19
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_22
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_34

    if-ne p1, v2, :cond_2c

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    :cond_2c
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Since the wfd state is established, do not terminate WfdManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_34
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Wi-Fi Wfd Terminate ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-ne p1, v2, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    goto :goto_12
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 13

    const/16 v8, 0x10

    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v5, "WfdPickerActivity"

    const-string v6, "onActivityCreated"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->actionBarSwitch:Landroid/widget/Switch;

    instance-of v5, v0, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_70

    move-object v3, v0

    check-cast v3, Landroid/preference/PreferenceActivity;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_5f

    :cond_2e
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v7, v7, v2, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v10, v10, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v6, 0x7f0d032e

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_5f
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-eqz v5, :cond_c9

    new-instance v5, Lcom/android/settings/wfd/WfdSwitchEnabler;

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-direct {v5, v0, v6}, Lcom/android/settings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    iput-boolean v9, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    :cond_70
    :goto_70
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x1020004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v5

    if-eqz v5, :cond_d3

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v6, 0x7f0d02f7

    invoke-virtual {v5, v6}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, v9}, Lcom/android/settings/ProgressCategory;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_b1
    iget-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v5, :cond_be

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_be
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setForcedClick(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_c9
    new-instance v5, Lcom/android/settings/wfd/WfdSwitchEnabler;

    iget-object v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->actionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v5, v0, v6}, Lcom/android/settings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    goto :goto_70

    :cond_d3
    const v5, 0x7f0d0335

    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WfdPickerActivity;->addMessagePreference(I)V

    goto :goto_b1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    const/4 v2, 0x0

    const-string v0, "WfdPickerActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->changeActionBar()V

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    :cond_1f
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2a
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v3, "WfdPickerActivity"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const v3, 0x7f07005b

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->addPreferencesFromResource(I)V

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->ALLSHARE_CAST_START:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    :cond_29
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->WFD_RESTART_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    :cond_35
    iput-boolean v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    :cond_37
    const-string v3, "allsharecast_available"

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ProgressCategory;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v6}, Lcom/android/settings/ProgressCategory;->setIgnoreNoDevice(Z)V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v6}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    const-string v3, "allsharecast_connected"

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const-string v3, "allsharecast_switch"

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    const-string v3, "wlan.wfd.autoconnect"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v3, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProp wlan.wfd.autoconnect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pTrigger:Z

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "cause"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_16a

    :goto_a2
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    iput v7, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    iput-boolean v7, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bIsConnectRequestedFlag:Z

    const-string v3, "wifip2p"

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_13c

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v3, :cond_db

    const-string v3, "WfdPickerActivity"

    const-string v4, "Failed to set up connection with wifi p2p service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    :cond_db
    :goto_db
    const-string v3, "wfd"

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wfd/WfdManager;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v3, :cond_161

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8}, Lcom/samsung/wfd/WfdManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)Lcom/samsung/wfd/WfdManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdChannel:Lcom/samsung/wfd/WfdManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdChannel:Lcom/samsung/wfd/WfdManager$Channel;

    if-nez v3, :cond_144

    const-string v3, "WfdPickerActivity"

    const-string v4, "Failed to set up connection with wifi display service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    :cond_10a
    :goto_10a
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WfdPickerActivity;->setHasOptionsMenu(Z)V

    return-void

    :pswitch_138
    iput-boolean v7, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    goto/16 :goto_a2

    :cond_13c
    const-string v3, "WfdPickerActivity"

    const-string v4, "mWifiP2pManager is null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    :cond_144
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    if-eqz v3, :cond_14e

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    goto :goto_10a

    :cond_14e
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v3

    if-ne v3, v6, :cond_10a

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    const-string v3, "WfdPickerActivity"

    const-string v4, "onCreate setWfdEnabledDialog(true)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10a

    :cond_161
    const-string v3, "WfdPickerActivity"

    const-string v4, "mWfdManager is null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10a

    nop

    :pswitch_data_16a
    .packed-switch 0x22077
        :pswitch_138
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/AlertDialog;
    .registers 5

    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    packed-switch p1, :pswitch_data_3a

    const/4 v0, 0x0

    :goto_1e
    return-object v0

    :pswitch_1f
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_23
    if-eqz v0, :cond_2d

    new-instance v1, Lcom/android/settings/wfd/WfdPickerActivity$15;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WfdPickerActivity$15;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_2d
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    goto :goto_1e

    :pswitch_30
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->createWfdTerminateDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_23

    :pswitch_35
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->createErrorHandlingDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_23

    :pswitch_data_3a
    .packed-switch 0xb
        :pswitch_1f
        :pswitch_30
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->onCreateDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 10

    const v6, 0x7f020060

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x5

    const/4 v2, 0x0

    const-string v0, "WfdPickerActivity"

    const-string v3, "onCreateOptionsMenu"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_63

    move v0, v1

    :goto_1b
    const v3, 0x7f0d0305

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    const v1, 0x7f0d02fe

    invoke-interface {p1, v2, v5, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_65

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    const v1, 0x7f020061

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_62
    :goto_62
    return-void

    :cond_63
    move v0, v2

    goto :goto_1b

    :cond_65
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    const v1, 0x7f020061

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_62
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const-string v1, "WfdPickerActivity"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0400e6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    const v1, 0x7f0a0259

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    const v1, 0x7f0a02d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    const v2, 0x7f0201b9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    const v2, 0x7f0d0aa0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0335

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-object v0
.end method

.method public onDetach()V
    .registers 5

    const/4 v3, 0x0

    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach P2p is on.. but wfd is not connected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0337

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_38
    invoke-direct {p0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->terminateWfdActivity(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v0, 0x1

    const-string v1, "WfdPickerActivity"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_6a

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_13
    :goto_13
    return v0

    :pswitch_14
    const-string v1, "WfdPickerActivity"

    const-string v2, "MENU_ID_SCAN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0305

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_13

    :cond_40
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_52
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDeviceResultRoutine(I)V

    goto :goto_13

    :pswitch_57
    const-string v1, "WfdPickerActivity"

    const-string v2, "MENU_ID_ENDCONNECT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    goto :goto_13

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_14
        :pswitch_57
    .end packed-switch
.end method

.method public onPause()V
    .registers 5

    const/4 v3, 0x1

    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdSwitchEnabler;->pause()V

    :cond_17
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_20
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-ne v1, v3, :cond_45

    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_40

    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    if-ne v1, v3, :cond_40

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause cancelWfdConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_45
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause requestP2pListen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :try_start_60
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_69} :catch_6a

    :goto_69
    return-void

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 10

    const/16 v4, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "WfdPickerActivity"

    const-string v1, "onPeersAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v0, v7, :cond_1b

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    if-ne v0, v7, :cond_23

    :cond_1b
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPeersAvailable >> skip!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_161

    const-string v1, "WfdPickerActivity"

    const-string v3, "===================================================================================="

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v3, 0x7f0d02f7

    invoke-virtual {v1, v3}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v7}, Lcom/android/settings/ProgressCategory;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->CheckItemForWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_1ea

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->CheckItemWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_1ea

    const-string v1, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Name - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " peer.wfdDevInfo - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1ea

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4, v1}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ea

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ea

    const-string v2, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last n:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?? curr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?? curr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_127
    move-object v2, v0

    goto/16 :goto_70

    :cond_12a
    const-string v0, "WfdPickerActivity"

    const-string v1, "===================================================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_131
    if-eqz v2, :cond_22

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_147

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_147
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z

    if-eqz v0, :cond_22

    iget-object v0, v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_158

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_158
    iput-boolean v7, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    goto/16 :goto_22

    :cond_161
    const-string v1, "WfdPickerActivity"

    const-string v3, "show connected devices"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v3, 0x7f0d02f8

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v6, v6}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v6}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a4
    :goto_1a4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_131

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->CheckItemForWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v3

    if-eqz v3, :cond_1a4

    iget v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v3, :cond_1a4

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a4

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a4

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_1a4

    iput v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_1a4

    :cond_1ea
    move-object v0, v2

    goto/16 :goto_127
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5

    const-string v0, "WfdPickerActivity"

    const-string v1, "onPreferenceTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_20

    instance-of v0, p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_20

    move-object v0, p2

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    :cond_20
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4

    const-string v0, "WfdPickerActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .registers 4

    const-string v0, "WfdPickerActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->resume()V

    :cond_21
    return-void
.end method
