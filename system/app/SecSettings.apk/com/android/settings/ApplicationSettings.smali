.class public Lcom/android/settings/ApplicationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApplicationSettings.java"


# instance fields
.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mInstallLocation:Landroid/preference/ListPreference;

.field private mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const-string v1, "device"

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    const-string v1, "sdcard"

    goto :goto_10

    :cond_17
    if-nez v0, :cond_1c

    const-string v1, "auto"

    goto :goto_10

    :cond_1c
    const-string v1, "auto"

    goto :goto_10
.end method

.method private isAdvancedSettingsEnabled()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "advanced_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private setAdvancedSettingsEnabled(Z)V
    .registers 6

    if-eqz p1, :cond_20

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "advanced_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ADVANCED_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_20
    const/4 v1, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected handleUpdateAppInstallLocation(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_13
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_19
    const-string v0, "sdcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_13

    :cond_2c
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_13

    :cond_3e
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_13
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f07000c

    invoke-virtual {p0, v1}, Lcom/android/settings/ApplicationSettings;->addPreferencesFromResource(I)V

    const-string v1, "toggle_advanced_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/ApplicationSettings;->isAdvancedSettingsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v1, "app_install_location"

    invoke-virtual {p0, v1}, Lcom/android/settings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "set_install_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    if-nez v0, :cond_49

    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_48
    return-void

    :cond_49
    iget-object v1, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/ApplicationSettings;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/settings/ApplicationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ApplicationSettings$1;-><init>(Lcom/android/settings/ApplicationSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_48
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5

    iget-object v1, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApplicationSettings;->setAdvancedSettingsEnabled(Z)V

    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/ApplicationSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/ApplicationSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/ApplicationSettings;->isAdvancedSettingsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
