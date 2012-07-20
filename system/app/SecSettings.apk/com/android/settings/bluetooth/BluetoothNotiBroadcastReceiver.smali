.class public final Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothNotiBroadcastReceiver.java"


# static fields
.field private static mNotiManager:Landroid/app/NotificationManager;

.field private static quickPanelOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private destroyNotification()V
    .registers 3

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    const v1, 0x1080080

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    :cond_f
    return-void
.end method

.method private displayNotification(Landroid/content/Context;)V
    .registers 10

    const v7, 0x7f0d00aa

    new-instance v0, Landroid/app/Notification;

    const v3, 0x7f020265

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d00ab

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/app/Notification;->defaults:I

    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    sget-object v3, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    const v4, 0x1080080

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/16 v5, 0xc

    const/high16 v4, -0x8000

    const-string v2, "BluetoothNotiBroadcastReceiver"

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v5, v1, :cond_1a

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->destroyNotification()V

    goto :goto_1a

    :cond_2f
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->destroyNotification()V

    goto :goto_1a

    :cond_3b
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v2, v1, :cond_51

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->destroyNotification()V

    goto :goto_1a

    :cond_51
    if-ne v5, v1, :cond_1a

    sget-boolean v2, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->displayNotification(Landroid/content/Context;)V

    goto :goto_1a
.end method
