.class public Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;
.super Lcom/android/internal/app/AlertActivity;
.source "AutoPowerOnOffConfirmOnLock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static contentIntent:Landroid/app/PendingIntent;

.field static isTurningOff:Z

.field static mCountdownTimer:Landroid/os/CountDownTimer;

.field static mconfirmText:Landroid/widget/TextView;

.field static notification:Landroid/app/Notification;

.field static pm:Landroid/os/PowerManager;

.field static remainMilliSeconds:J

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private isAlarming:Z

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isAlarming:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->updateText(J)V

    return-void
.end method

.method private createView()Landroid/view/View;
    .registers 8

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mconfirmText:Landroid/widget/TextView;

    sget-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mconfirmText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const v4, 0x7f0d09d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const v4, 0x7f0d09d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private updateText(J)V
    .registers 15

    const-wide/16 v10, 0x7530

    const-wide/16 v3, 0x0

    const v9, 0x7f0d09d5

    const v6, 0x7f0d09d4

    const-wide/16 v7, 0x3e8

    sub-long v1, p1, v7

    sput-wide v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    sget-wide v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_82

    sput-wide v3, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    :cond_18
    :goto_18
    sget-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mconfirmText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    div-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->notification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const v4, 0x7f0d09d6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-direct {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_82
    sget-wide v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    cmp-long v1, v1, v10

    if-lez v1, :cond_18

    sput-wide v10, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    goto :goto_18
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_5e

    :goto_6
    return-void

    :pswitch_7
    sget-object v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_12

    sget-object v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    sput-object v3, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_12
    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->startActivity(Landroid/content/Intent;)V

    sput-boolean v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    goto :goto_6

    :pswitch_32
    sget-object v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_3d

    sget-object v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    sput-object v3, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_3d
    sget-object v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_48

    sget-object v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    sput-object v3, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_48
    invoke-direct {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    sput-boolean v4, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->finish()V

    goto :goto_6

    :pswitch_data_5e
    .packed-switch -0x2
        :pswitch_32
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    const-wide/16 v4, 0x3e8

    const v10, 0x7f0d09d6

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_19
    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->pm:Landroid/os/PowerManager;

    sget-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->pm:Landroid/os/PowerManager;

    const v1, 0x3000000a

    const-string v2, "AutoPowerOffConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p0, v9}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x280080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x1080027

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p0, v10}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x7f0d09d7

    invoke-virtual {p0, v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f0d09d8

    invoke-virtual {p0, v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->setupAlert()V

    sput-boolean v8, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    new-instance v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;

    const-wide/16 v2, 0x7d00

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;-><init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    sput-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0200eb

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v2, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->notification:Landroid/app/Notification;

    const-class v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirm;

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_100

    const-class v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;

    :goto_b0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fromNotificationManager"

    invoke-virtual {v2, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->contentIntent:Landroid/app/PendingIntent;

    sget-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->notification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const v8, 0x7f0d09d4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    div-long v4, v7, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const v6, 0x7f0d09d5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    sget-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v9, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_100
    move-object v1, v2

    goto :goto_b0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2e

    sget-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    sput-object v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_f
    sget-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    sput-object v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1a
    invoke-direct {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    :cond_2e
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    sget-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_f
    sget-boolean v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    :cond_1c
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    return-void
.end method
