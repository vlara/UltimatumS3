.class public Lcom/android/settings/wifi/AdvancedProxySettings;
.super Landroid/preference/PreferenceActivity;
.source "AdvancedProxySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPreferenceKeys:[Ljava/lang/String;

.field private mSettingNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "wifi_exception_proxy1"

    aput-object v1, v0, v2

    const-string v1, "wifi_exception_proxy2"

    aput-object v1, v0, v3

    const-string v1, "wifi_exception_proxy3"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "wifi_exception_proxy1"

    aput-object v1, v0, v2

    const-string v1, "wifi_exception_proxy2"

    aput-object v1, v0, v3

    const-string v1, "wifi_exception_proxy3"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    return-void
.end method

.method private updateSettingsProvider()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedProxySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_24

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedProxySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_21

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_24
    return-void
.end method

.method private updateUi()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedProxySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2f

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedProxySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2c

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2f
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f070060

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedProxySettings;->addPreferencesFromResource(I)V

    const/4 v0, 0x0

    :goto_a
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1f

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedProxySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedProxySettings;->updateSettingsProvider()V

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v5

    :cond_8
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_f
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedProxySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedProxySettings;->updateUi()V

    return-void
.end method
