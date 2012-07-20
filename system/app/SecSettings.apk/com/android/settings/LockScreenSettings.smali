.class public Lcom/android/settings/LockScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private isWeatherEnabled:Z

.field private mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

.field private mClock:Landroid/preference/CheckBoxPreference;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

.field private mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mRippleEffect:Landroid/preference/CheckBoxPreference;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mWeather:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private static AppServiceOff(I)I
    .registers 1

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static AppServiceOn(I)I
    .registers 1

    or-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/LockScreenSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/LockScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateState()V
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_clock"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_d1

    move v2, v3

    :goto_11
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "aw_daemon_service_key_app_service_status"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v1, v2, 0x1

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_2b

    if-ne v1, v3, :cond_d4

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    :cond_2b
    :goto_2b
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "dualclock_menu_settings"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_db

    move v2, v3

    :goto_3a
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_53

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "information_ticker"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_de

    move v2, v3

    :goto_50
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    :cond_53
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_69

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "motion_unlock_camera_short_cut"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_e1

    move v2, v3

    :goto_66
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    :cond_69
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lockscreen_wallpaper"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_e3

    move v0, v4

    :goto_76
    if-eqz v0, :cond_e5

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_7d
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "lockscreen_ripple_effect"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_eb

    move v2, v3

    :goto_8c
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_a5

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "unlock_text"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_ed

    move v2, v3

    :goto_a2
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_a5
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_bb

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "wake_up_lock_screen"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_ef

    move v2, v3

    :goto_b8
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_bb
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_d0

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_shortcut"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_f1

    :goto_cd
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    :cond_d0
    return-void

    :cond_d1
    move v2, v4

    goto/16 :goto_11

    :cond_d4
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_2b

    :cond_db
    move v2, v4

    goto/16 :goto_3a

    :cond_de
    move v2, v4

    goto/16 :goto_50

    :cond_e1
    move v2, v4

    goto :goto_66

    :cond_e3
    move v0, v3

    goto :goto_76

    :cond_e5
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_7d

    :cond_eb
    move v2, v4

    goto :goto_8c

    :cond_ed
    move v2, v4

    goto :goto_a2

    :cond_ef
    move v2, v4

    goto :goto_b8

    :cond_f1
    move v3, v4

    goto :goto_cd
.end method


