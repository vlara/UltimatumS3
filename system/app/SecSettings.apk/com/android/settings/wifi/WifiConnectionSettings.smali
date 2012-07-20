.class public Lcom/android/settings/wifi/WifiConnectionSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiConnectionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPreferenceKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wifi_connection_normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wifi_connection_downtown"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wifi_connection_home"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionSettings;->mPreferenceKeys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "connection"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x7f070064

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiConnectionSettings;->addPreferencesFromResource(I)V

    const-string v6, "mode_list"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_connection_monitoring_settings"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090031

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    :goto_3d
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConnectionSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_6d

    new-instance v3, Lcom/android/settings/wifi/WifiConnectionPreference;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiConnectionPreference;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConnectionSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v3, v6}, Lcom/android/settings/wifi/WifiConnectionPreference;->setKey(Ljava/lang/String;)V

    aget-object v6, v4, v0

    invoke-virtual {v3, v6}, Lcom/android/settings/wifi/WifiConnectionPreference;->setTitle(Ljava/lang/CharSequence;)V

    aget-object v6, v5, v0

    invoke-virtual {v3, v6}, Lcom/android/settings/wifi/WifiConnectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/settings/wifi/WifiConnectionPreference;->setSelectable(Z)V

    invoke-virtual {v3, v8}, Lcom/android/settings/wifi/WifiConnectionPreference;->setPersistent(Z)V

    invoke-virtual {v3, p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    if-ne v0, v2, :cond_67

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiConnectionPreference;->setChecked()V

    :cond_67
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_6d
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v7

    :cond_8
    const/4 v2, 0x0

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    const/4 v0, 0x0

    :goto_d
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConnectionSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2d

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConnectionSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v2, v0

    :cond_2d
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_connection_monitoring_settings"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void
.end method
