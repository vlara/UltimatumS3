.class public Lcom/android/settings/InformationTicker;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InformationTicker.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContentsType:Landroid/preference/ListPreference;

.field private mSlidingSpeed:Landroid/preference/ListPreference;

.field private mTickerSetting:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

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

.method private updateState()V
    .registers 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "contents_type"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_28

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_28
    const-string v7, "sliding_speed"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_78

    const v7, 0x7f0d0847

    invoke-virtual {p0, v7}, Lcom/android/settings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4b
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "information_ticker"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_80

    move v2, v5

    :goto_5d
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v2}, Landroid/widget/Switch;->setChecked(Z)V

    if-eqz v2, :cond_82

    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_6d

    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_6d
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_77
    return-void

    :cond_78
    const v7, 0x7f0d0848

    invoke-virtual {p0, v7}, Lcom/android/settings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4b

    :cond_80
    move v2, v6

    goto :goto_5d

    :cond_82
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v5, :cond_8b

    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_8b
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_77
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 10

    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

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

    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0d0842

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_53
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 14

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "InformationTicker"

    const-string v9, "onCheckChanged"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_a9

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "sn_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    :goto_27
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "sn_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    :goto_44
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_69
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "information_ticker"

    if-eqz p2, :cond_1c1

    move v6, v7

    :goto_72
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_1c4

    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_80

    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_80
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_8a
    return-void

    :cond_8b
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "sn_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_27

    :cond_9a
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_44

    :cond_a9
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_131

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_113

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    :goto_c3
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_122

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    :goto_e0
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v9, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_69

    :cond_113
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_c3

    :cond_122
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_e0

    :cond_131
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1a3

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yh_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    :goto_145
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yh_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1b2

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    :goto_162
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "DCM"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18c

    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.camobile"

    const-string v9, "com.sec.android.daemonapp.ap.camobile.DaemonReceiver"

    invoke-direct {v0, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_18c
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_69

    :cond_1a3
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yh_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_145

    :cond_1b2
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_162

    :cond_1c1
    move v6, v8

    goto/16 :goto_72

    :cond_1c4
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_1cd

    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_1cd
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_8a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/settings/InformationTicker;->addPreferencesFromResource(I)V

    const-string v0, "contents_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2f
    const-string v0, "sliding_speed"

    invoke-virtual {p0, v0}, Lcom/android/settings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "ticker_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "contents_type"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contents_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v3, "InformationTicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContentsType.getEntry() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v2, :cond_61

    const v3, 0x7f0d0847

    invoke-virtual {p0, v3}, Lcom/android/settings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5a
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5f
    :goto_5f
    const/4 v3, 0x1

    return v3

    :cond_61
    const v3, 0x7f0d0848

    invoke-virtual {p0, v3}, Lcom/android/settings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5a

    :cond_69
    const-string v3, "sliding_speed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sliding_speed"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v3, "InformationTicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlidingSpeed.getEntry() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5f
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ticker_settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "contents_type"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_86

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "SETTING_MODE"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    :try_start_34
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_55

    const-string v5, "com.sec.android.daemonapp.ap.sinanews"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.daemonapp.ap.sinanews"

    const-string v6, "com.sec.android.daemonapp.ap.sinanews.DaemonConfigure"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4a
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/settings/InformationTicker;->startActivity(Landroid/content/Intent;)V
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_50} :catch_7d

    :cond_50
    :goto_50
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    :cond_55
    :try_start_55
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_6c

    const-string v5, "com.sec.android.daemonapp.ap.yonhapnews"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews.activity.SettingsNews"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :cond_6c
    const-string v5, "com.sec.android.daemonapp.ap.yahoonews"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.daemonapp.ap.yahoonews"

    const-string v6, "com.sec.android.daemonapp.ap.yahoonews.activity.SettingsNews"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_7c} :catch_7d

    goto :goto_4a

    :catch_7d
    move-exception v2

    const-string v5, "InformationTicker"

    const-string v6, "[NameNotFoundException] news daemon not installed !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :cond_86
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_97

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sec.android.daemonapp.ap.sinastock.stockclock.MENUSETTING"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_93
    invoke-virtual {p0, v3}, Lcom/android/settings/InformationTicker;->startActivity(Landroid/content/Intent;)V

    goto :goto_50

    :cond_97
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_a5

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sec.android.daemonapp.ap.edaily.stockclock.MENUSETTING"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_93

    :cond_a5
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sec.android.daemonapp.ap.yahoostock.stockclock.MENUSETTING"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_93
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/InformationTicker;->updateState()V

    return-void
.end method
