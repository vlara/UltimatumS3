.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

.field private mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

.field private mWifiP2pSwitchEnabler:Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_1a
    const/4 v1, 0x0

    goto :goto_7
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1d

    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    :cond_1d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 26

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f07006c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v1, "toggle_airplane"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    const-string v1, "toggle_nfc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    const-string v1, "toggle_nfc_rw_p2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    const-string v1, "android_beam_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    const-string v1, "s_beam_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    const-string v1, "toggle_wifi_p2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    const-string v1, "wifi_p2p_settings_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    const-string v1, "roaming_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    const-string v1, "rcs_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceScreen;

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v1, "CHN"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    const-string v1, "CHM"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    const-string v1, "CHU"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    :cond_95
    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_aa

    :cond_9b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "sleeping_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_aa
    new-instance v1, Lcom/android/settings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, v2, v4}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2a4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    new-instance v1, Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    :goto_d1
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1110043

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_2b3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    const-string v1, "wimax_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    if-eqz v15, :cond_fb

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_fb
    :goto_fb
    if-eqz v20, :cond_107

    const-string v1, "wifi"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_145

    :cond_107
    const-string v1, "vpn_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v1, "CHM"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    const-string v1, "kies_via_wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v1, "tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v1, "wifi_p2p_settings_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_145
    if-eqz v20, :cond_151

    const-string v1, "bluetooth"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_151

    :cond_151
    if-eqz v20, :cond_15d

    const-string v1, "nfc"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_193

    :cond_15d
    const-string v1, "toggle_nfc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_179

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    :cond_179
    const-string v1, "android_beam_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v1, "s_beam_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "android_beam_settings"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_193
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1ce

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    if-eqz v6, :cond_1b8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1b8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1c9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1c9
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    :cond_1ce
    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "mobile_network_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1e3
    :try_start_1e3
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.sec.android.app.kieswifi"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1f0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e3 .. :try_end_1f0} :catch_2d0

    :cond_1f0
    :goto_1f0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.wifi.direct"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "wifi_p2p_settings_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_214
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "allshare_cast_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v1, "proxy_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    const-string v1, "device_policy"

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2fc

    const/4 v1, 0x1

    :goto_241
    invoke-virtual {v12, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v1, "connectivity"

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-eqz v1, :cond_258

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2ff

    :cond_258
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_267
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Setting_EnableRoamingMenu"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_284

    if-eqz v17, :cond_284

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "roaming_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_284
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_310

    const-string v1, "parent"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    new-instance v1, Lcom/android/settings/rcs/RcsSettings;

    invoke-direct {v1, v2, v14}, Lcom/android/settings/rcs/RcsSettings;-><init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    :cond_2a3
    :goto_2a3
    return-void

    :cond_2a4
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto/16 :goto_d1

    :cond_2b3
    if-eqz v20, :cond_2c1

    const-string v1, "wimax"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fb

    if-eqz v9, :cond_fb

    :cond_2c1
    const-string v1, "wimax_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    const-string v1, "toggle_airplane"

    invoke-virtual {v15, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_fb

    :catch_2d0
    move-exception v8

    const-string v1, "kies_via_wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_1f0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1f0

    :cond_2e6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    move-object/from16 v0, v22

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    goto/16 :goto_214

    :cond_2fc
    const/4 v1, 0x0

    goto/16 :goto_241

    :cond_2ff
    const-string v1, "tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-static {v7}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_267

    :cond_310
    if-eqz v16, :cond_2a3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2a3
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    :cond_11
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->pause()V

    :cond_1a
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v0}, Lcom/android/settings/rcs/RcsSettings;->unregisterRcsProviderObserver()V

    :cond_23
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 10

    const/4 v6, 0x0

    const/4 v3, 0x1

    const-string v4, "mobile_network_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne p2, v4, :cond_3d

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-ne v4, v3, :cond_3d

    if-eqz v1, :cond_1c

    if-ne v1, v3, :cond_3d

    :cond_1c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0744

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0745

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_3c
    return v3

    :cond_3d
    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_58

    const-string v4, "ril.cdma.inecmmode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3c

    :cond_58
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_3c
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v2}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    :cond_11
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->resume()V

    :cond_1a
    :try_start_1a
    const-string v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v2, "vpn_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isVpnAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_33} :catch_42

    :goto_33
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v2}, Lcom/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v2}, Lcom/android/settings/rcs/RcsSettings;->registerRcsProviderObserver()V

    :cond_41
    return-void

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method
