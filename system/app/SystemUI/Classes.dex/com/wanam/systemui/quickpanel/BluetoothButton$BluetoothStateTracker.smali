.class final Lcom/wanam/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;
.super Lcom/wanam/systemui/quickpanel/StateTracker;
.source "BluetoothButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanam/systemui/quickpanel/BluetoothButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanam/systemui/quickpanel/BluetoothButton$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
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
    const/4 v0, 0x3

    goto :goto_4

    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    nop

    :pswitch_data_e
    .packed-switch 0xa
        :pswitch_5
        :pswitch_9
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .registers 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x6

    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/wanam/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    goto :goto_7
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_c
    return-void

    :cond_d
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/wanam/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/wanam/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_c
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .registers 5

    new-instance v0, Lcom/wanam/systemui/quickpanel/BluetoothButton$BluetoothStateTracker$1;

    invoke-direct {v0, p0}, Lcom/wanam/systemui/quickpanel/BluetoothButton$BluetoothStateTracker$1;-><init>(Lcom/wanam/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/wanam/systemui/quickpanel/BluetoothButton$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
