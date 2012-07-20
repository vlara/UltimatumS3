.class Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConnectionMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v11, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28

    const-string v11, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_22

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v11}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->startMonitoring()V

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v11}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->stopMonitoring()V

    goto :goto_21

    :cond_28
    const-string v11, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f4

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v12, v11, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v12

    :try_start_35
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6e

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v11}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$000(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_73

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    :cond_52
    const-string v11, "WifiConnectionMonitoringService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive, blacklist: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v14, v14, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    monitor-exit v12

    goto :goto_21

    :catchall_70
    move-exception v11

    monitor-exit v12
    :try_end_72
    .catchall {:try_start_35 .. :try_end_72} :catchall_70

    throw v11

    :cond_73
    const/4 v4, 0x0

    :try_start_74
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7c
    :goto_7c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_aa

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_8d

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8d

    const/4 v4, 0x1

    :cond_aa
    const-string v11, "WifiConnectionMonitoringService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive, find "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_7c

    const-string v11, "WifiConnectionMonitoringService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive, remove "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from blacklist"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_f3
    .catchall {:try_start_74 .. :try_end_f3} :catchall_70

    goto :goto_7c

    :cond_f4
    const-string v11, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v12, v11, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v12

    :try_start_101
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1ff

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v11}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$000(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1ff

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1ff

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget-object v11, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_11b

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v13, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11b

    iget v11, v8, Landroid/net/wifi/ScanResult;->level:I

    iget-object v13, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mThreshold:I
    invoke-static {v13}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)I

    move-result v13

    add-int/lit8 v13, v13, 0x5

    if-lt v11, v13, :cond_11b

    const-string v11, "WifiConnectionMonitoringService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive, SSID:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", RSSI:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", threashold:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mThreshold:I
    invoke-static {v14}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "WifiConnectionMonitoringService"

    const-string v13, "onReceive, remove from the blacklist"

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v11, v11, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v13, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v11, "WifiConnectionMonitoringService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive, blacklist:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v14, v14, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v11}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$000(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_11b

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1b5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_1b5

    iget-object v11, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b5

    const-string v11, "WifiConnectionMonitoringService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive, EnableNetwork : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v11}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$000(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    iget v13, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    monitor-exit v12

    goto/16 :goto_21

    :catchall_1fc
    move-exception v11

    monitor-exit v12
    :try_end_1fe
    .catchall {:try_start_101 .. :try_end_1fe} :catchall_1fc

    throw v11

    :cond_1ff
    :try_start_1ff
    monitor-exit v12
    :try_end_200
    .catchall {:try_start_1ff .. :try_end_200} :catchall_1fc

    goto/16 :goto_21
.end method
