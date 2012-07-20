.class Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;
.super Landroid/database/ContentObserver;
.source "WifiConnectionMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConnectionMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreasholdObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConnectionMonitoringService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private getValue()I
    .registers 5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connection_monitoring_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    const/16 v0, -0x55

    :goto_12
    return v0

    :pswitch_13
    const/16 v0, -0x4b

    goto :goto_12

    :pswitch_16
    const/16 v0, -0x55

    goto :goto_12

    :pswitch_19
    const/16 v0, -0x5a

    goto :goto_12

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->getValue()I

    move-result v1

    #setter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mThreshold:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$102(Lcom/android/settings/wifi/WifiConnectionMonitoringService;I)I

    return-void
.end method

.method public register()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_monitoring_settings"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->getValue()I

    move-result v1

    #setter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mThreshold:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$102(Lcom/android/settings/wifi/WifiConnectionMonitoringService;I)I

    return-void
.end method
