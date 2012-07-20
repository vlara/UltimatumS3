.class public Lcom/android/settings/sleepmode/SleepingModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SleepingModeReceiver.java"


# static fields
.field private static sIsInProc:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEndHour:I

.field private mEndMinute:I

.field private mFlightModeChanged:Z

.field private mIsEveryWeekRepeat:I

.field private mIsSleepingModeSet:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListenerRegistered:Z

.field private mRepeatDays:I

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mStartHour:I

.field private mStartMinute:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->sIsInProc:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "SleepingModeReceiver"

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    new-instance v0, Lcom/android/settings/sleepmode/SleepingModeReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver$1;-><init>(Lcom/android/settings/sleepmode/SleepingModeReceiver;)V

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sleepmode/SleepingModeReceiver;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/sleepmode/SleepingModeReceiver;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/sleepmode/SleepingModeReceiver;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->enterSleepingMode(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/sleepmode/SleepingModeReceiver;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->setNextTimeAction(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/sleepmode/SleepingModeReceiver;)Landroid/content/SharedPreferences$Editor;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private enterSleepingMode(Landroid/content/Context;)V
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "previous_flight_mode"

    if-eqz v1, :cond_54

    move v2, v3

    :goto_d
    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "sleeping_mode_suspended"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_30

    iput-boolean v4, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v5, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_30
    if-nez v1, :cond_53

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airplane_mode_on"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sput-boolean v3, Lcom/android/settings/sleepmode/SleepingModeReceiver;->sIsInProc:Z

    const-string v2, "enterSleepingMode"

    const-string v3, "Airplane mode on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return-void

    :cond_54
    move v2, v4

    goto :goto_d
.end method

.method private exitSleepingMode(Landroid/content/Context;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mIsEveryWeekRepeat:I

    if-nez v5, :cond_4b

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isActivateDay(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    iget-boolean v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTimeChanged:Z

    if-nez v5, :cond_4b

    rsub-int/lit8 v5, v4, 0x7

    mul-int/lit8 v5, v5, 0x4

    shl-int v2, v9, v5

    iget v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v5, v6

    iput v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_repeat_days"

    iget v7, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    if-nez v5, :cond_4b

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_sleeping_mode_is_set"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "sleeping_mode_enabled"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4b
    sput-boolean v9, Lcom/android/settings/sleepmode/SleepingModeReceiver;->sIsInProc:Z

    iget-boolean v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mFlightModeChanged:Z

    if-nez v5, :cond_73

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v6, "previous_flight_mode"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_73

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "state"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_73
    return-void
.end method

.method private isActivateDay(I)Z
    .registers 5

    const/4 v1, 0x1

    rsub-int/lit8 v2, p1, 0x7

    mul-int/lit8 v2, v2, 0x4

    shl-int v0, v1, v2

    iget v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_d

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private isEnabledSleepingMode()Z
    .registers 4

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "sleeping_mode_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private procSleepingModeAction(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const v7, 0x7f0d09bc

    const/4 v6, 0x1

    const v5, 0x7f0d09bd

    const-string v3, "ext_key_set_by_user"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mIsSleepingModeSet:Z

    if-nez v3, :cond_26

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    :cond_1b
    invoke-static {p1}, Lcom/android/settings/sleepmode/SleepingMode;->unregisterSleepingMode(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/sleepmode/SleepingMode;->cancelNotifySleepingMode(Landroid/content/Context;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mStartHour:I

    iget v4, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mEndHour:I

    if-ne v3, v4, :cond_41

    iget v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mStartMinute:I

    iget v4, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mEndMinute:I

    if-ne v3, v4, :cond_41

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/sleepmode/SleepingMode;->unregisterSleepingMode(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/sleepmode/SleepingMode;->cancelNotifySleepingMode(Landroid/content/Context;)V

    goto :goto_25

    :cond_41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isActivateDay(I)Z

    move-result v3

    if-eqz v3, :cond_e5

    invoke-static {p1, v0}, Lcom/android/settings/sleepmode/SleepingMode;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_ba

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-nez v3, :cond_ba

    iget-object v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_8c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    iget-object v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "sleeping_mode_suspended"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    if-nez v3, :cond_25

    iget-object v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iput-boolean v6, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    goto :goto_25

    :cond_8c
    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->enterSleepingMode(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    :cond_96
    :goto_96
    invoke-static {p1, v0}, Lcom/android/settings/sleepmode/SleepingMode;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    :cond_b5
    :goto_b5
    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->setNextTimeAction(Landroid/content/Context;)V

    goto/16 :goto_25

    :cond_ba
    invoke-static {p1, v0}, Lcom/android/settings/sleepmode/SleepingMode;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_96

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_96

    if-eqz v1, :cond_d6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    iput-boolean v6, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTimeChanged:Z

    :cond_d6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_96

    :cond_e5
    invoke-direct {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isActivateDay(I)Z

    move-result v3

    if-nez v3, :cond_102

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_102

    if-eqz v1, :cond_102

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_b5

    :cond_102
    invoke-direct {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isActivateDay(I)Z

    move-result v3

    if-nez v3, :cond_129

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_129

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_129

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_b5

    :cond_129
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_b5
.end method

.method private setNextTimeAction(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sleepmode/SleepingMode;->registerSleepingMode(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const v3, 0x7f0d09bd

    const/4 v2, 0x1

    const-string v0, "CHN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "CHU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    iput-object p1, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mContext:Landroid/content/Context;

    const-string v0, "key_sleeping_mode_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->resetData(Landroid/content/Context;)V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mIsSleepingModeSet:Z

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d09bc

    invoke-static {v0, v1}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    :goto_6f
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->procSleepingModeAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2e

    :cond_73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_6f

    :cond_7b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    :cond_93
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->procSleepingModeAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2e

    :cond_97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    :cond_af
    iget-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mIsSleepingModeSet:Z

    if-eqz v0, :cond_2e

    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->setNextTimeAction(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->procSleepingModeAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2e

    :cond_bb
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2e

    iput-boolean v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mFlightModeChanged:Z

    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->setNextTimeAction(Landroid/content/Context;)V

    goto/16 :goto_2e
.end method

.method public resetData(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_sleeping_mode_is_set"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mIsSleepingModeSet:Z

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_repeat_days"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_repeat_every_week"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mIsEveryWeekRepeat:I

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_start_hour"

    const/16 v2, 0x17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mStartHour:I

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_start_minute"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mStartMinute:I

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_end_hour"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mEndHour:I

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_end_minute"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mEndMinute:I

    iput-boolean v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mFlightModeChanged:Z

    iput-boolean v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTimeChanged:Z

    return-void
.end method
