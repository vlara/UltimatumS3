.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pDevicePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "WifiP2pDevicePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_6e

    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_86

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_6f

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_6e

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v10, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    :cond_6e
    :goto_6e
    return-void

    :cond_6f
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v6, v11}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_6e

    :cond_86
    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_6e

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_b2

    const-string v6, "WifiP2pDevicePicker"

    const-string v7, "WIFI_P2P_STATE_DISABLED by certain reason"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v9, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    if-eqz v6, :cond_ad

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    :cond_ad
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    :cond_b2
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6, v12}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$802(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    goto :goto_6e

    :cond_b8
    const-string v6, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e7

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_6e

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v6, "wifiP2pGroupInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v7, v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$802(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_6e

    :cond_e7
    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f3

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_6e

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$1;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v6, "wifiP2pInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pInfo;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v7, v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$902(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_1ca

    const-string v6, "WifiP2pDevicePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-ne v6, v10, :cond_6e

    const-string v6, "WifiP2pDevicePicker"

    const-string v7, "AUTO GO is created for multiple connect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v3}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_168
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6, v5}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto :goto_168

    :cond_17e
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_19a

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$2;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;)V

    invoke-virtual {v6, v7, v3, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_19a
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v6, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1002(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    goto/16 :goto_6e

    :cond_1ca
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-eqz v6, :cond_6e

    const-string v6, "WifiP2pDevicePicker"

    const-string v7, "disconnected"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6, v12}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$802(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_6e

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_6e

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v10, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    goto/16 :goto_6e

    :cond_1f3
    const-string v6, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v6, "wifiP2pDevice"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v7, v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1402(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_6e
.end method
