.class public Lcom/android/systemui/usb/StorageNotification;
.super Landroid/os/storage/StorageEventListener;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final POP_UMS_ACTIVITY_ON_CONNECT:Z = true

.field private static final TAG:Ljava/lang/String; = "StorageNotification"

.field private static final UPDATE_DELAY:I = 0x7d0

.field private static final USBHOST_UPDATE_STATE:I = 0x1


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mNotificationEventHandler:Landroid/os/Handler;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 84
    const-string v3, "storage"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 85
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    .line 86
    .local v0, connected:Z
    const-string v3, "StorageNotification"

    const-string v4, "Startup with UMS connection %s (media state %s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 91
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "SystemUI StorageNotification"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, thr:Landroid/os/HandlerThread;
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SystemUI StorageNotification2"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, thr2:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 94
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 96
    new-instance v3, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationHandler;-><init>(Lcom/android/systemui/usb/StorageNotification;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChanged(Z)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getMediaStorageNotificationDismissable()Z
    .locals 2

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 473
    const/4 v0, 0x1

    .line 475
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideNotification(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 656
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 659
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 660
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notificationManager is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :goto_0
    return-void

    .line 664
    :cond_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 665
    .local v1, notification:Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 666
    const/4 v3, 0x0

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 667
    iget v3, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 670
    :try_start_0
    invoke-virtual {v2, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 674
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSDCard(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 642
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    .line 643
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 644
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    const/4 v2, 0x1

    .line 650
    :goto_1
    return v2

    .line 643
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isStorageRemovable(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 618
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v3

    .line 619
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 620
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 621
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    const/4 v2, 0x1

    .line 627
    :cond_0
    return v2

    .line 619
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isUsbHostDevice(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 631
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    .line 632
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 633
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    const/4 v2, 0x1

    .line 638
    :goto_1
    return v2

    .line 632
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 154
    const-string v2, "StorageNotification"

    const-string v3, "Media {%s} state changed from {%s} -> {%s}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isUsbHostDevice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-direct/range {p0 .. p3}, Lcom/android/systemui/usb/StorageNotification;->onUsbHostStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :goto_0
    return-void

    .line 162
    :cond_0
    const-string v2, "shared"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v17, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/usb/UsbStorageActivity;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 170
    .local v8, pi:Landroid/app/PendingIntent;
    const v3, 0x10404dd

    const v4, 0x10404de

    const v5, 0x1080668

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 174
    .end local v8           #pi:Landroid/app/PendingIntent;
    .end local v17           #intent:Landroid/content/Intent;
    :cond_1
    const-string v2, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 182
    .local v19, msg1:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 183
    const-string v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageStateChangedAsync :: failed to send message for 2GB SD card"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 187
    .end local v19           #msg1:Landroid/os/Message;
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    const v10, 0x1040506

    const v11, 0x1040507

    const v12, 0x10800ab

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 198
    :goto_1
    const v20, 0x10800ab

    .line 199
    .local v20, notificationId:I
    const v2, 0x10800ab

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->hideNotification(I)V

    goto/16 :goto_0

    .line 193
    .end local v20           #notificationId:I
    :cond_4
    const v10, 0x1040505

    const v11, 0x1040507

    const v12, 0x10800ab

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :cond_5
    const-string v2, "mounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 206
    const-string v2, "checking"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 207
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 208
    const v10, 0x1040506

    const v11, 0x1040507

    const v12, 0x10800ab

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 221
    :cond_6
    :goto_2
    const v20, 0x10800ab

    .line 222
    .restart local v20       #notificationId:I
    const v2, 0x10800ab

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->hideNotification(I)V

    .line 223
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 214
    .end local v20           #notificationId:I
    :cond_7
    const v10, 0x1040505

    const v11, 0x1040507

    const v12, 0x10800ab

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_2

    .line 225
    :cond_8
    const-string v2, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v2

    if-nez v2, :cond_c

    .line 232
    const-string v2, "shared"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 237
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 244
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isStorageRemovable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "removed"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 247
    .local v18, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-nez v2, :cond_a

    .line 248
    const-string v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageStateChangedAsync :: failed to send message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v18           #msg:Landroid/os/Message;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 267
    :cond_b
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_3

    .line 276
    :cond_c
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :cond_d
    const-string v2, "nofs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    :cond_e
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 289
    .restart local v17       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 290
    const-string v2, "storage_volume"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 292
    .restart local v8       #pi:Landroid/app/PendingIntent;
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 293
    const v3, 0x1040509

    const v4, 0x104050b

    const v5, 0x108007b

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 303
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 298
    :cond_f
    const v3, 0x1040508

    const v4, 0x104050a

    const v5, 0x108007b

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_4

    .line 304
    .end local v8           #pi:Landroid/app/PendingIntent;
    .end local v17           #intent:Landroid/content/Intent;
    :cond_10
    const-string v2, "unmountable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    :cond_11
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 314
    .restart local v17       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 315
    const-string v2, "storage_volume"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 317
    .restart local v8       #pi:Landroid/app/PendingIntent;
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 318
    const v3, 0x104050d

    const v4, 0x104050f

    const v5, 0x108007b

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 328
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 323
    :cond_12
    const v3, 0x104050c

    const v4, 0x104050e

    const v5, 0x108007b

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_5

    .line 329
    .end local v8           #pi:Landroid/app/PendingIntent;
    .end local v17           #intent:Landroid/content/Intent;
    :cond_13
    const-string v2, "removed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 334
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 335
    const v10, 0x1040519

    const v11, 0x104051b

    const v12, 0x108007b

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 347
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 341
    :cond_14
    const v10, 0x1040518

    const v11, 0x104051a

    const v12, 0x108007b

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_6

    .line 348
    :cond_15
    const-string v2, "bad_removal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 356
    const v10, 0x1040511

    const v11, 0x1040513

    const v12, 0x108008a

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 369
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 362
    :cond_16
    const v10, 0x1040510

    const v11, 0x1040512

    const v12, 0x108008a

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_7

    .line 371
    :cond_17
    const-string v2, "StorageNotification"

    const-string v3, "Ignoring unknown state {%s}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onUsbHostStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 547
    const-string v1, "StorageNotification"

    const-string v2, "onUsbHostStateChangedAsync :: Media {%s} state changed from {%s} -> {%s}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v1, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 555
    .local v16, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/UsbStorageUnmountActivity;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 556
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 558
    .local v7, pi:Landroid/app/PendingIntent;
    const v2, 0x10405f1

    const v3, 0x10405f3

    const v4, 0x1080668

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v1, "usbstorages"

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 615
    .end local v7           #pi:Landroid/app/PendingIntent;
    .end local v16           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    const-string v1, "removed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 572
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/String;

    const-string v1, "usbstorages"

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_2
    const-string v1, "bad_removal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    const v9, 0x10405f4

    const v10, 0x10405f5

    const v11, 0x108008a

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/String;

    const-string v1, "usbstorages"

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_3
    const-string v1, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 584
    const-string v1, "removed"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 586
    .local v17, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 587
    const-string v1, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUsbHostStateChangedAsync :: failed to send message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v17           #msg:Landroid/os/Message;
    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/String;

    const-string v1, "usbstorages"

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    :cond_5
    const-string v1, "nofs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 594
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    :cond_6
    const v9, 0x1040508

    const v10, 0x104050a

    const v11, 0x108007b

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/String;

    const-string v1, "usbstorages"

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 603
    :cond_7
    const-string v1, "unmountable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    :cond_8
    const v9, 0x104050c

    const v10, 0x104050e

    const v11, 0x108007b

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/String;

    const-string v1, "usbstorages"

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 6
    .parameter "connected"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    .line 120
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, st:Ljava/lang/String;
    const-string v1, "StorageNotification"

    const-string v2, "UMS connection changed to %s (media state %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eqz v0, :cond_2

    .line 125
    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    const-string v1, "StorageNotification"

    const-string v2, "No card or card being checked = don\'t display"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 p1, 0x0

    .line 137
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 138
    return-void

    .line 134
    :cond_2
    const-string v1, "StorageNotification"

    const-string v2, "ExternalStorageState is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 10
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "pi"
    .parameter "path"

    .prologue
    .line 484
    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 544
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 488
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 491
    .local v4, notificationManager:Landroid/app/NotificationManager;
    if-eqz v4, :cond_0

    .line 495
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v7, :cond_2

    if-eqz p4, :cond_2

    .line 502
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 503
    .local v3, notificationId:I
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 506
    .end local v3           #notificationId:I
    :cond_2
    if-eqz p4, :cond_5

    .line 507
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 508
    .local v5, r:Landroid/content/res/Resources;
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 509
    .local v6, title:Ljava/lang/CharSequence;
    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 511
    .local v2, message:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v7, :cond_3

    .line 512
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 513
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 516
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->defaults:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v7, Landroid/app/Notification;->defaults:I

    .line 518
    if-eqz p5, :cond_6

    .line 519
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v8, 0x10

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 524
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v6, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 525
    if-nez p6, :cond_4

    .line 526
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 527
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 531
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput p3, v7, Landroid/app/Notification;->icon:I

    .line 532
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v7, v8, v6, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 536
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 537
    .restart local v3       #notificationId:I
    if-eqz p4, :cond_7

    .line 538
    const-string v7, "StorageNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMediaStorageNotification : notify id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", title = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v9, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 484
    .end local v3           #notificationId:I
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 521
    .restart local v2       #message:Ljava/lang/CharSequence;
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    .restart local v5       #r:Landroid/content/res/Resources;
    .restart local v6       #title:Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 541
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #title:Ljava/lang/CharSequence;
    .restart local v3       #notificationId:I
    :cond_7
    const-string v7, "StorageNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMediaStorageNotification : cancel id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 12
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "sound"
    .parameter "visible"
    .parameter "pi"

    .prologue
    .line 402
    monitor-enter p0

    if-nez p5, :cond_1

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 467
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 407
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 410
    .local v5, notificationManager:Landroid/app/NotificationManager;
    if-eqz v5, :cond_0

    .line 414
    if-eqz p5, :cond_4

    .line 415
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 416
    .local v6, r:Landroid/content/res/Resources;
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 417
    .local v7, title:Ljava/lang/CharSequence;
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 419
    .local v3, message:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    if-nez v8, :cond_2

    .line 420
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    .line 421
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput p3, v8, Landroid/app/Notification;->icon:I

    .line 422
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    .line 425
    :cond_2
    if-eqz p4, :cond_5

    .line 426
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/app/Notification;->defaults:I

    .line 431
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v9, 0x2

    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 433
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput-object v7, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 434
    if-nez p6, :cond_3

    .line 435
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v2, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 439
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v7, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 440
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "adb_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_6

    const/4 v1, 0x1

    .line 445
    .local v1, adbOn:Z
    :goto_2
    if-nez v1, :cond_4

    .line 455
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object/from16 v0, p6

    iput-object v0, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 459
    .end local v1           #adbOn:Z
    .end local v3           #message:Ljava/lang/CharSequence;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #title:Ljava/lang/CharSequence;
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v4, v8, Landroid/app/Notification;->icon:I

    .line 460
    .local v4, notificationId:I
    if-eqz p5, :cond_7

    .line 461
    const-string v8, "StorageNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setUsbStorageNotification : notify id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v10, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    invoke-virtual {v5, v4, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 402
    .end local v4           #notificationId:I
    .end local v5           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 428
    .restart local v3       #message:Ljava/lang/CharSequence;
    .restart local v5       #notificationManager:Landroid/app/NotificationManager;
    .restart local v6       #r:Landroid/content/res/Resources;
    .restart local v7       #title:Ljava/lang/CharSequence;
    :cond_5
    :try_start_2
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x2

    iput v9, v8, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 440
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 464
    .end local v3           #message:Ljava/lang/CharSequence;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #title:Ljava/lang/CharSequence;
    .restart local v4       #notificationId:I
    :cond_7
    const-string v8, "StorageNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setUsbStorageNotification : cancel id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 15
    .parameter "available"

    .prologue
    .line 380
    if-eqz p1, :cond_0

    .line 381
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 382
    .local v14, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 383
    const/high16 v0, 0x1000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 385
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 386
    .local v6, pi:Landroid/app/PendingIntent;
    const v1, 0x10404db

    const v2, 0x10404dc

    const v3, 0x1080668

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 394
    .end local v6           #pi:Landroid/app/PendingIntent;
    .end local v14           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 392
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
