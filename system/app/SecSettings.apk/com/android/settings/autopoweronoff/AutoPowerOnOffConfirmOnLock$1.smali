.class Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;
.super Landroid/os/CountDownTimer;
.source "AutoPowerOnOffConfirmOnLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;


# direct methods
.method constructor <init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;

    iget-object v1, v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    sget-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;

    iget-object v1, v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    return-void
.end method

.method public onTick(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;

    #calls: Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->updateText(J)V
    invoke-static {v0, p1, p2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;J)V

    return-void
.end method
