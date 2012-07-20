.class public Lcom/android/settings/PhoneVibration;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PhoneVibration.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field private mCreatePattern:Landroid/preference/PreferenceScreen;

.field select_pattern_value:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/PhoneVibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PhoneVibration;->mContentResolver:Landroid/content/ContentResolver;

    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/android/settings/PhoneVibration;->addPreferencesFromResource(I)V

    const-string v0, "create_pattern"

    invoke-virtual {p0, v0}, Lcom/android/settings/PhoneVibration;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PhoneVibration;->mCreatePattern:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PhoneVibration;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_pattern_vibration"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PhoneVibration;->select_pattern_value:I

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    const-string v1, "PhoneVibration"

    const-string v2, "onPreferenceChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5

    const-string v0, "PhoneVibration"

    const-string v1, "onPreferenceTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
