.class public Lcom/wanam/systemui/quickpanel/BluetoothButton;
.super Lcom/wanam/systemui/quickpanel/PowerButton;
.source "BluetoothButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanam/systemui/quickpanel/BluetoothButton$1;,
        Lcom/wanam/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;
    }
.end annotation


# static fields
.field private static final sBluetoothState:Lcom/wanam/systemui/quickpanel/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/wanam/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wanam/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;-><init>(Lcom/wanam/systemui/quickpanel/BluetoothButton$1;)V

    sput-object v0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->sBluetoothState:Lcom/wanam/systemui/quickpanel/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleBluetooth"

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getText()I
    .registers 2

    const v0, 0x30b0046

    return v0
.end method

.method protected handleLongClick()Z
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    sget-object v0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->sBluetoothState:Lcom/wanam/systemui/quickpanel/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/wanam/systemui/quickpanel/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected toggleState()V
    .registers 3

    sget-object v0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->sBluetoothState:Lcom/wanam/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanam/systemui/quickpanel/StateTracker;->toggleState(Landroid/content/Context;)V

    return-void
.end method

.method protected updateState()V
    .registers 5

    const v3, 0x3020075

    const v2, 0x3020074

    sget-object v0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->sBluetoothState:Lcom/wanam/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanam/systemui/quickpanel/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->mState:I

    iget v0, p0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->mState:I

    packed-switch v0, :pswitch_data_2e

    :goto_19
    :pswitch_19
    return-void

    :pswitch_1a
    iput v2, p0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->mIcon:I

    goto :goto_19

    :pswitch_1d
    iput v3, p0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->mIcon:I

    goto :goto_19

    :pswitch_20
    sget-object v0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->sBluetoothState:Lcom/wanam/systemui/quickpanel/StateTracker;

    invoke-virtual {v0}, Lcom/wanam/systemui/quickpanel/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_2b

    iput v3, p0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->mIcon:I

    goto :goto_19

    :cond_2b
    iput v2, p0, Lcom/wanam/systemui/quickpanel/BluetoothButton;->mIcon:I

    goto :goto_19

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_20
    .end packed-switch
.end method
