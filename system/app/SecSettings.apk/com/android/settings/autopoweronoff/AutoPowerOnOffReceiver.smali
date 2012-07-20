.class public Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoPowerOnOffReceiver.java"


# static fields
.field private static sIsProcASM:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field private mEndHour:I

.field private mEndMinute:I

.field private mIsAutoPowerOnOffEnabled:Z

.field private mNoRepeatPowerON:I

.field private mNoRepeatPowerOff:I

.field private mRepeatDays:I

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mStartHour:I

.field private mStartMinute:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->sIsProcASM:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "AutoPowerOnOffReceiver"

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private isActivateDay(I)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-ne p1, v2, :cond_9

    const/16 p1, 0x8

    :cond_9
    add-int/lit8 v3, p1, -0x2

    shl-int v0, v2, v3

    iget v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_14

    move v1, v2

    goto :goto_4

    :cond_14
    iget v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method private procAutoPowerOnOffAction(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "canceled_by_user"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    const-string v0, "ext_key_changed_by_user"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "canceled_by_user"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1d
    iget-boolean v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mIsAutoPowerOnOffEnabled:Z

    if-nez v0, :cond_25

    invoke-static {p1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOnOffAlarm(Landroid/content/Context;)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mStartHour:I

    iget v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mEndHour:I

    if-ne v0, v1, :cond_31

    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mStartMinute:I

    iget v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mEndMinute:I

    if-eq v0, v1, :cond_24

    :cond_31
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->isActivateDay(I)Z

    move-result v1

    if-eqz v1, :cond_105

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.settings.AUTO_POWER_ON_OFF_END_ACTION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    iget v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mStartHour:I

    if-ne v1, v2, :cond_24

    iget v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mStartHour:I

    if-ne v1, v2, :cond_64

    iget v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mStartMinute:I

    if-ne v1, v0, :cond_24

    :cond_64
    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-lez v0, :cond_6a

    sput-boolean v4, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    :cond_6a
    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-gtz v0, :cond_76

    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerOff:I

    if-nez v0, :cond_ad

    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-nez v0, :cond_ad

    :cond_76
    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_no_repeat_power_off"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_no_repeat_power_off"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerOff:I

    const-class v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirm;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_10a

    const-class v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;

    :goto_9e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x1404

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_24

    :cond_ad
    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerOff:I

    if-ne v0, v4, :cond_24

    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-nez v0, :cond_24

    invoke-direct {p0, p1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerON:I

    if-ne v0, v4, :cond_24

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->resetToDefaults()V

    goto/16 :goto_24

    :cond_c1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_no_repeat_power_on"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_no_repeat_power_on"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerON:I

    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-lez v0, :cond_ec

    sput-boolean v4, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    invoke-direct {p0, p1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    :cond_ec
    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerON:I

    if-ne v0, v4, :cond_24

    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-nez v0, :cond_24

    const-wide/16 v0, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->sendData(JLandroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerOff:I

    if-ne v0, v4, :cond_24

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->resetToDefaults()V

    goto/16 :goto_24

    :cond_105
    invoke-direct {p0, p1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    goto/16 :goto_24

    :cond_10a
    move-object v0, v1

    goto :goto_9e
.end method

.method private setNextAlarmAction(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    sget-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mContext:Landroid/content/Context;

    const-string v0, "key_auto_power_on_off_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->resetData(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mIsAutoPowerOnOffEnabled:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->procAutoPowerOnOffAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_4

    :cond_39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.AUTO_POWER_ON_OFF_START_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.AUTO_POWER_ON_OFF_END_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->procAutoPowerOnOffAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_4

    :cond_55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    goto :goto_4
.end method

.method public resetData(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_auto_power_on_off_setted"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mIsAutoPowerOnOffEnabled:Z

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_auto_power_on_off_repeat_days"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_hour_start"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mStartHour:I

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_minute_start"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mStartMinute:I

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_hour_end"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mEndHour:I

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_minute_end"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mEndMinute:I

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_no_repeat_power_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerOff:I

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_no_repeat_power_on"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerON:I

    return-void
.end method

.method public resetToDefaults()V
    .registers 4

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_auto_power_on_off_setted"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_no_repeat_power_on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_no_repeat_power_off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iput v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerON:I

    iput v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerOff:I

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_power_on_off"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
