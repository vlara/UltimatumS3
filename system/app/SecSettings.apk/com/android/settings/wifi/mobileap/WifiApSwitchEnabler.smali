.class public Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;
    }
.end annotation


# instance fields
.field private final MHS_REQUEST:I

.field private isSetChecked:Z

.field private mActivity:Ljava/lang/Object;

.field private mChangeState:Z

.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsRoaming:Z

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private mTetherHandler:Landroid/os/Handler;

.field private mWarnRoam:Landroid/app/AlertDialog;

.field mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

.field mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsRoaming:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsRoaming:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterBatteryDialog()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsRoaming:Z

    return p1
.end method

.method private afterAttentionDialog()V
    .registers 3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_10
    return-void

    :cond_11
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterBatteryDialog()V

    goto :goto_10
.end method

.method private afterBatteryDialog()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v1, :cond_e

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_d
.end method

.method private dismissDialog(I)V
    .registers 4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_2c

    :cond_4
    :goto_4
    :pswitch_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    :pswitch_19
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    :cond_24
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    goto :goto_4

    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_19
    .end packed-switch
.end method

.method private enableWifiCheckBox()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_17

    move v0, v1

    :goto_11
    if-nez v0, :cond_19

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    :goto_16
    return-void

    :cond_17
    move v0, v2

    goto :goto_11

    :cond_19
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_16
.end method

.method private handleWifiApStateChanged(I)V
    .registers 5

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_46

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    const v0, 0x7f0d01f0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    :goto_12
    return-void

    :pswitch_13
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    const v0, 0x7f0d01ee

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_12

    :pswitch_1f
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_12

    :pswitch_2f
    const v0, 0x7f0d01ef

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_12

    :pswitch_38
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_12

    :pswitch_data_46
    .packed-switch 0xa
        :pswitch_2f
        :pswitch_38
        :pswitch_13
        :pswitch_1f
    .end packed-switch
.end method

.method private initSwitchEnabler()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    return-void
.end method

.method private isSimCheck()Z
    .registers 3

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private preProvisioning()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v1, "WifiApSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimCheck() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_43

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_3d
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void

    :cond_43
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_3d
.end method

.method private setSummary(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_9
    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method private showDialog(I)V
    .registers 14

    packed-switch p1, :pswitch_data_210

    :goto_3
    return-void

    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0d027d

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0d04f0

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0d027e

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    :pswitch_31
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0d0297

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0d04a9

    new-instance v11, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0d0296

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto :goto_3

    :pswitch_73
    const/4 v9, 0x5

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    new-instance v9, Landroid/app/ProgressDialog;

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0254

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_3

    :pswitch_a3
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0d0261

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d04f0

    new-instance v11, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d04f1

    new-instance v11, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d0a36

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x1010355

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    :pswitch_e9
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0d0273

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d04f0

    new-instance v11, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d04f1

    new-instance v11, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d0a36

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x1010355

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    :pswitch_12b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ja"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cd

    const-string v6, "http://tether.docomo-de.net/dcmtrg/tether_ja.html"

    :goto_141
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0a37

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br/><a href=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0a38

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</a>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x1010355

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d0a36

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d04f0

    new-instance v11, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d04f1

    new-instance v11, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const v9, 0x102000b

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_3

    :cond_1cd
    const-string v6, "http://tether.docomo-de.net/dcmtrg/tether_en.html"

    goto/16 :goto_141

    :pswitch_1d1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0d0349

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d04f0

    new-instance v11, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d04f1

    new-instance v11, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d0452

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    :pswitch_data_210
    .packed-switch 0x1
        :pswitch_4
        :pswitch_73
        :pswitch_a3
        :pswitch_e9
        :pswitch_31
        :pswitch_12b
        :pswitch_1d1
    .end packed-switch
.end method

.method private startProvisioningIfNecessary(I)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_40

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0, v3}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_31
    :goto_31
    return-void

    :cond_32
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_31

    :cond_40
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_31
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 17

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v4, :cond_23

    aget-object v6, v0, v3

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v5, :cond_1f

    aget-object v7, v1, v2

    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1c

    const/4 v11, 0x1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1f
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_23
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_28
    if-ge v3, v4, :cond_45

    aget-object v6, v0, v3

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v5, :cond_41

    aget-object v7, v1, v2

    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3e

    const/4 v10, 0x1

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_41
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_28

    :cond_45
    if-eqz v11, :cond_51

    iget-object v12, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    :cond_50
    :goto_50
    return-void

    :cond_51
    if-eqz v10, :cond_50

    const v12, 0x7f0d01f0

    invoke-direct {p0, v12}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_50
.end method


# virtual methods
.method public getStaNum()I
    .registers 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STANUM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method isProvisioningNeeded()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    if-eqz p2, :cond_b

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-nez v2, :cond_6

    :goto_5
    return v1

    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-ne v2, v0, :cond_16

    const/4 v1, 0x1

    goto :goto_5

    :cond_16
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_5

    :cond_26
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_5
.end method

.method public pause()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_11
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1a
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    return-void
.end method

.method public resume()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_12
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1b
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method public secSetSoftapEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getStaNum()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_5

    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_5
.end method

.method public sendSetChecked(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_c
.end method

.method public setChecked(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_18
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_12
    return-void
.end method

.method public setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V
    .registers 4

    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "setInformation: SettingsPreferenceFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    return-void
.end method

.method public setSoftapEnabled(Z)Z
    .registers 11

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_21

    const/4 v6, 0x2

    if-eq v3, v6, :cond_17

    const/4 v6, 0x3

    if-ne v3, v6, :cond_21

    :cond_17
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v6, "wifi_saved_state"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_21
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v8, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    :goto_2c
    if-eqz p1, :cond_50

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_50

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v6, :cond_45

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->sendSetChecked(Z)V

    :cond_45
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    :goto_48
    return v4

    :cond_49
    const v6, 0x7f0d01f0

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_2c

    :cond_50
    if-nez p1, :cond_65

    const/4 v2, 0x0

    :try_start_53
    const-string v6, "wifi_saved_state"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_53 .. :try_end_58} :catch_67

    move-result v2

    :goto_59
    if-ne v2, v5, :cond_65

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v6, "wifi_saved_state"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_65
    move v4, v5

    goto :goto_48

    :catch_67
    move-exception v6

    goto :goto_59
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .registers 6

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x10404ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0344

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_22

    :goto_18
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_22
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_18
.end method
