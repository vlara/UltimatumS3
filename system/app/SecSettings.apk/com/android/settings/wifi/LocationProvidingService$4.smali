.class Lcom/android/settings/wifi/LocationProvidingService$4;
.super Ljava/lang/Object;
.source "LocationProvidingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/LocationProvidingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/LocationProvidingService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/LocationProvidingService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v3, 0x2

    const/4 v2, -0x1

    const v6, 0x7f020203

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "LocationProvidingService"

    const-string v1, "Update Wifi started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    #getter for: Lcom/android/settings/wifi/LocationProvidingService;->locAvailable:Z
    invoke-static {v0}, Lcom/android/settings/wifi/LocationProvidingService;->access$300(Lcom/android/settings/wifi/LocationProvidingService;)Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/settings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v3, :cond_9e

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/settings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9e

    const-string v0, "LocationProvidingService"

    const-string v1, "Location Matched so Enable Wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/settings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    const-string v1, "Wi-Fi Enabled"

    iput-object v1, v0, Lcom/android/settings/wifi/LocationProvidingService;->title:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    const-string v1, "Wi-Fi is automatically enabled"

    iput-object v1, v0, Lcom/android/settings/wifi/LocationProvidingService;->details:Ljava/lang/CharSequence;

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->details:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.LAUNCH_AUTO_CONNECTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x3000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_98
    :goto_98
    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/wifi/LocationProvidingService;->loc:Landroid/location/Location;

    return-void

    :cond_9e
    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    #getter for: Lcom/android/settings/wifi/LocationProvidingService;->locAvailable:Z
    invoke-static {v0}, Lcom/android/settings/wifi/LocationProvidingService;->access$300(Lcom/android/settings/wifi/LocationProvidingService;)Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    #getter for: Lcom/android/settings/wifi/LocationProvidingService;->cellAvailable:Z
    invoke-static {v0}, Lcom/android/settings/wifi/LocationProvidingService;->access$200(Lcom/android/settings/wifi/LocationProvidingService;)Z

    move-result v0

    if-eqz v0, :cond_132

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/settings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v3, :cond_132

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/settings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_132

    const-string v0, "LocationProvidingService"

    const-string v1, "Cell matched so Enable Wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/settings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    const-string v1, "Wi-Fi Enabled"

    iput-object v1, v0, Lcom/android/settings/wifi/LocationProvidingService;->title:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    const-string v1, "Wi-Fi is automatically enabled"

    iput-object v1, v0, Lcom/android/settings/wifi/LocationProvidingService;->details:Ljava/lang/CharSequence;

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->details:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.LAUNCH_AUTO_CONNECTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x3000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_98

    :cond_132
    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    #getter for: Lcom/android/settings/wifi/LocationProvidingService;->cellAvailable:Z
    invoke-static {v0}, Lcom/android/settings/wifi/LocationProvidingService;->access$200(Lcom/android/settings/wifi/LocationProvidingService;)Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/settings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v0, v0, Lcom/android/settings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v4, :cond_98

    const-string v0, "LocationProvidingService"

    const-string v1, "Cell NOT matched so Disable Wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    const-class v2, Lcom/android/settings/wifi/WifiDisableDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$4;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/LocationProvidingService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_98
.end method
