.class public Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MenuPowerSavingModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private iBackgroundColor:I

.field private iCpuPowerSavinge:I

.field private iDisplayPowerSaving:I

.field private iOffHapticFeedback:I

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mBackgroundColor:Landroid/preference/CheckBoxPreference;

.field private mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

.field private mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

.field private mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private mPowerSavingObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;-><init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V

    return-void
.end method

.method private updateUIPowerSaving()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MenuPowerSavingModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powersavingState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3b

    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_3a
    return-void

    :cond_3b
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_3a
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .registers 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_switch"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_cpu_clock"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_display"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_background_colour"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_haptic_feedback"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v5, "MenuPowerSavingModeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", cpu : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", display : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", back : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", haptic : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_8c

    if-nez v1, :cond_96

    if-nez v2, :cond_96

    if-nez v0, :cond_96

    if-nez v3, :cond_96

    move v5, v6

    :goto_8b
    return v5

    :cond_8c
    if-nez v1, :cond_94

    if-nez v2, :cond_94

    if-nez v0, :cond_94

    move v5, v6

    goto :goto_8b

    :cond_94
    move v5, v7

    goto :goto_8b

    :cond_96
    move v5, v7

    goto :goto_8b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/16 v7, 0x10

    const/4 v9, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v3, "MenuPowerSavingModeSettings"

    const-string v6, "onCreate() "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f07002f

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_5a

    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_33

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_5a

    :cond_33
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e0002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_5a
    new-instance v3, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    iget-object v6, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v6}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    const-string v3, "power_saving_cpu"

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "psm_cpu_clock"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_123

    move v3, v4

    :goto_7c
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v3, "power_saving_display"

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "psm_display"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_126

    move v3, v4

    :goto_98
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v3, "power_saving_background_color"

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "psm_background_colour"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_129

    move v3, v4

    :goto_b4
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c9

    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0d0812

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :cond_c9
    const-string v3, "power_saving_haptic"

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_haptic_feedback"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_12b

    :goto_e1
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_12d

    :goto_f2
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_cpu_clock"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iCpuPowerSavinge:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_display"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iDisplayPowerSaving:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_background_colour"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iBackgroundColor:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_haptic_feedback"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iOffHapticFeedback:I

    return-void

    :cond_123
    move v3, v5

    goto/16 :goto_7c

    :cond_126
    move v3, v5

    goto/16 :goto_98

    :cond_129
    move v3, v5

    goto :goto_b4

    :cond_12b
    move v4, v5

    goto :goto_e1

    :cond_12d
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_f2
.end method

.method public onPause()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "MenuPowerSavingModeSettings"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iCpuPowerSavinge:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_cpu_clock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_44

    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iDisplayPowerSaving:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_display"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_44

    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iBackgroundColor:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_background_colour"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_44

    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iOffHapticFeedback:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_haptic_feedback"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_59

    :cond_44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_59
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0a88

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_84
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :cond_93
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_84
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_cpu_clock"

    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_19
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_27
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_2c
    move v0, v2

    goto :goto_19

    :cond_2e
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_display"

    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v1

    :goto_45
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1c

    :cond_49
    move v0, v2

    goto :goto_45

    :cond_4b
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_background_colour"

    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_66

    move v0, v1

    :goto_62
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1c

    :cond_66
    move v0, v2

    goto :goto_62

    :cond_68
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_haptic_feedback"

    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_83

    move v0, v1

    :goto_7f
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1c

    :cond_83
    move v0, v2

    goto :goto_7f

    :cond_85
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_27
.end method

.method public onResume()V
    .registers 5

    const/4 v3, 0x1

    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psm_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
