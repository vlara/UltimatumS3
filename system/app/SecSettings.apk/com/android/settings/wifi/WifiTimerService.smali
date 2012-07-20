.class public Lcom/android/settings/wifi/WifiTimerService;
.super Landroid/app/Service;
.source "WifiTimerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;
    }
.end annotation


# instance fields
.field final NotificationIcon:I

.field mContext:Landroid/content/Context;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

.field private mSheduleHandlerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const v0, 0x7f020082

    iput v0, p0, Lcom/android/settings/wifi/WifiTimerService;->NotificationIcon:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiTimerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->cancelAlarm()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiTimerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->wifiStartAlarm()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiTimerService;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiTimerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->wifiStopAlarm()V

    return-void
.end method

.method private cancelAlarm()V
    .registers 7

    const-string v3, "WifiTimer"

    const-string v4, "cancelAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x4000

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private enableWifi(Ljava/lang/Boolean;)V
    .registers 7

    const-string v2, "WifiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableWifi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiTimerService;->showNotification(Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "wifitimer_wifi_start"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showNotification(Ljava/lang/Boolean;)V
    .registers 11

    const v8, 0x7f0d0a31

    const/4 v7, 0x0

    const v6, 0x7f020082

    const-string v3, "WifiTimer"

    const-string v4, "showNotification"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiTimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_1f
    return-void

    :cond_20
    new-instance v2, Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f0d0a32

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1f
.end method

.method private wifiStartAlarm()V
    .registers 13

    const/4 v11, 0x0

    const-string v7, "WifiTimer"

    const-string v8, "wifiStartAlarm"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "wifitimer_start_time"

    const-string v9, "19:00"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4}, Lcom/android/settings/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v6

    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StartTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xb

    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_6c

    const-string v7, "WifiTimer"

    const-string v8, "Add one day"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->add(II)V

    :cond_6c
    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SystemTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SheduledTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v8, 0x138a

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "wifisheduler_alarm_type"

    const/16 v8, 0x3e9

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x1000

    invoke-static {v7, v11, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v1, v11, v7, v8, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private wifiStopAlarm()V
    .registers 13

    const/4 v11, 0x0

    const-string v7, "WifiTimer"

    const-string v8, "wifiStopAlarm"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "wifitimer_end_time"

    const-string v9, "21:00"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0xb

    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_43

    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->add(II)V

    :cond_43
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v8, 0x138a

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "wifisheduler_alarm_type"

    const/16 v8, 0x3ea

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x1000

    invoke-static {v7, v11, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v1, v11, v7, v8, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SheduleHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;-><init>(Lcom/android/settings/wifi/WifiTimerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v1, "wifitimer_pref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "WifiTimer"

    const-string v1, "Service Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    const-string v1, "WifiTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    if-eqz v1, :cond_33

    if-eqz p1, :cond_33

    iget-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_33
    const/4 v1, 0x1

    return v1
.end method
