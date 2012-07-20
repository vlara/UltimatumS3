.class Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;
.super Landroid/os/Handler;
.source "WifiTimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiTimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SheduleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTimerService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiTimerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v6, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "com.android.settings.wifi.wifisheduler_action_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "WifiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1389

    if-ne v0, v2, :cond_6a

    const-string v2, "WifiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnableAlarm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "wifitimer_enabled"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "wifitimer_enabled"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->cancelAlarm()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$100(Lcom/android/settings/wifi/WifiTimerService;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->wifiStartAlarm()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$200(Lcom/android/settings/wifi/WifiTimerService;)V

    :cond_63
    :goto_63
    return-void

    :cond_64
    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->cancelAlarm()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$100(Lcom/android/settings/wifi/WifiTimerService;)V

    goto :goto_63

    :cond_6a
    const/16 v2, 0x138a

    if-ne v0, v2, :cond_a1

    const-string v2, "wifisheduler_alarm_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_88

    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #calls: Lcom/android/settings/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiTimerService;->access$300(Lcom/android/settings/wifi/WifiTimerService;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->wifiStopAlarm()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$400(Lcom/android/settings/wifi/WifiTimerService;)V

    goto :goto_63

    :cond_88
    const-string v2, "wifisheduler_alarm_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_63

    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #calls: Lcom/android/settings/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiTimerService;->access$300(Lcom/android/settings/wifi/WifiTimerService;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->wifiStartAlarm()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$200(Lcom/android/settings/wifi/WifiTimerService;)V

    goto :goto_63

    :cond_a1
    const/16 v2, 0x138b

    if-ne v0, v2, :cond_63

    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "wifitimer_enabled"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "wifitimer_wifi_start"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->wifiStopAlarm()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$400(Lcom/android/settings/wifi/WifiTimerService;)V

    goto :goto_63

    :cond_c7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->cancelAlarm()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$100(Lcom/android/settings/wifi/WifiTimerService;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->wifiStartAlarm()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$200(Lcom/android/settings/wifi/WifiTimerService;)V

    goto :goto_63

    :cond_d2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->cancelAlarm()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$100(Lcom/android/settings/wifi/WifiTimerService;)V

    goto :goto_63
.end method
