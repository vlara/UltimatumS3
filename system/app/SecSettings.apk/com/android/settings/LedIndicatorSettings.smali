.class public Lcom/android/settings/LedIndicatorSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedIndicatorSettings.java"


# instance fields
.field private misCharing:Landroid/preference/CheckBoxPreference;

.field private misIncomingNotification:Landroid/preference/CheckBoxPreference;

.field private misLowBattery:Landroid/preference/CheckBoxPreference;

.field private misMissedEvent:Landroid/preference/CheckBoxPreference;


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

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/android/settings/LedIndicatorSettings;->addPreferencesFromResource(I)V

    const-string v1, "led_indicator_charging_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    const-string v1, "led_indicator_low_battery_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    const-string v1, "led_indicator_missed_event_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    const-string v1, "led_indicator_incoming_notification_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "LedIndicatorSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_charing"

    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_19

    move v0, v1

    :cond_19
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1c
    return v1

    :cond_1d
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_low_battery"

    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_34

    move v0, v1

    :cond_34
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1c

    :cond_38
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_missed_event"

    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4f

    move v0, v1

    :cond_4f
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1c

    :cond_53
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_incoming_notification"

    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6a

    move v0, v1

    :cond_6a
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1c

    :cond_6e
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1c
.end method

.method public onResume()V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "LedIndicatorSettings"

    const-string v3, "onResume() "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_charing"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_54

    move v0, v1

    :goto_1b
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_low_battery"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_56

    move v0, v1

    :goto_2d
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_missed_event"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_58

    move v0, v1

    :goto_3f
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_incoming_notification"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5a

    :goto_50
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_54
    move v0, v2

    goto :goto_1b

    :cond_56
    move v0, v2

    goto :goto_2d

    :cond_58
    move v0, v2

    goto :goto_3f

    :cond_5a
    move v1, v2

    goto :goto_50
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    const-string v0, "LedIndicatorSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
