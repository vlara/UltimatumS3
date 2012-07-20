.class public Lcom/android/settings/sleepmode/SleepingMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SleepingMode.java"


# static fields
.field public static final SYNC_NOTIFICATION:Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mSleepingMode:Landroid/preference/CheckBoxPreference;

.field private mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/sleepmode/SleepingMode;->SYNC_NOTIFICATION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "SleepingMode"

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/sleepmode/SleepingMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sleepmode/SleepingMode$1;-><init>(Lcom/android/settings/sleepmode/SleepingMode;)V

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences$Editor;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/sleepmode/SleepingMode;)Lcom/android/settings/sleepmode/SleepingModePreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

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

.method public static cancelNotifySleepingMode(Landroid/content/Context;)V
    .registers 5

    sget-object v2, Lcom/android/settings/sleepmode/SleepingMode;->SYNC_NOTIFICATION:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    monitor-exit v2

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z
    .registers 13

    const/16 v10, 0xb

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v9, 0xc

    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v9, "key_sleeping_mode_pref"

    invoke-virtual {p0, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v9, "key_start_hour"

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v9, "key_start_minute"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v9, "key_end_hour"

    const/4 v10, 0x7

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v9, "key_end_minute"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ge v4, v0, :cond_3f

    if-ge v4, v2, :cond_34

    if-le v0, v2, :cond_34

    :cond_33
    :goto_33
    return v7

    :cond_34
    if-ne v4, v2, :cond_3a

    if-ge v3, v5, :cond_33

    :cond_38
    move v7, v8

    goto :goto_33

    :cond_3a
    if-ne v0, v2, :cond_38

    if-ge v3, v1, :cond_38

    goto :goto_33

    :cond_3f
    if-le v4, v0, :cond_4f

    if-lt v4, v2, :cond_33

    if-gt v0, v2, :cond_33

    if-ne v4, v2, :cond_4a

    if-lt v3, v5, :cond_38

    goto :goto_33

    :cond_4a
    if-ne v0, v2, :cond_38

    if-ge v3, v1, :cond_38

    goto :goto_33

    :cond_4f
    if-ne v4, v0, :cond_38

    if-ne v4, v2, :cond_38

    if-ge v5, v1, :cond_5a

    if-gt v5, v3, :cond_38

    if-le v1, v3, :cond_38

    goto :goto_33

    :cond_5a
    if-le v5, v1, :cond_38

    if-le v5, v3, :cond_33

    if-le v1, v3, :cond_38

    goto :goto_33
.end method

.method public static modeWillChange(Landroid/content/Context;)Z
    .registers 6

    const/4 v3, 0x0

    const-string v4, "key_sleeping_mode_pref"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "sleeping_mode_enabled"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/sleepmode/SleepingMode;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v4

    if-eq v4, v1, :cond_18

    const/4 v3, 0x1

    :cond_18
    return v3
.end method

.method public static notifySleepingMode(Landroid/content/Context;I)V
    .registers 20

    sget-object v3, Lcom/android/settings/sleepmode/SleepingMode;->SYNC_NOTIFICATION:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    const-string v1, "key_sleeping_mode_pref"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const-string v4, "key_sleeping_mode_is_set"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_28

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    monitor-exit v3

    :goto_27
    return-void

    :cond_28
    const-string v4, "key_start_hour"

    const/16 v5, 0xb

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "key_start_minute"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "key_end_hour"

    const/4 v7, 0x7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "key_end_minute"

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz p1, :cond_6e

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "sleeping_mode_enabled"

    const v2, 0x7f0d09bc

    move/from16 v0, p1

    if-ne v0, v2, :cond_6c

    const/4 v2, 0x1

    :goto_55
    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_5b
    const v2, 0x7f0d09bd

    move/from16 v0, p1

    if-ne v0, v2, :cond_95

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    monitor-exit v3

    goto :goto_27

    :catchall_69
    move-exception v1

    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_69

    throw v1

    :cond_6c
    const/4 v2, 0x0

    goto :goto_55

    :cond_6e
    :try_start_6e
    const-string v8, "sleeping_mode_enabled"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8f

    const p1, 0x7f0d09bc

    :goto_7a
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "sleeping_mode_enabled"

    const v2, 0x7f0d09bc

    move/from16 v0, p1

    if-ne v0, v2, :cond_93

    const/4 v2, 0x1

    :goto_88
    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5b

    :cond_8f
    const p1, 0x7f0d09bd

    goto :goto_7a

    :cond_93
    const/4 v2, 0x0

    goto :goto_88

    :cond_95
    const v2, 0x108002b

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d09be

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/settings/sleepmode/SleepingMode;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "~"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/android/settings/sleepmode/SleepingMode;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/settings/sleepmode/SleepingMode;

    invoke-direct {v5, v11, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v6, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const/16 v2, 0x8

    const/4 v4, 0x0

    invoke-static {v11, v2, v5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/16 v2, 0x8

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    monitor-exit v3
    :try_end_11c
    .catchall {:try_start_6e .. :try_end_11c} :catchall_69

    goto/16 :goto_27
.end method

.method public static registerSleepingMode(Landroid/content/Context;)V
    .registers 14

    const/high16 v12, 0x1000

    const/4 v11, 0x0

    const-string v9, "key_sleeping_mode_pref"

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "key_start_hour"

    const/16 v10, 0x17

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v9, "key_start_minute"

    invoke-interface {v7, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v9, "key_end_hour"

    const/4 v10, 0x7

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v9, "key_end_minute"

    invoke-interface {v7, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v9, "alarm"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v11, v8, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v5, v6}, Lcom/android/settings/sleepmode/SleepingMode;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v0, v11, v9, v10, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v11, v3, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v1, v2}, Lcom/android/settings/sleepmode/SleepingMode;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v0, v11, v9, v10, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;
    .registers 9

    const/16 v5, 0xc

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d09c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, p1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p1, 0xa

    if-nez v3, :cond_61

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_37
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p2, 0xa

    if-nez v3, :cond_66

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_58
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_60
    return-object v3

    :cond_61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_37

    :cond_66
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_58

    :cond_6b
    if-lt p1, v5, :cond_7c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d09c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-le p1, v5, :cond_7c

    add-int/lit8 v2, p1, -0xc

    :cond_7c
    if-nez p1, :cond_80

    const/16 v2, 0xc

    :cond_80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_d0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_a6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p2, 0xa

    if-nez v3, :cond_d5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_c7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_60

    :cond_d0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_a6

    :cond_d5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_c7
.end method

.method public static unregisterSleepingMode(Landroid/content/Context;)V
    .registers 9

    const/high16 v7, 0x1000

    const/4 v6, 0x0

    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v4, "key_sleeping_mode_pref"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "sleeping_mode_enabled"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    invoke-virtual {v1}, Lcom/android/settings/sleepmode/SleepingModePreference;->updateSleepingMode()V

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    invoke-virtual {v1}, Lcom/android/settings/sleepmode/SleepingModePreference;->refreshSleepingModeList()V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2d

    if-nez p1, :cond_2d

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/sleepmode/SleepingMode;->registerSleepingMode(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ext_key_set_by_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/android/settings/sleepmode/SleepingMode;->addPreferencesFromResource(I)V

    const-string v1, "toggle_sleeping_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/sleepmode/SleepingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    const-string v1, "sleeping_mode_pref"

    invoke-virtual {p0, v1}, Lcom/android/settings/sleepmode/SleepingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sleepmode/SleepingModePreference;

    iput-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "key_sleeping_mode_pref"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "key_sleeping_mode_is_set"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    if-eqz v0, :cond_48

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/sleepmode/SleepingModePreference;->setEnabled(Z)V

    :goto_47
    return-void

    :cond_48
    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/sleepmode/SleepingModePreference;->setEnabled(Z)V

    goto :goto_47
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_94

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_sleeping_mode_is_set"

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/sleepmode/SleepingModePreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sleepmode/SleepingMode;->modeWillChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    :cond_36
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sleepmode/SleepingMode;->registerSleepingMode(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ext_key_set_by_user"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_50
    :goto_50
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_55
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_sleeping_mode_is_set"

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/sleepmode/SleepingModePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "sleeping_mode_enabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "previous_flight_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_50

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ext_key_set_by_user"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_50

    :cond_94
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    if-ne p2, v0, :cond_50

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/sleepmode/SleepingModeEditor;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/sleepmode/SleepingMode;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_50
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
