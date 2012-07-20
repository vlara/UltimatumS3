.class public Lcom/android/settings/DrivingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DrivingModeSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DrivingModeSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarmNotification:Landroid/preference/CheckBoxPreference;

.field private mEmailNotification:Landroid/preference/CheckBoxPreference;

.field private mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

.field private mMessageNotification:Landroid/preference/CheckBoxPreference;

.field private mScheduleNotification:Landroid/preference/CheckBoxPreference;

.field private mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

.field private mVoiceMailNotification:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DrivingModeSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/DrivingModeSettings;->updateState()V

    return-void
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_13

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_12
    return-object v3

    :catch_13
    move-exception v0

    const-string v3, "DrivingModeSettings"

    const-string v4, "Package name is not found"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto :goto_12
.end method

.method private updateState()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    iget-object v1, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 10

    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_53

    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_53

    :cond_22
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0d0741

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_53
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    const-string v0, "DrivingModeSettings"

    const-string v1, "onCheckChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    if-eqz p2, :cond_14

    const/4 v0, 0x1

    :goto_10
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f07001f

    invoke-virtual {p0, v2}, Lcom/android/settings/DrivingModeSettings;->addPreferencesFromResource(I)V

    const-string v2, "incoming_call_notification"

    invoke-virtual {p0, v2}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    const-string v2, "message_notification"

    invoke-virtual {p0, v2}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    const-string v2, "email_notification"

    invoke-virtual {p0, v2}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    const-string v2, "voice_mail_notification"

    invoke-virtual {p0, v2}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    const-string v2, "alarm_notification"

    invoke-virtual {p0, v2}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    const-string v2, "schedule_notification"

    invoke-virtual {p0, v2}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    const-string v2, "unlock_screen_contents"

    invoke-virtual {p0, v2}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_63

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7e

    :cond_63
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7e
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_91

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_91
    const-string v0, "com.sec.android.app.clockpackage"

    const/4 v1, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DrivingModeSettings;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a3

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a3
    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    sget-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeSettings$SettingsObserver;->stopObserving()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    :cond_f
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_incoming_call_notification"

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1c

    :goto_18
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    move v0, v1

    goto :goto_18

    :cond_1e
    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_message_notification"

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_38

    :goto_34
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_34

    :cond_3a
    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_email_notification"

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_54

    :goto_50
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1b

    :cond_54
    move v0, v1

    goto :goto_50

    :cond_56
    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_voice_mail_notification"

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_70

    :goto_6c
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1b

    :cond_70
    move v0, v1

    goto :goto_6c

    :cond_72
    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_alarm_notification"

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8c

    :goto_88
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1b

    :cond_8c
    move v0, v1

    goto :goto_88

    :cond_8e
    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_schedule_notification"

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a9

    :goto_a4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1b

    :cond_a9
    move v0, v1

    goto :goto_a4

    :cond_ab
    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_unlock_screen_contents"

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c6

    :goto_c1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1b

    :cond_c6
    move v0, v1

    goto :goto_c1
.end method

.method public onResume()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/DrivingModeSettings;->updateState()V

    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1e

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_incoming_call_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b3

    move v0, v1

    :goto_1b
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1e
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_34

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_message_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b6

    move v0, v1

    :goto_31
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_34
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_email_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b9

    move v0, v1

    :goto_43
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5c

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_voice_mail_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_bb

    move v0, v1

    :goto_59
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5c
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_72

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_alarm_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_bd

    move v0, v1

    :goto_6f
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_72
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_schedule_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_bf

    move v0, v1

    :goto_81
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c1

    :goto_92
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    sget-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    if-nez v0, :cond_b2

    new-instance v0, Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/DrivingModeSettings$SettingsObserver;-><init>(Lcom/android/settings/DrivingModeSettings;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    sget-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeSettings$SettingsObserver;->startObserving()V

    :cond_b2
    return-void

    :cond_b3
    move v0, v2

    goto/16 :goto_1b

    :cond_b6
    move v0, v2

    goto/16 :goto_31

    :cond_b9
    move v0, v2

    goto :goto_43

    :cond_bb
    move v0, v2

    goto :goto_59

    :cond_bd
    move v0, v2

    goto :goto_6f

    :cond_bf
    move v0, v2

    goto :goto_81

    :cond_c1
    move v1, v2

    goto :goto_92
.end method
