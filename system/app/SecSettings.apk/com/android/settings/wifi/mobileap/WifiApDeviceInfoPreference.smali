.class public Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;
.super Landroid/preference/Preference;
.source "WifiApDeviceInfoPreference.java"


# instance fields
.field private mAllowAll:Z

.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V
    .registers 7

    const v3, 0x7f0d0265

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const v0, 0x7f04009b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setLayoutResource(I)V

    if-nez p2, :cond_24

    const v0, 0x7f0d0263

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(I)V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    :goto_23
    return-void

    :cond_24
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v0, v2, :cond_37

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    const v0, 0x7f0d0267

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    goto :goto_23

    :cond_37
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    goto :goto_23
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Lcom/android/settings/SettingsPreferenceFragment;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V

    return-void
.end method

.method private changeAllowPolicy()V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-nez v1, :cond_3d

    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x3

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const v1, 0x7f0d0265

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    :goto_26
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_3c

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_3c
    return-void

    :cond_3d
    move v1, v3

    goto :goto_7

    :cond_3f
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const v1, 0x7f0d0267

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    goto :goto_26
.end method

.method private showDialog()V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d027e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0298

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d04f0

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d010e

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f0a01a1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
