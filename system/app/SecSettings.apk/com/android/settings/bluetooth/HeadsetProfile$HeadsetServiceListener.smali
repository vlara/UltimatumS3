.class final Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/HeadsetProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeadsetServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/HeadsetProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/HeadsetProfile;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/HeadsetProfile;Lcom/android/settings/bluetooth/HeadsetProfile$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/android/settings/bluetooth/HeadsetProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 9

    iget-object v3, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings/bluetooth/HeadsetProfile;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    #setter for: Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v3, p2}, Lcom/android/settings/bluetooth/HeadsetProfile;->access$002(Lcom/android/settings/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings/bluetooth/HeadsetProfile;

    const/4 v4, 0x1

    #setter for: Lcom/android/settings/bluetooth/HeadsetProfile;->mProfileReady:Z
    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/HeadsetProfile;->access$102(Lcom/android/settings/bluetooth/HeadsetProfile;Z)Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetProfile;->access$000(Lcom/android/settings/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    :goto_1d
    return-void

    :cond_1e
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetProfile;->access$200(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_5f

    const-string v3, "HeadsetProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HeadsetProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetProfile;->access$200(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v4}, Lcom/android/settings/bluetooth/HeadsetProfile;->access$300(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/HeadsetProfile;->access$400(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    :cond_5f
    iget-object v3, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings/bluetooth/HeadsetProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetProfile;->access$400(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    goto :goto_1d
.end method

.method public onServiceDisconnected(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings/bluetooth/HeadsetProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/bluetooth/HeadsetProfile;->mProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HeadsetProfile;->access$102(Lcom/android/settings/bluetooth/HeadsetProfile;Z)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings/bluetooth/HeadsetProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HeadsetProfile;->access$002(Lcom/android/settings/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetProfile;->access$400(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    return-void
.end method