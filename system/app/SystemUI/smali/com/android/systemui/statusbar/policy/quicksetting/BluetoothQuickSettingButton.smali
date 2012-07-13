.class public Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "BluetoothQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 32
    const v3, 0x7f080085

    const v4, 0x7f02013a

    const v5, 0x7f020139

    const v6, 0x7f020138

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 19
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 22
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method private handleStateChanged(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 45
    const-string v0, "systemui/quicksetting/QuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    packed-switch p1, :pswitch_data_0

    .line 59
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 49
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 56
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 66
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->setActivateStatus(I)V

    .line 71
    :cond_0
    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 78
    const-string v0, "systemui/quicksetting/QuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() - state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 81
    const-string v0, "systemui/quicksetting/QuickSettingButton"

    const-string v1, "mBluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-eqz p1, :cond_2

    .line 86
    const-string v0, "systemui/quicksetting/QuickSettingButton"

    const-string v1, "Bluetooth activate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "systemui/quicksetting/QuickSettingButton"

    const-string v1, "Bluetooth deactivate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method
