.class Lcom/android/settings/wfd/WfdPickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WfdPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12f

    const-string v3, "WfdPickerActivity"

    const-string v4, "wfd settings P2P changed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "wifi_p2p_state"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v9, :cond_ae

    const-string v3, "WfdPickerActivity"

    const-string v4, " onReceive << WIFI_P2P_STATE_ENABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v3, v9}, Lcom/android/settings/wfd/WfdPickerActivity;->access$002(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$100(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/ProgressCategory;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$100(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/ProgressCategory;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$200(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v3

    if-eqz v3, :cond_86

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_86
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v3

    if-nez v3, :cond_94

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)V

    :cond_93
    :goto_93
    return-void

    :cond_94
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_93

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_93

    :cond_ae
    const-string v3, "wifi_p2p_state"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_93

    const-string v3, "WfdPickerActivity"

    const-string v4, " onReceive << WIFI_P2P_STATE_DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$200(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e6
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v3, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$002(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V
    invoke-static {v3, v9}, Lcom/android/settings/wfd/WfdPickerActivity;->access$900(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;

    move-result-object v3

    if-eqz v3, :cond_113

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    :cond_113
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1400(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const v4, 0x7f0d0335

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->addMessagePreference(I)V
    invoke-static {v3, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1500(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    goto/16 :goto_93

    :cond_12f
    const-string v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_159

    const-string v3, "WfdPickerActivity"

    const-string v4, " onReceive << WIFI_P2P_PEERS_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_93

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_93

    :cond_159
    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ae

    const-string v3, "WfdPickerActivity"

    const-string v4, " onReceive << WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    const-string v3, "wifiP2pInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_18c

    const-string v3, "WfdPickerActivity"

    const-string v4, "Connected... wait more times for p2p establish!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v3, v10}, Lcom/android/settings/wfd/WfdPickerActivity;->access$002(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    goto/16 :goto_93

    :cond_18c
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEndConnectionFlag:Z
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1600(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v3

    if-ne v3, v7, :cond_93

    const-string v3, "WfdPickerActivity"

    const-string v4, "onReceive set mEndConnectionFlag false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "WfdPickerActivity"

    const-string v4, "onReceive we need to scan device again!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEndConnectionFlag:Z
    invoke-static {v3, v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1602(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)V

    goto/16 :goto_93

    :cond_1ae
    const-string v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bf

    const-string v3, "WfdPickerActivity"

    const-string v4, " onReceive << WIFI_P2P_THIS_DEVICE_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_93

    :cond_1bf
    const-string v3, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    const-string v3, "WfdPickerActivity"

    const-string v4, " onReceive << P2P_CONNECTION_ESTABLISHED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$000(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v3

    if-ne v3, v10, :cond_28b

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v4, 0x5

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v3, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$002(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    if-eqz v3, :cond_1fe

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    invoke-static {v3, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1800(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdManager;->startWFDSession(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    :cond_1fe
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z
    invoke-static {v3, v6}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2002(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/16 v4, 0xb

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v3, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2100(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-eqz v3, :cond_234

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_234

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v4, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2202(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    const-string v3, "WfdPickerActivity"

    const-string v4, "WakeUnLock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_234
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;

    move-result-object v3

    if-eqz v3, :cond_245

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    :cond_245
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_25e

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    :cond_25e
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0336

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsStartedByAllShare:Z
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2300(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v3

    if-eqz v3, :cond_93

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_93

    :cond_28b
    const-string v3, "WfdPickerActivity"

    const-string v4, "bad state! P2P_CONNECTION_ESTABLISHED should be followed after wifi p2p connect - WIFI_P2P_CONNECTION_CHANGED_ACTION !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_93
.end method
