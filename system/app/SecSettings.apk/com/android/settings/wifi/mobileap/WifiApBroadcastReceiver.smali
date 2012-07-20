.class public Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static MAX_CLIENTS:I

.field static final WIFI_AP_ON_ICON:[I

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field public static mIsForegroundWifiSettings:Z


# instance fields
.field private mLastClientNum:I

.field mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    sput v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->WIFI_AP_ON_ICON:[I

    return-void

    nop

    :array_14
    .array-data 0x4
        0xft 0x2t 0x2t 0x7ft
        0x10t 0x2t 0x2t 0x7ft
        0x11t 0x2t 0x2t 0x7ft
        0x12t 0x2t 0x2t 0x7ft
        0x13t 0x2t 0x2t 0x7ft
        0x14t 0x2t 0x2t 0x7ft
        0x15t 0x2t 0x2t 0x7ft
        0x16t 0x2t 0x2t 0x7ft
        0x17t 0x2t 0x2t 0x7ft
        0x18t 0x2t 0x2t 0x7ft
        0x19t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    return-void
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .registers 5

    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CONNECTION_TIMEOUT"

    const/16 v2, 0x258

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;)V
    .registers 7

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const-string v2, "WifiApBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mobile AP is disabled by [showHotspotErrorDialog] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2c

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4f

    :cond_2c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "wifiap_warning_dialog_type"

    const/16 v3, 0x1f41

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_4f
    return-void
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .registers 4

    sget-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_16

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_16
    return-void
.end method


# virtual methods
.method clearNotification(Landroid/content/Context;)V
    .registers 5

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0x7f0d02c1

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method createNotification(Landroid/content/Context;)V
    .registers 13

    const v10, 0x7f0d02c1

    const/4 v9, 0x0

    const v2, 0x108008a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d02c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v3, v2, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAXAP_NOTI"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v9, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, p1, v6, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7, v10, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 29

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v22, "WifiApBroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onReceive: action "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v22, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6e

    const-string v22, "wifi_state"

    const/16 v23, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    packed-switch v7, :pswitch_data_35c

    :cond_39
    :goto_39
    :pswitch_39
    return-void

    :pswitch_3a
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    const-string v22, "WifiApBroadcastReceiver"

    const-string v23, "batteryChargingblock_clear set true in Hotspot"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v22, "hotspot"

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_39

    :pswitch_54
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    const-string v22, "hotspot"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    const-string v22, "WifiApBroadcastReceiver"

    const-string v23, "batteryChargingblock_clear set true in Hotspot"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_6e
    const-string v22, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25f

    const-string v22, "wifiap_power_mode_alarm_option"

    const/16 v23, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    if-nez v16, :cond_13f

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v19

    const-string v22, "WifiApBroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ALARM_START : set "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " sec"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v19, :cond_102

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v9, v22, v24

    new-instance v5, Landroid/content/Intent;

    const-string v22, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "wifiap_power_mode_alarm_option"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v22, 0x0

    const/high16 v23, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    const-string v22, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v9, v10, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_39

    :cond_102
    sget-boolean v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v22, :cond_139

    new-instance v5, Landroid/content/Intent;

    const-string v22, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "wifiap_power_mode_alarm_option"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v22, 0x0

    const/high16 v23, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    const-string v22, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_139
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_39

    :cond_13f
    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_20f

    const-string v22, "WifiApBroadcastReceiver"

    const-string v23, "ALARM_EXPIRE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    const-string v22, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    const/16 v22, 0x1

    const-string v23, "MobileAPCloseService"

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    :try_start_170
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_173
    .catch Ljava/lang/Throwable; {:try_start_170 .. :try_end_173} :catch_1d6

    :goto_173
    const-string v22, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v20

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v19

    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    const/16 v22, 0x3

    move/from16 v0, v22

    iput v0, v14, Landroid/os/Message;->what:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v15

    const-string v22, "WifiApBroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "powermode_value = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v15, :cond_1ce

    const/16 v22, 0xd

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1ce

    if-eqz v19, :cond_1ce

    const-string v22, "WifiApBroadcastReceiver"

    const-string v23, "--> ap disable"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_1ce
    if-eqz v11, :cond_39

    :try_start_1d0
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1d3
    .catch Ljava/lang/Throwable; {:try_start_1d0 .. :try_end_1d3} :catch_1f2

    const/4 v11, 0x0

    goto/16 :goto_39

    :catch_1d6
    move-exception v8

    const-string v22, "WifiApBroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_173

    :catch_1f2
    move-exception v8

    const-string v22, "WifiApBroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot release wake lock ~~"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    :cond_20f
    const/16 v22, 0x2

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_39

    const-string v22, "WifiApBroadcastReceiver"

    const-string v23, "ALARM_STOP"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v22, :cond_39

    sget-boolean v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v22, :cond_39

    new-instance v5, Landroid/content/Intent;

    const-string v22, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "wifiap_power_mode_alarm_option"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v22, 0x0

    const/high16 v23, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    const-string v22, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_39

    :cond_25f
    const-string v22, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2e6

    const-string v22, "NUM"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_295

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v22, v0

    if-eqz v22, :cond_295

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearNotification(Landroid/content/Context;)V

    :goto_28f
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_39

    :cond_295
    sget v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    if-nez v22, :cond_2b9

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_Wifi_MaxClient4MobileAp"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2dd

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_2dd

    :try_start_2ab
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sput v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I
    :try_end_2b5
    .catchall {:try_start_2ab .. :try_end_2b5} :catchall_2d7
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_2b5} :catch_2ce

    const/16 v22, 0xa

    sput v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    :cond_2b9
    :goto_2b9
    sget v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    move/from16 v0, v22

    if-lt v3, v0, :cond_2e2

    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->createNotification(Landroid/content/Context;)V

    :goto_2c2
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_28f

    :catch_2ce
    move-exception v8

    :try_start_2cf
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d2
    .catchall {:try_start_2cf .. :try_end_2d2} :catchall_2d7

    const/16 v22, 0xa

    sput v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    goto :goto_2b9

    :catchall_2d7
    move-exception v22

    const/16 v23, 0xa

    sput v23, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    throw v22

    :cond_2dd
    const/16 v22, 0xa

    sput v22, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    goto :goto_2b9

    :cond_2e2
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearNotification(Landroid/content/Context;)V

    goto :goto_2c2

    :cond_2e6
    const-string v22, "android.intent.action.MAXAP_NOTI"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2f5

    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearNotification(Landroid/content/Context;)V

    goto/16 :goto_39

    :cond_2f5
    const-string v22, "android.settings.WIFI_AP_SEC_SETTINGS"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_304

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto/16 :goto_39

    :cond_304
    const-string v22, "android.intent.action.MIP_ERROR"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_318

    const-string v22, "android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_39

    :cond_318
    const-string v22, "android.intent.action.MIP_ERROR"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_357

    const-string v22, "CODE"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v22, "WifiApBroadcastReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mipErrorCode : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_39

    const-string v22, "67"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_39

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;)V

    goto/16 :goto_39

    :cond_357
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;)V

    goto/16 :goto_39

    :pswitch_data_35c
    .packed-switch 0xb
        :pswitch_54
        :pswitch_39
        :pswitch_3a
        :pswitch_54
    .end packed-switch
.end method
