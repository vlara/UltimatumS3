.class final Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker;
.super Lcom/wanam/systemui/quickpanel/StateTracker;
.source "WifiButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanam/systemui/quickpanel/WifiButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanam/systemui/quickpanel/WifiButton$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .registers 2

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x6

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_9
    const/4 v0, 0x4

    goto :goto_4

    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_5
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .registers 4

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x6

    goto :goto_12
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_c
    return-void

    :cond_d
    const-string v2, "wifi_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_c
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .registers 7

    move-object v0, p1

    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_13

    const-string v2, "WifiButton"

    const-string v3, "No wifiManager."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void

    :cond_13
    new-instance v2, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;

    invoke-direct {v2, p0, v1, p2, v0}, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;-><init>(Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker;Landroid/net/wifi/WifiManager;ZLandroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_12
.end method