# virtual methods
.method public checkNetwork()Z
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_1c

    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_1b

    const-string v5, "LockScreenSettings"

    const-string v6, "checkNetwork() : NetworkInfo is null. return false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    return v4

    :cond_1c
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_44

    sget-boolean v4, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v4, :cond_42

    const-string v4, "LockScreenSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNetwork() : ConnectivityManager.TYPE_MOBILE return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    move v4, v2

    goto :goto_1b

    :cond_44
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    sget-boolean v6, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v6, :cond_6e

    const-string v6, "LockScreenSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isWifiAvail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    if-nez v2, :cond_72

    if-eqz v1, :cond_1b

    :cond_72
    move v4, v5

    goto :goto_1b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const v5, 0x7f07002d

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->addPreferencesFromResource(I)V

    const-string v5, "lock_screen_shortcut"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    const-string v5, "lock_screen_shortcut"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_147

    move v5, v6

    :goto_2d
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_34

    :cond_34
    const-string v5, "clock"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    const-string v5, "weather"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1110046

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/LockScreenSettings;->isWeatherEnabled:Z

    iget-boolean v5, p0, Lcom/android/settings/LockScreenSettings;->isWeatherEnabled:Z

    if-nez v5, :cond_6c

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6c
    const-string v5, "dualclock_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "information_ticker"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_9b

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1110044

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_14a

    :cond_9b
    :goto_9b
    const-string v5, "camera_short_cut"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_c1

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c1

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_c1
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_db

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v5, "LockScreenSettings"

    const-string v8, " remove Dualclock menu"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_db
    const-string v5, "ripple_effect"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    const-string v5, "help_text"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    const-string v5, "say_your_wakeup"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_110

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_110

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_110
    const-string v5, "set_wakeup_command"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_146

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v6, :cond_146

    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_13d

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_13d
    if-eqz v3, :cond_146

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_146
    return-void

    :cond_147
    move v5, v7

    goto/16 :goto_2d

    :cond_14a
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9b
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 15

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v9, "dualclock_settings"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_21

    move v6, v7

    :goto_17
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dualclock_menu_settings"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_20
    :goto_20
    return v7

    :cond_21
    move v6, v8

    goto :goto_17

    :cond_23
    const-string v9, "information_ticker"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1ed

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    const-string v9, "CHN"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_66

    const-string v9, "CHM"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_66

    const-string v9, "CHU"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_66

    const-string v9, "CTC"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ef

    :cond_66
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_d1

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sn_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    :goto_7a
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sn_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_e0

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    :goto_97
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_bc
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "information_ticker"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_c9

    move v8, v7

    :cond_c9
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    goto/16 :goto_20

    :cond_d1
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sn_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_7a

    :cond_e0
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_97

    :cond_ef
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-eqz v9, :cond_177

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_159

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    :goto_109
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_168

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    :goto_126
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v9, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v10, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_bc

    :cond_159
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_109

    :cond_168
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_126

    :cond_177
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1cf

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yh_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    :goto_18b
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yh_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1de

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    :goto_1a8
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_bc

    :cond_1cf
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yh_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_18b

    :cond_1de
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_1a8

    :cond_1ed
    const-string v9, "weather"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_311

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_212

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->checkNetwork()Z

    move-result v9

    if-nez v9, :cond_212

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0d07b7

    invoke-static {v9, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    :cond_212
    const-string v9, "CHN"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_276

    const-string v9, "CHM"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_276

    const-string v9, "CHU"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_276

    const-string v9, "CTC"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_276

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_276

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "network"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_276

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "network"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_20

    :cond_276
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2de

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_app_service_status"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    :goto_28a
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_app_service_status"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v8, "CHN"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2cb

    const-string v8, "CHM"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2cb

    const-string v8, "CHU"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2cb

    const-string v8, "CTC"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2ed

    :cond_2cb
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.sinaweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2d9
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    goto/16 :goto_20

    :cond_2de
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_app_service_status"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_28a

    :cond_2ed
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v8

    if-eqz v8, :cond_302

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2d9

    :cond_302
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2d9

    :cond_311
    const-string v9, "lock_screen_shortcut"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32f

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_32d

    move v6, v7

    :goto_322
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_shortcut"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_20

    :cond_32d
    move v6, v8

    goto :goto_322

    :cond_32f
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v8, :cond_20

    const-string v8, "LockScreenSettings"

    const-string v9, "onPreferenceChange, mCameraShortCut"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/settings/LockScreenSettings;->setCameraShortCut(Z)V

    goto/16 :goto_20
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_clock"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_23

    :goto_18
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    :cond_1e
    :goto_1e
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_23
    move v2, v3

    goto :goto_18

    :cond_25
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "SETTING_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_55

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.sinaweather"

    const-string v3, "com.sec.android.daemonapp.ap.sinaweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4e
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e

    :cond_55
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_65

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.kweather"

    const-string v3, "com.sec.android.daemonapp.ap.kweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    :cond_65
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.accuweather"

    const-string v3, "com.sec.android.daemonapp.ap.accuweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    :cond_6f
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_ripple_effect"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_89

    :goto_85
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1e

    :cond_89
    move v2, v3

    goto :goto_85

    :cond_8b
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "unlock_text"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a6

    :goto_a1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1e

    :cond_a6
    move v2, v3

    goto :goto_a1

    :cond_a8
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wake_up_lock_screen"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_c3

    :goto_be
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1e

    :cond_c3
    move v2, v3

    goto :goto_be
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    return-void
.end method

.method public setCameraShortCut(Z)V
    .registers 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    :goto_5
    if-eqz p1, :cond_6c

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1c
    return-void

    :cond_1d
    move v0, v1

    goto :goto_5

    :cond_1f
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    :cond_2a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0892

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d084b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d04f0

    new-instance v3, Lcom/android/settings/LockScreenSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/LockScreenSettings$1;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d010e

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/LockScreenSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/LockScreenSettings$2;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1c

    :cond_6c
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1c
.end method
