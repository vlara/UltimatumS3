.class public Lcom/android/settings/SoftwareUpdateSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoftwareUpdateSettings.java"


# static fields
.field private static SETTING_AUTO_UPDATE:Ljava/lang/String;

.field private static SETTING_PUSH_MSG:Ljava/lang/String;

.field private static SETTING_WIFI_ONLY:Ljava/lang/String;


# instance fields
.field private WifiOnly:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "SOFTWARE_UPDATE_AUTO_UPDATE"

    sput-object v0, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    const-string v0, "SOFTWARE_UPDATE_WIFI_ONLY"

    sput-object v0, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    const-string v0, "SOFTWARE_UPDATE_PUSH_MESSAGE"

    sput-object v0, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_PUSH_MSG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private InitComponent()V
    .registers 5

    const/4 v1, 0x0

    const-string v0, "wifi_only"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v2, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_1f
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_23
    move v0, v1

    goto :goto_1f
.end method

.method private setDefaultDB()V
    .registers 5

    const/4 v3, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_30

    const-string v0, "Software Update"

    const-string v1, "set Default Settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_PUSH_MSG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_30
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Software Update"

    const-string v1, "onCreate Software Update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/android/settings/SoftwareUpdateSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/SoftwareUpdateSettings;->setDefaultDB()V

    invoke-direct {p0}, Lcom/android/settings/SoftwareUpdateSettings;->InitComponent()V

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_29
    :goto_29
    return-void

    :cond_2a
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SMLDM_BEARER"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_29
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 10

    const/16 v6, 0x20

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "update"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, "Software Update"

    const-string v4, "Software Update Checked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_26
    :goto_26
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_2b
    const-string v3, "wifi_only"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "Software Update"

    const-string v4, "Wifi only is Changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    if-eqz v0, :cond_63

    const/4 v3, 0x1

    :goto_49
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v3, "sec.fota.intent.WIFIONLY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "changed_data"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_26

    :cond_63
    const/4 v3, 0x0

    goto :goto_49
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isOTAUpgradeAllowed()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_20
    return-void
.end method
