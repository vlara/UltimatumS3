.class Lcom/android/settings/MasterClearModemReset$1;
.super Landroid/os/Handler;
.source "MasterClearModemReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClearModemReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClearModemReset;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearModemReset;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/MasterClearModemReset$1;->this$0:Lcom/android/settings/MasterClearModemReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_24

    const-string v1, "MasterClearModemReset"

    const-string v2, "Something weird happened"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void

    :pswitch_17
    const-string v1, "MasterClearModemReset"

    const-string v2, "Modem reset is done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/MasterClearModemReset$1;->this$0:Lcom/android/settings/MasterClearModemReset;

    #calls: Lcom/android/settings/MasterClearModemReset;->sendMasterClearIntent()V
    invoke-static {v1}, Lcom/android/settings/MasterClearModemReset;->access$000(Lcom/android/settings/MasterClearModemReset;)V

    goto :goto_16

    :pswitch_data_24
    .packed-switch 0x3f0
        :pswitch_17
    .end packed-switch
.end method
