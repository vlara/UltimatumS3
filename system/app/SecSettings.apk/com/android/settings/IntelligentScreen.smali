.class public Lcom/android/settings/IntelligentScreen;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IntelligentScreen.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mHelp:Landroid/preference/PreferenceScreen;

.field private mRotation:Landroid/preference/CheckBoxPreference;

.field private mSleep:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/IntelligentScreen$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/IntelligentScreen$1;-><init>(Lcom/android/settings/IntelligentScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/IntelligentScreen;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private CheckingAccelerometerRotationState()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IntelligentScreen;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/IntelligentScreen;->CheckingAccelerometerRotationState()V

    return-void
.end method

.method private updateState()V
    .registers 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/IntelligentScreen;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "intelligent_screen_mode"

    invoke-static {v3, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5d

    move v4, v5

    :goto_13
    invoke-virtual {p0}, Lcom/android/settings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accelerometer_rotation"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v7, p0, Lcom/android/settings/IntelligentScreen;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v4}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "intelligent_sleep_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5f

    move v2, v5

    :goto_2f
    invoke-virtual {p0}, Lcom/android/settings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "intelligent_rotation_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_61

    move v1, v5

    :goto_3c
    invoke-direct {p0}, Lcom/android/settings/IntelligentScreen;->CheckingAccelerometerRotationState()V

    iget-object v7, p0, Lcom/android/settings/IntelligentScreen;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    if-eqz v4, :cond_63

    iget-object v7, p0, Lcom/android/settings/IntelligentScreen;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_55
    if-nez v0, :cond_5c

    iget-object v5, p0, Lcom/android/settings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_5c
    return-void

    :cond_5d
    move v4, v6

    goto :goto_13

    :cond_5f
    move v2, v6

    goto :goto_2f

    :cond_61
    move v1, v6

    goto :goto_3c

    :cond_63
    iget-object v5, p0, Lcom/android/settings/IntelligentScreen;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_55
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 10

    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/IntelligentScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/IntelligentScreen;->mActionBarSwitch:Landroid/widget/Switch;

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

    iget-object v3, p0, Lcom/android/settings/IntelligentScreen;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/IntelligentScreen;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0d0968

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_53
    iget-object v3, p0, Lcom/android/settings/IntelligentScreen;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "IntelligentScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCheckChanged desiredState"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "accelerometer_rotation"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "intelligent_screen_mode"

    if-eqz p2, :cond_48

    move v2, v3

    :goto_31
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_4a

    iget-object v2, p0, Lcom/android/settings/IntelligentScreen;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_40
    if-nez v0, :cond_47

    iget-object v2, p0, Lcom/android/settings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_47
    return-void

    :cond_48
    move v2, v4

    goto :goto_31

    :cond_4a
    iget-object v2, p0, Lcom/android/settings/IntelligentScreen;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_40
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/android/settings/IntelligentScreen;->addPreferencesFromResource(I)V

    const-string v0, "intelligent_sleep"

    invoke-virtual {p0, v0}, Lcom/android/settings/IntelligentScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/IntelligentScreen;->mSleep:Landroid/preference/CheckBoxPreference;

    const-string v0, "intelligent_rotation"

    invoke-virtual {p0, v0}, Lcom/android/settings/IntelligentScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    const-string v0, "intelligent_help"

    invoke-virtual {p0, v0}, Lcom/android/settings/IntelligentScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/IntelligentScreen;->mHelp:Landroid/preference/PreferenceScreen;

    const-string v0, "IntelligentScreen"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "IntelligentScreen"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IntelligentScreen;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v6, "IntelligentScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceTreeClick key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "intelligent_sleep"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "intelligent_sleep_mode"

    if-eqz v2, :cond_35

    move v4, v5

    :cond_35
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_38
    :goto_38
    return v5

    :cond_39
    const-string v6, "intelligent_rotation"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v5, v0, :cond_38

    invoke-virtual {p0}, Lcom/android/settings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "intelligent_rotation_mode"

    if-eqz v1, :cond_5c

    move v4, v5

    :cond_5c
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_38

    :cond_60
    const-string v4, "intelligent_help"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_38

    :cond_6d
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_38
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "IntelligentScreen"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/IntelligentScreen;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/settings/IntelligentScreen;->updateState()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method
