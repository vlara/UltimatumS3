.class Lcom/android/settings/bluetooth/BluetoothEnablingActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnablingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEnablingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnablingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnablingActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnablingActivity$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothEnablingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_40

    :cond_2f
    :goto_2f
    return-void

    :pswitch_30
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnablingActivity$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnablingActivity;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothEnablingActivity;->access$000(Lcom/android/settings/bluetooth/BluetoothEnablingActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnablingActivity$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEnablingActivity;->finish()V

    goto :goto_2f

    :pswitch_data_40
    .packed-switch 0xc
        :pswitch_30
    .end packed-switch
.end method
