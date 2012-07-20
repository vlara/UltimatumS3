.class public Lcom/android/settings/inputmethod/VoiceInputControlSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VoiceInputControlSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private mAlarm:Landroid/preference/CheckBoxPreference;

.field private mCamera:Landroid/preference/CheckBoxPreference;

.field private mIncommingCalls:Landroid/preference/CheckBoxPreference;

.field private mMusic:Landroid/preference/CheckBoxPreference;

.field private mRadio:Landroid/preference/CheckBoxPreference;

.field private mVideo:Landroid/preference/CheckBoxPreference;

.field private mVoiceInputControlEnabler:Lcom/android/settings/inputmethod/VoiceInputControlEnabler;

.field private mVoiceInputControlObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "voice_input_control"

    iput-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/VoiceInputControlSettings$1;-><init>(Lcom/android/settings/inputmethod/VoiceInputControlSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    const-string v0, "VoiceInputControlSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    if-eqz p2, :cond_25

    const/4 v0, 0x1

    :goto_21
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/16 v9, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f070058

    invoke-virtual {p0, v5}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    instance-of v5, v1, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_4c

    move-object v3, v1

    check-cast v3, Landroid/preference/PreferenceActivity;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_29

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_4c

    :cond_29
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v7, v7, v2, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v0, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_4c
    new-instance v5, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;

    invoke-direct {v5, v1, v0}, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlEnabler:Lcom/android/settings/inputmethod/VoiceInputControlEnabler;

    const-string v5, "voice_input_control_incomming_calls"

    invoke-virtual {p0, v5}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    const-string v5, "voice_input_control_alarm"

    invoke-virtual {p0, v5}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    const-string v5, "voice_input_control_camera"

    invoke-virtual {p0, v5}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    const-string v5, "voice_input_control_music"

    invoke-virtual {p0, v5}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    const-string v5, "voice_input_control_radio"

    invoke-virtual {p0, v5}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    const-string v5, "voice_input_control_video"

    invoke-virtual {p0, v5}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVideo:Landroid/preference/CheckBoxPreference;

    const-string v4, ""

    const-string v5, "ro.product.model"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "i9300"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ae

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_ae
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlEnabler:Lcom/android/settings/inputmethod/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->pause()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_incomming_calls"

    iget-object v4, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

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
    iget-object v2, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_alarm"

    iget-object v4, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

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
    iget-object v2, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_camera"

    iget-object v4, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

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
    iget-object v2, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_music"

    iget-object v4, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

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
    iget-object v2, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_radio"

    iget-object v4, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

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
    iget-object v2, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_video"

    iget-object v4, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a9

    :goto_a4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1b

    :cond_a9
    move v0, v1

    goto :goto_a4
.end method

.method public onResume()V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlEnabler:Lcom/android/settings/inputmethod/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->resume()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "voice_input_control"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2f

    iget-object v3, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_incomming_calls"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9d

    move v0, v1

    :goto_2c
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2f
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_45

    iget-object v3, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_alarm"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9f

    move v0, v1

    :goto_42
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_45
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5b

    iget-object v3, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_camera"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a1

    move v0, v1

    :goto_58
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5b
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_71

    iget-object v3, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_music"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a3

    move v0, v1

    :goto_6e
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_71
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_87

    iget-object v3, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_radio"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a5

    move v0, v1

    :goto_84
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_87
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVideo:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control_video"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a7

    :goto_99
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_9c
    return-void

    :cond_9d
    move v0, v2

    goto :goto_2c

    :cond_9f
    move v0, v2

    goto :goto_42

    :cond_a1
    move v0, v2

    goto :goto_58

    :cond_a3
    move v0, v2

    goto :goto_6e

    :cond_a5
    move v0, v2

    goto :goto_84

    :cond_a7
    move v1, v2

    goto :goto_99
.end method
