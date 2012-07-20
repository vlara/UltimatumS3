.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;
    }
.end annotation


# static fields
.field private static mGateTraceTag:Ljava/lang/String;


# instance fields
.field private bCWWaitForTurnOff:Z

.field mApDisableDialog:Landroid/app/AlertDialog;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field mVerizonDialog:Landroid/app/AlertDialog;

.field mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

.field private mWifiPrevState:I

.field private mWifiState:I

.field nCWStoppingType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "GATE"

    sput-object v0, Lcom/android/settings/wifi/WifiEnabler;->mGateTraceTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiEnabler;->bCWWaitForTurnOff:Z

    iput v2, p0, Lcom/android/settings/wifi/WifiEnabler;->nCWStoppingType:I

    iput v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiState:I

    iput v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPrevState:I

    new-instance v1, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->showDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiEnabler;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setWifiEnable(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiEnabler;)Landroid/widget/Switch;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiEnabler;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkWifiTetheringAndDisable()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_f

    const/16 v2, 0xd

    if-ne v0, v2, :cond_13

    :cond_f
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->showDialog(I)V

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private dismissDialog(I)V
    .registers 4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_42

    :cond_4
    :goto_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    goto :goto_4

    :pswitch_19
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    :pswitch_2d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    goto :goto_4

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_5
        :pswitch_19
        :pswitch_2d
    .end packed-switch
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 4

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_11

    sget-object v0, Lcom/android/settings/wifi/WifiEnabler;->mGateTraceTag:Ljava/lang/String;

    const-string v1, "<GATE-M> WIFI_NETWORK_CONNECTED </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1c

    sget-object v0, Lcom/android/settings/wifi/WifiEnabler;->mGateTraceTag:Ljava/lang/String;

    const-string v1, "<GATE-M> WIFI_NETWORK_DISCONNECTED </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .registers 3

    packed-switch p1, :pswitch_data_a

    :goto_3
    :pswitch_3
    return-void

    :pswitch_4
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    goto :goto_3

    nop

    :pswitch_data_a
    .packed-switch 0xa
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_4a

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    :goto_d
    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_d

    :pswitch_14
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/settings/wifi/WifiEnabler;->mGateTraceTag:Ljava/lang/String;

    const-string v1, "<GATE-M> WIFI_ON </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_d

    :pswitch_2d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_d

    :pswitch_33
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/android/settings/wifi/WifiEnabler;->mGateTraceTag:Ljava/lang/String;

    const-string v1, "<GATE-M> WIFI_OFF </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_d

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_33
        :pswitch_e
        :pswitch_14
    .end packed-switch
.end method

.method private setSwitchChecked(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    :cond_13
    return-void
.end method

.method private setWifiEnable(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d01f0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_e
.end method

.method private showDialog(I)V
    .registers 13

    const v10, 0x1040014

    const v9, 0x1010355

    packed-switch p1, :pswitch_data_de

    :goto_9
    return-void

    :pswitch_a
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0d0253

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/wifi/WifiEnabler$2;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiEnabler$2;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v3, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v7, 0x104

    new-instance v8, Lcom/android/settings/wifi/WifiEnabler$3;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiEnabler$3;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v3, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_9

    :pswitch_45
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    new-instance v7, Landroid/app/ProgressDialog;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0255

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    goto :goto_9

    :pswitch_6a
    iget-object v7, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x7f04000b

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/WifiEnabler$4;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiEnabler$4;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0a0020

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0d02c5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    const v7, 0x7f0a0021

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v7, Lcom/android/settings/wifi/WifiEnabler$5;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiEnabler$5;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a001b

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v7, Lcom/android/settings/wifi/WifiEnabler$6;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiEnabler$6;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x3

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_9

    nop

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_a
        :pswitch_45
        :pswitch_6a
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_6

    :cond_15
    if-eqz p2, :cond_33

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d01f1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_6

    :cond_33
    if-eqz p2, :cond_41

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkWifiTetheringAndDisable()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_6

    :cond_41
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiEnabler;->setWifiEnable(Z)V

    goto :goto_6
.end method

.method public pause()V
    .registers 5

    const/4 v3, 0x1

    const-string v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    goto :goto_2d
.end method

.method public resume()V
    .registers 4

    const-string v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2c
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_34

    move v1, v3

    :goto_1e
    if-ne v2, v3, :cond_36

    move v0, v3

    :goto_21
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v5

    if-nez v5, :cond_38

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_6

    :cond_34
    move v1, v4

    goto :goto_1e

    :cond_36
    move v0, v4

    goto :goto_21

    :cond_38
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_3e

    if-eqz v0, :cond_3f

    :cond_3e
    move v4, v3

    :cond_3f
    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_6
.end method
