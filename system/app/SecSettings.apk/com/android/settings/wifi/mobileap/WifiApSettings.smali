.class public Lcom/android/settings/wifi/mobileap/WifiApSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApSettings.java"


# instance fields
.field private final MHS_REQUEST:I

.field private isRoaming:Z

.field private isShowPassword:I

.field mAllowedMenuItem:Landroid/view/MenuItem;

.field public mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mConfigureMenuItem:Landroid/view/MenuItem;

.field private mConnectedDevices:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mContinueOpen:Z

.field private mDeviceInfo:Landroid/preference/PreferenceScreen;

.field private mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

.field private mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

.field private mDismissDialog:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHowTo:Landroid/preference/Preference;

.field private mHowToCategory:Landroid/preference/PreferenceCategory;

.field private mIsTablet:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenType:Z

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->MHS_REQUEST:I

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isShowPassword:I

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isRoaming:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method private getTimeoutIndexFromValue(I)I
    .registers 3

    sparse-switch p1, :sswitch_data_12

    const/4 v0, -0x1

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_7
    const/4 v0, 0x1

    goto :goto_4

    :sswitch_9
    const/4 v0, 0x2

    goto :goto_4

    :sswitch_b
    const/4 v0, 0x3

    goto :goto_4

    :sswitch_d
    const/4 v0, 0x4

    goto :goto_4

    :sswitch_f
    const/4 v0, 0x5

    goto :goto_4

    nop

    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_5
        0x12c -> :sswitch_7
        0x258 -> :sswitch_9
        0x4b0 -> :sswitch_b
        0x708 -> :sswitch_d
        0xe10 -> :sswitch_f
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .registers 3

    const/16 v0, 0x4b0

    packed-switch p1, :pswitch_data_14

    :goto_5
    :pswitch_5
    return v0

    :pswitch_6
    const/4 v0, 0x0

    goto :goto_5

    :pswitch_8
    const/16 v0, 0x12c

    goto :goto_5

    :pswitch_b
    const/16 v0, 0x258

    goto :goto_5

    :pswitch_e
    const/16 v0, 0x708

    goto :goto_5

    :pswitch_11
    const/16 v0, 0xe10

    goto :goto_5

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_b
        :pswitch_5
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private getTimeoutValueFromPreference()I
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_11
    const/16 v0, 0x258

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "CONNECTION_TIMEOUT"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    :cond_27
    :goto_27
    return-void

    :cond_28
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "wifi_state"

    const/16 v1, 0xe

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_51

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v0, :cond_27

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_27

    :cond_51
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_27
.end method

