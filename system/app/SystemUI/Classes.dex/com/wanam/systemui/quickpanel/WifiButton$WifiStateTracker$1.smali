.class Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;
.super Landroid/os/AsyncTask;
.source "WifiButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker;

.field final synthetic val$desiredState:Z

.field final synthetic val$viewContext:Landroid/content/Context;

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker;Landroid/net/wifi/WifiManager;ZLandroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->this$0:Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker;

    iput-object p2, p0, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$desiredState:Z

    iput-object p4, p0, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$viewContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 13

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    iget-boolean v5, p0, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$desiredState:Z

    if-eqz v5, :cond_1a

    const/16 v5, 0xc

    if-eq v4, v5, :cond_15

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1a

    :cond_15
    iget-object v5, p0, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v10, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_1a
    :try_start_1a
    iget-object v5, p0, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "setWifiEnabledDialog"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v5, p0, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$desiredState:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3f} :catch_40

    :goto_3f
    return-object v10

    :catch_40
    move-exception v1

    iget-object v5, p0, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v6, p0, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$desiredState:Z

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "show_dialog_once"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/wanam/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$viewContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3f
.end method
