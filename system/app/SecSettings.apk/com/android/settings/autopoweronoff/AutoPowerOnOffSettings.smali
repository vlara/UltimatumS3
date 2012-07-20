.class public Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutoPowerOnOffSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    }
.end annotation


# static fields
.field public static final SYNC_NOTIFICATION:Ljava/lang/Object;

.field public static final SYNC_REGISTER_RECEIVER:Ljava/lang/Object;

.field private static final sHandler:Landroid/os/Handler;

.field public static turnAutoPower:Z


# instance fields
.field public daysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

.field private mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mWeeklyRepeat:Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->SYNC_REGISTER_RECEIVER:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->SYNC_NOTIFICATION:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/SharedPreferences$Editor;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private static calculateAlarm(II)Ljava/util/Calendar;
    .registers 10

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-lt p0, v1, :cond_1e

    if-ne p0, v1, :cond_23

    if-gt p1, v2, :cond_23

    :cond_1e
    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    :cond_23
    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v7, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public static calculateBootAlarm(IIII)J
    .registers 13

    move v2, p2

    if-nez v2, :cond_6

    const-wide/16 v6, -0x1

    :goto_5
    return-wide v6

    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-lt p0, v3, :cond_23

    if-ne p0, v3, :cond_28

    if-gt p1, v4, :cond_28

    :cond_23
    const/4 v6, 0x6

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    :cond_28
    const/16 v6, 0xb

    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_4b

    :cond_46
    :goto_46
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    goto :goto_5

    :cond_4b
    const/4 v1, 0x0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_51

    const/16 v5, 0x8

    :cond_51
    const/4 v1, 0x0

    :goto_52
    const/4 v6, 0x7

    if-ge v1, v6, :cond_88

    const/4 v6, 0x1

    add-int v7, v5, v1

    add-int/lit8 v7, v7, -0x2

    rem-int/lit8 v7, v7, 0x7

    shl-int/2addr v6, v7

    and-int/2addr v6, v2

    if-lez v6, :cond_8f

    const-string v6, "AutoPower"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Matched day is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, v5, v1

    add-int/lit8 v8, v8, -0x2

    rem-int/lit8 v8, v8, 0x7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    if-eqz p3, :cond_46

    const/4 v6, 0x6

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_46

    :cond_8f
    add-int/lit8 v1, v1, 0x1

    goto :goto_52
.end method

.method private getAutoPowerUpAlarmState()Z
    .registers 5

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_power_up_alarm"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_a} :catch_10

    move-result v2

    if-lez v2, :cond_e

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d

    :catch_10
    move-exception v0

    goto :goto_d
.end method

