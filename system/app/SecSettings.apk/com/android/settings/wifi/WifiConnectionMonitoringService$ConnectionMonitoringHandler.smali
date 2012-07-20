.class Lcom/android/settings/wifi/WifiConnectionMonitoringService$ConnectionMonitoringHandler;
.super Landroid/os/Handler;
.source "WifiConnectionMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConnectionMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionMonitoringHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConnectionMonitoringService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ConnectionMonitoringHandler;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_18

    :goto_9
    return-void

    :pswitch_a
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ConnectionMonitoringHandler;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->doWifiConnectionMonitoringPolicy()V

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ConnectionMonitoringHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    nop

    :pswitch_data_18
    .packed-switch 0x3e9
        :pswitch_a
    .end packed-switch
.end method
