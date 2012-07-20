.class public final Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;
.super Landroid/app/Activity;
.source "CheckBluetoothStateActivity.java"


# instance fields
.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private launchDevicePicker()V
    .registers 10

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v7, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v7, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3a

    const-string v7, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3a
    const-string v7, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_47

    const-string v7, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_47
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    if-nez p1, :cond_10

    const/16 v1, 0xa

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    if-nez p1, :cond_f

    const/16 v1, 0xc

    if-ne v0, v1, :cond_f

    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_15

    const-string v1, "CheckBluetoothStateActivity"

    const-string v2, "Bluetooth is not supported on this device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void

    :cond_15
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_33

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_14

    :cond_33
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto :goto_14
.end method