.method public static getDataString(ZJ)Ljava/lang/String;
    .registers 16

    const/16 v12, 0xa

    const-string v2, "0000000000000"

    if-eqz p0, :cond_c

    const-wide/16 v10, -0x1

    cmp-long v10, p1, v10

    if-nez v10, :cond_e

    :cond_c
    move-object v3, v2

    :goto_d
    return-object v3

    :cond_e
    const-wide/16 v6, 0x0

    new-instance v8, Landroid/text/format/Time;

    const-string v10, "UTC"

    invoke-direct {v8, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    sub-long v10, p1, v6

    invoke-virtual {v8, v10, v11}, Landroid/text/format/Time;->set(J)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/text/format/Time;->normalize(Z)J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v8, Landroid/text/format/Time;->year:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v8, Landroid/text/format/Time;->month:I

    add-int/lit8 v10, v10, 0x1

    if-ge v10, v12, :cond_c3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/text/format/Time;->month:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_52
    iget v10, v8, Landroid/text/format/Time;->monthDay:I

    if-ge v10, v12, :cond_dc

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6b
    iget v10, v8, Landroid/text/format/Time;->hour:I

    if-ge v10, v12, :cond_f3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/text/format/Time;->hour:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_84
    iget v10, v8, Landroid/text/format/Time;->minute:I

    if-ge v10, v12, :cond_10a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/text/format/Time;->minute:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_9d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_d

    :cond_c3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v8, Landroid/text/format/Time;->month:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_52

    :cond_dc
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6b

    :cond_f3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v8, Landroid/text/format/Time;->hour:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_84

    :cond_10a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v8, Landroid/text/format/Time;->minute:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9d
.end method

.method public static registerAutoPowerOnOffAlarm(Landroid/content/Context;)V
    .registers 20

    const-string v16, "key_auto_power_on_off_pref"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v16, "key_hour_start"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v16, "key_minute_start"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string v16, "key_hour_end"

    const/16 v17, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v16, "key_minute_end"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v16, "key_auto_power_on_off_repeat_days"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    if-nez v9, :cond_ae

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_60

    const/16 v15, 0x8

    :cond_60
    add-int/lit8 v16, v15, -0x2

    move/from16 v0, v16

    int-to-double v7, v0

    const-wide/high16 v16, 0x4000

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v15, v7

    invoke-static {v5, v6, v15, v9}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->calculateBootAlarm(IIII)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->sendData(JLandroid/content/Context;)V

    :goto_79
    const-string v16, "alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    new-instance v14, Landroid/content/Intent;

    const-string v16, "android.settings.AUTO_POWER_ON_OFF_END_ACTION"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    const/high16 v17, 0x1000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    const/16 v16, 0x0

    invoke-static {v11, v12}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    move/from16 v0, v16

    move-wide/from16 v1, v17

    invoke-virtual {v3, v0, v1, v2, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_ae
    invoke-static {v5, v6, v9, v9}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->calculateBootAlarm(IIII)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->sendData(JLandroid/content/Context;)V

    goto :goto_79
.end method

.method public static sendData(JLandroid/content/Context;)V
    .registers 10

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_power_up_alarm"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_a} :catch_41

    move-result v2

    :goto_b
    const-string v4, "alarm"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-static {v4, p0, p1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getDataString(ZJ)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutoPowerOnOffSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    if-eq v3, v4, :cond_40

    if-nez v3, :cond_4b

    :cond_40
    :goto_40
    return-void

    :catch_41
    move-exception v1

    const-string v4, "AutoPower"

    const-string v5, "Can\'t find isAutoPowerUpEnable : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_b

    :cond_4b
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->setAutoPowerUp(Ljava/lang/String;)V

    goto :goto_40
.end method

.method private setAutoPowerOnOffState(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_power_on_off"

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static unregisterAutoPowerOnOffAlarm(Landroid/content/Context;)V
    .registers 6

    const-wide/16 v2, -0x1

    invoke-static {v2, v3, p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->sendData(JLandroid/content/Context;)V

    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.AUTO_POWER_ON_OFF_END_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->addPreferencesFromResource(I)V

    const-string v2, "toggle_auto_power_on_off_mode"

    invoke-virtual {p0, v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    const-string v2, "weekly_repeat"

    invoke-virtual {p0, v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    iput-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "key_auto_power_on_off_pref"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v3, "key_auto_power_on_off_setted"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    sget-boolean v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    if-nez v2, :cond_4b

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0, v4}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOnOffState(Z)V

    :cond_4b
    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v3, "key_auto_power_on_off_repeat_days"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v2, v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->daysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->daysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v2, v3}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->setDaysOfWeek(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    sget-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;-><init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_a8

    invoke-direct {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getAutoPowerUpAlarmState()Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    sput-boolean v6, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0d09c9

    invoke-virtual {p0, v3}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0d09cd

    invoke-virtual {p0, v3}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0d04f0

    new-instance v4, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;-><init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;-><init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_4c
    return v2

    :cond_4d
    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOnOffState(Z)V

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_ad

    sput-boolean v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    :goto_60
    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "key_auto_power_on_off_setted"

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "key_no_repeat_power_off"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "key_no_repeat_power_on"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_b0

    sput-boolean v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.AUTO_POWER_ON_OFF_START_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "ext_key_changed_by_user"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_a8
    :goto_a8
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_4c

    :cond_ad
    sput-boolean v6, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    goto :goto_60

    :cond_b0
    sput-boolean v6, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOnOffAlarm(Landroid/content/Context;)V

    goto :goto_a8
.end method

.method public onResume()V
    .registers 4

    invoke-direct {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getAutoPowerUpAlarmState()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0d09cc

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    :goto_e
    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_auto_power_on_off_repeat_days"

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    invoke-virtual {v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->getDaysOfWeek()Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto :goto_e
.end method

.method public onStop()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_auto_power_on_off_repeat_days"

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    invoke-virtual {v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->getDaysOfWeek()Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
