.class public Lcom/android/settings/wifi/WifiManageNetworks;
.super Landroid/app/Activity;
.source "WifiManageNetworks.java"


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mWifiSettings:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->manageNetwork:Z

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    const v2, 0x7f0d01fe

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400e1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiManageNetworks;->setContentView(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiManageNetworks;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiManageNetworks;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a02c6

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiManageNetworks;->setTitle(I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/WifiManageNetworks$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiManageNetworks$1;-><init>(Lcom/android/settings/wifi/WifiManageNetworks;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiManageNetworks;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    return-void
.end method

.method protected onResume()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiManageNetworks;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiManageNetworks;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    :cond_1a
    return-void
.end method
