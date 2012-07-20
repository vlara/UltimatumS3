.class public Lcom/android/settings/wifi/IwlanEnabler;
.super Ljava/lang/Object;
.source "IwlanEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final IWLAN_FREE_SPACE:Ljava/lang/Long;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDefaultPdgDomainName:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsVpnConnected:Z

.field private mIsWifiConnected:Z

.field private mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private mIwlanNetworks:Landroid/preference/PreferenceCategory;

.field private mIwlandState:I

.field private mPdgDomainName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2800

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/IwlanEnabler;->IWLAN_FREE_SPACE:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsVpnConnected:Z

    new-instance v1, Lcom/android/settings/wifi/IwlanEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/IwlanEnabler$1;-><init>(Lcom/android/settings/wifi/IwlanEnabler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "iwlan_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const-string v1, "iwlan_networks"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanNetworks:Landroid/preference/PreferenceCategory;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "vpn.connectivity"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "action.iwlan.connectivity"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/IwlanEnabler;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/wifi/IwlanEnabler;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/IwlanEnabler;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/IwlanEnabler;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/IwlanEnabler;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/wifi/IwlanEnabler;->isAvailableDataStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/IwlanEnabler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsVpnConnected:Z

    return p1
.end method

.method private isAvailableDataStorage()Z
    .registers 6

    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-long v0, v3

    sget-object v3, Lcom/android/settings/wifi/IwlanEnabler;->IWLAN_FREE_SPACE:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_23

    const/4 v3, 0x0

    :goto_22
    return v3

    :cond_23
    const/4 v3, 0x1

    goto :goto_22
.end method

.method private isDeamonRunning(Ljava/lang/String;)Z
    .registers 12

    const/4 v6, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ps "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    const/16 v7, 0x200

    new-array v4, v7, [B

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_42

    new-instance v3, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v5}, Ljava/lang/String;-><init>([BII)V

    const/4 v1, 0x0

    :goto_31
    add-int/lit8 v7, v5, -0x6

    if-ge v1, v7, :cond_42

    add-int/lit8 v7, v1, 0x6

    invoke-virtual {v3, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3e} :catch_46

    move-result v7

    if-eqz v7, :cond_43

    const/4 v6, 0x1

    :cond_42
    :goto_42
    return v6

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42
.end method

.method private isWifiConnected()Z
    .registers 5

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    :goto_17
    iget-boolean v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    return v2

    :cond_1a
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    goto :goto_17
.end method

.method private setIwlanEnabled(Z)V
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    if-eqz p1, :cond_1e

    new-instance v0, Landroid/content/Intent;

    const-string v2, "actoin.IWLAN_ACTIVITY_REQUEST_CONNECT_IWLAN_NETWORK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_15
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :goto_1d
    return-void

    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v2, "actoin.IWLAN_ACTIVITY_REQUEST_DISCONNECT_IWLAN_NETWORK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_15

    :cond_2b
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0a3e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3e
    iget v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0a44

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_63
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_69
    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    goto :goto_3e

    :cond_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0a43

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_63
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0a54

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/IwlanEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/IwlanEnabler$2;-><init>(Lcom/android/settings/wifi/IwlanEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getPdgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0a3e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_11
    return-object p1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/IwlanEnabler;->setIwlanEnabled(Z)V

    const-string v0, "racoon"

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/IwlanEnabler;->isDeamonRunning(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsVpnConnected:Z

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.iwlan.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onStop()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_20

    :goto_7
    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.IWLAN_ACTIVITY_REQUEST_GET_STATE_IWLAN_NETWORKS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra.IWLAN_CONNECTING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_20
    move-exception v1

    goto :goto_7
.end method

.method public updataIwlanNetworks(Landroid/content/Intent;)V
    .registers 18

    const/4 v11, 0x0

    const-string v12, "extra.IWLAN_NETWORKS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanNetworks:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->removeAll()V

    const/4 v7, 0x0

    const-string v12, "extra.IWLAN_NETWORKS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :try_start_1b
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_20} :catch_ac

    :try_start_20
    const-string v12, "SELECTED"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_30

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    :cond_30
    const-string v12, "DEFAULT"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_40

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    :cond_40
    const-string v12, "LIST"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_b0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_b0

    const/4 v4, 0x0

    :goto_4f
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_b0

    const-string v12, "SELECTED"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_93

    new-instance v5, Lcom/android/settings/wifi/IwlanNetwork;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "DEFAULT"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v13, v14, v15}, Lcom/android/settings/wifi/IwlanNetwork;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/lang/String;)V

    :goto_7e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanNetworks:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/android/settings/wifi/IwlanNetwork;->setDependency(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_93
    new-instance v5, Lcom/android/settings/wifi/IwlanNetwork;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const/4 v14, 0x0

    const-string v15, "DEFAULT"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v13, v14, v15}, Lcom/android/settings/wifi/IwlanNetwork;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/lang/String;)V
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_ab} :catch_229

    goto :goto_7e

    :catch_ac
    move-exception v3

    :goto_ad
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_b0
    const-string v12, "extra.iwlan.state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c7

    const-string v12, "extra.iwlan.state"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    :cond_c7
    const-string v12, "extra.IWLAN_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_dd

    const-string v12, "extra.IWLAN_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    :cond_dd
    const-string v12, "extra.IWLAN_CHECKBOX_SUMMARY_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19d

    const-string v12, "extra.IWLAN_CHECKBOX_SUMMARY_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/IwlanEnabler;->getPdgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_f5
    const-string v12, "extra.IWLAN_CHECKBOX_SUMMARY_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "extra.IWLAN_CHECKBOX_SUMMARY_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_11e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    if-gtz v12, :cond_1e1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    if-eqz v12, :cond_1d7

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/IwlanEnabler;->isAvailableDataStorage()Z

    move-result v12

    if-eqz v12, :cond_1cd

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_13f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_147
    :goto_147
    const-string v12, "extra.IWLAN_CHECKBOX_ENABLED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_161

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const-string v13, "extra.IWLAN_CHECKBOX_ENABLED"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_161
    const-string v12, "extra.IWLAN_CHECKBOX_CHECKED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_185

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_185

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const-string v13, "extra.IWLAN_CHECKBOX_CHECKED"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_185
    const-string v12, "extra.IWLAN_ALERTDIALOG_MESSAGE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19c

    const-string v12, "extra.IWLAN_ALERTDIALOG_MESSAGE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/wifi/IwlanEnabler;->showAlertDialog(Ljava/lang/String;)V

    :cond_19c
    return-void

    :cond_19d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/IwlanEnabler;->getPdgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_f5

    :cond_1a9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v14, 0x7f0d0a45

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_11e

    :cond_1cd
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_13f

    :cond_1d7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_13f

    :cond_1e1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1ef

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_201

    :cond_1ef
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_147

    :cond_201
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_147

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/IwlanEnabler;->isAvailableDataStorage()Z

    move-result v12

    if-eqz v12, :cond_220

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_147

    :cond_220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_216

    :catch_229
    move-exception v3

    move-object v7, v8

    goto/16 :goto_ad
.end method
