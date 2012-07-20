.class Lcom/android/settings/wfd/WfdPickerActivity$5;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5

    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " connect fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_29
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2002(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/16 v1, 0xb

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2800(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2202(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    const-string v0, "WfdPickerActivity"

    const-string v1, "WakeUnLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/16 v1, 0xd

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2900(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    const-string v0, "WfdPickerActivity"

    const-string v1, " connect success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