.method private isHidingHeaders()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_19

    move-object v1, v0

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    const/4 v2, 0x1

    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private saveTimeoutPreference(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_14
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setHelpPreference(Ljava/lang/Boolean;)V
    .registers 6

    const/4 v3, -0x1

    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHelpPreference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setOrder(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOrder(I)V

    :cond_43
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0d0278

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    :goto_66
    return-void

    :cond_67
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setOrder(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOrder(I)V

    :cond_8b
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0d026e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    goto :goto_66
.end method

.method private setTimeout(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->saveTimeoutPreference(I)V

    return-void
.end method

.method private updateConnectedDevices()V
    .registers 24

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v18

    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    iput v2, v15, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v15}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    if-eqz v18, :cond_fe

    if-lez v16, :cond_fe

    const/4 v7, 0x0

    const-string v2, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    :try_start_36
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v22, "/data/misc/dhcp/dnsmasq.leases"

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x2000

    move/from16 v0, v22

    invoke-direct {v8, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_f2
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_48} :catch_11e

    :cond_48
    :goto_48
    :try_start_48
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e0

    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    :goto_55
    move/from16 v0, v16

    if-ge v13, v0, :cond_48

    array-length v2, v11

    const/16 v22, 0x4

    move/from16 v0, v22

    if-lt v2, v0, :cond_dc

    const/4 v2, 0x0

    aget-object v2, v11, v2

    if-eqz v2, :cond_dc

    const/4 v2, 0x1

    aget-object v2, v11, v2

    if-eqz v2, :cond_dc

    const/4 v2, 0x2

    aget-object v2, v11, v2

    if-eqz v2, :cond_dc

    const/4 v2, 0x3

    aget-object v2, v11, v2

    if-eqz v2, :cond_dc

    move/from16 v0, v20

    if-ge v13, v0, :cond_dc

    aget-object v2, v19, v13

    if-eqz v2, :cond_dc

    const/4 v2, 0x1

    aget-object v2, v11, v2

    aget-object v22, v19, v13

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dc

    const/4 v2, 0x3

    aget-object v2, v11, v2

    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    const v2, 0x7f0d0277

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_9f
    aget-object v4, v19, v13

    const/4 v2, 0x2

    aget-object v5, v11, v2

    const/4 v2, 0x0

    aget-object v6, v11, v2

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catchall {:try_start_48 .. :try_end_b3} :catchall_11b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_b3} :catch_b4

    goto :goto_48

    :catch_b4
    move-exception v12

    move-object v7, v8

    :goto_b6
    :try_start_b6
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_f2

    if-eqz v7, :cond_be

    :try_start_bb
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_ed

    :cond_be
    :goto_be
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_c2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_c2

    :cond_d8
    const/4 v2, 0x3

    :try_start_d9
    aget-object v3, v11, v2
    :try_end_db
    .catchall {:try_start_d9 .. :try_end_db} :catchall_11b
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_db} :catch_b4

    goto :goto_9f

    :cond_dc
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_55

    :cond_e0
    if-eqz v8, :cond_e5

    :try_start_e2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e7

    :cond_e5
    move-object v7, v8

    goto :goto_be

    :catch_e7
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    goto :goto_be

    :catch_ed
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_be

    :catchall_f2
    move-exception v2

    :goto_f3
    if-eqz v7, :cond_f8

    :try_start_f5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_f9

    :cond_f8
    :goto_f8
    throw v2

    :catch_f9
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f8

    :cond_fe
    new-instance v17, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0287

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_11a
    return-void

    :catchall_11b
    move-exception v2

    move-object v7, v8

    goto :goto_f3

    :catch_11e
    move-exception v12

    goto :goto_b6
.end method

.method private updateOptionsMenuIcon(Z)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_16

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02006b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_29

    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0201bc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_16

    :cond_35
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_29
.end method

.method private updateStatus()V
    .registers 10

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_67

    :cond_21
    const v1, 0x7f0d028d

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "#94b4c3"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v8

    const-string v3, "#94b4c3"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4c
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_55
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    :cond_66
    :goto_66
    return-void

    :cond_67
    const v1, 0x7f0d028c

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "#94b4c3"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "#94b4c3"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    :cond_85
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0d0263

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    goto :goto_66
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 11

    const/16 v6, 0x10

    const/4 v3, 0x1

    const/4 v8, -0x2

    const/4 v4, 0x0

    const v2, 0x7f070062

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_b1

    move v2, v3

    :goto_23
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v2, :cond_b4

    const-string v2, "enable_switch_wifi_ap"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-direct {v2, v0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    :goto_41
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    const-string v2, "wifi_ap_connected_devices"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    const-string v2, "wifi_ap_howto_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "wifi_ap_howto"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    const v4, 0x7f04009a

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHasOptionsMenu(Z)V

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_b1
    move v2, v4

    goto/16 :goto_23

    :cond_b4
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0e0002

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-direct {v2, v0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    goto/16 :goto_41
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v2, 0x1

    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_11

    const/4 v0, -0x1

    if-ne p2, v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_11

    :cond_18
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_11
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v0, :cond_d

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_a
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    :cond_d
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_6c

    new-instance v1, Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    :try_start_3b
    const-string v1, "wifi_ap_show_passwd"

    const/4 v2, 0x0

    invoke-static {v12, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isShowPassword:I
    :try_end_46
    .catch Ljava/lang/NullPointerException; {:try_start_3b .. :try_end_46} :catch_63

    :goto_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isShowPassword:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6a

    const/4 v1, 0x1

    :goto_52
    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/WifiApDialog;->setCheckShowPassword(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    :goto_62
    return-object v1

    :catch_63
    move-exception v14

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isShowPassword:I

    goto :goto_46

    :cond_6a
    const/4 v1, 0x0

    goto :goto_52

    :cond_6c
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_13a

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromPreference()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutIndexFromValue(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    const v1, 0x7f0400d6

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const v1, 0x7f0a0285

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v18

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v1, :cond_128

    const v1, 0x7f0a0033

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v9, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0400c1

    const v3, 0x1020014

    move-object/from16 v0, v18

    invoke-direct {v9, v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    :goto_c5
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v17, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0271

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d04f0

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d010e

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_62

    :cond_128
    new-instance v9, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v2, 0x10900fe

    const v3, 0x1020014

    move-object/from16 v0, v18

    invoke-direct {v9, v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_c5

    :cond_13a
    const/4 v1, 0x7

    move/from16 v0, p1

    if-ne v0, v1, :cond_1b4

    const-string v1, "WifiApSettings"

    const-string v2, "create dialog  DIALOG_OPEN_SECURITY_WARNING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0a36

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0400d5

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v1, :cond_17b

    const v1, 0x7f0a0282

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_17b
    const v1, 0x7f0a0283

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    const v1, 0x7f0a0284

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0d04f1

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v8, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_62

    :cond_1b4
    const/4 v1, 0x0

    goto/16 :goto_62
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 11

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7f0d026c

    invoke-interface {p1, v3, v6, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f0201c6

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v4, 0x7f0d026d

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v4, :cond_60

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_29
    const/4 v4, 0x3

    const v5, 0x7f0d026b

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v4, 0x7f0d026e

    invoke-interface {p1, v3, v7, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v4, 0x7f0201be

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v4, :cond_5c

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_66

    :goto_59
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    :cond_5c
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_60
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_29

    :cond_66
    move v2, v3

    goto :goto_59
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10

    const/16 v6, 0x64

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_86

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_f
    return v0

    :pswitch_10
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    iput-boolean v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    move v0, v7

    goto :goto_f

    :pswitch_1a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    move v0, v7

    goto :goto_f

    :pswitch_20
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d026d

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_3c
    move v0, v7

    goto :goto_f

    :cond_3e
    const-class v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_3c

    :pswitch_49
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d029c

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_65
    move v0, v7

    goto :goto_f

    :pswitch_67
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_83

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApHelpScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d026e

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_83
    move v0, v7

    goto :goto_f

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1a
        :pswitch_10
        :pswitch_49
        :pswitch_67
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveIsShowPassword()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    :goto_d
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isShowPassword:I

    const-string v1, "wifi_ap_show_passwd"

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isShowPassword:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_17
    const/4 v1, 0x0

    goto :goto_d
.end method
