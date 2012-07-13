.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# static fields
.field static final BATTERY_ONLINE_FILE_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/online"

.field static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final BATTERY_PLUGGED_WIRELESS_CHARGER:I = 0xa

.field static final DEBUG:Z = false

.field static final FULLBATTERY_SCREEN_TIMEOUT:I = 0x4e20

.field static final LOWBATTERY_SCREEN_TIMEOUT:I = 0x3a98

.field static final NOT_CHARGE_PERIOD:I = 0xea60

.field static final OVER_CURRENT_FILE_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/current_avg"

.field static final OVER_CURRENT_THRESHOLD:I = 0x0

.field static final TAG:Ljava/lang/String; = "PowerUI"

.field static final WIRELESS_CHARGE_DURATION:I = 0xfa0


# instance fields
.field mBatteryHealth:I

.field mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field mBatteryOnline:I

.field mBatteryStatus:I

.field mFullBatteryNotification:Landroid/app/Notification;

.field mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mInvalidCharger:I

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field mLowBatteryReminderLevels:[I

.field mNotChargeDialog:Landroid/app/AlertDialog;

.field mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

.field mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

.field mNotChargeTask:Ljava/lang/Runnable;

.field mNotificationPlayer:Lcom/android/server/NotificationPlayer;

.field mPlugType:I

.field mWirelessChargeDialog:Landroid/app/AlertDialog;

.field mWirelessChargeTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 81
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 82
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 83
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 84
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 86
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 157
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 513
    new-instance v0, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeTask:Ljava/lang/Runnable;

    .line 554
    new-instance v0, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .parameter "level"

    .prologue
    const/4 v2, 0x0

    .line 142
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    .line 143
    const/4 v2, 0x1

    .line 151
    :cond_0
    :goto_0
    return v2

    .line 145
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-gt p1, v3, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 149
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 150
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 151
    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 149
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 154
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method cancelFullBatteryNotification()V
    .locals 3

    .prologue
    .line 597
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 601
    .local v0, notificationManager:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 603
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 605
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method dismissInvalidChargerDialog()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 428
    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 309
    :cond_0
    return-void
.end method

.method dismissNotChargeDialog()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 460
    :cond_0
    return-void
.end method

.method dismissWirelessChargeDialog()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 523
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 768
    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 770
    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    const-string v0, "mInvalidChargerDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    const-string v0, "mLowBatteryDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 781
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 782
    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 783
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 785
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method getBatteryOnline()I
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 720
    const/4 v3, 0x0

    .line 721
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 722
    .local v5, fileReader:Ljava/io/FileReader;
    const/16 v9, 0xa

    new-array v4, v9, [C

    .line 724
    .local v4, fileBuffer:[C
    const/4 v0, 0x0

    .line 727
    .local v0, batteryOnline:I
    new-instance v3, Ljava/io/File;

    .end local v3           #file:Ljava/io/File;
    const-string v9, "/sys/class/power_supply/battery/online"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 728
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 729
    const-string v9, "PowerUI"

    const-string v10, "getBatteryOnline : battery online file not found"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    :goto_0
    return v8

    .line 734
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 736
    .end local v5           #fileReader:Ljava/io/FileReader;
    .local v6, fileReader:Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/io/FileReader;->read([C)I

    move-result v1

    .line 737
    .local v1, count:I
    const/4 v9, -0x1

    if-ne v9, v1, :cond_3

    .line 738
    const-string v9, "PowerUI"

    const-string v10, "getBatteryOnline : battery online file is empty"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 739
    const/4 v0, 0x0

    .line 755
    :goto_1
    if-eqz v6, :cond_6

    .line 757
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .end local v1           #count:I
    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    :cond_2
    :goto_2
    move v8, v0

    .line 764
    goto :goto_0

    .line 741
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v1       #count:I
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :cond_3
    :try_start_3
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([C)V

    new-instance v10, Ljava/lang/String;

    const-string v11, "\n"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 742
    .local v7, splitString:[Ljava/lang/String;
    if-nez v7, :cond_4

    .line 743
    const-string v9, "PowerUI"

    const-string v10, "getBatteryOnline : failed to split buffer"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/4 v0, 0x0

    goto :goto_1

    .line 746
    :cond_4
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v0

    goto :goto_1

    .line 758
    .end local v7           #splitString:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 759
    .local v2, exception:Ljava/io/IOException;
    const-string v8, "PowerUI"

    const-string v9, "getBatteryOnline : failed to close battery online file"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 760
    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_2

    .line 749
    .end local v1           #count:I
    .end local v2           #exception:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 750
    .local v2, exception:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    const-string v9, "PowerUI"

    const-string v10, "getBatteryOnline : failed to open battery online file"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 755
    if-eqz v5, :cond_0

    .line 757
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 758
    :catch_2
    move-exception v2

    .line 759
    .local v2, exception:Ljava/io/IOException;
    const-string v9, "PowerUI"

    const-string v10, "getBatteryOnline : failed to close battery online file"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 752
    .end local v2           #exception:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 753
    .restart local v2       #exception:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v8, "PowerUI"

    const-string v9, "getBatteryOnline : failed to read battery online file"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 755
    if-eqz v5, :cond_2

    .line 757
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 758
    :catch_4
    move-exception v2

    .line 759
    const-string v8, "PowerUI"

    const-string v9, "getBatteryOnline : failed to close battery online file"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 755
    .end local v2           #exception:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v5, :cond_5

    .line 757
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 760
    :cond_5
    :goto_6
    throw v8

    .line 758
    :catch_5
    move-exception v2

    .line 759
    .restart local v2       #exception:Ljava/io/IOException;
    const-string v9, "PowerUI"

    const-string v10, "getBatteryOnline : failed to close battery online file"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 755
    .end local v2           #exception:Ljava/io/IOException;
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_5

    .line 752
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_4

    .line 749
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_3

    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v1       #count:I
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :cond_6
    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_2
.end method

.method isOverCurrent()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 666
    const/4 v3, 0x0

    .line 667
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 668
    .local v5, fileReader:Ljava/io/FileReader;
    const/16 v9, 0xa

    new-array v4, v9, [C

    .line 670
    .local v4, fileBuffer:[C
    const/4 v1, 0x1

    .line 673
    .local v1, currentAvg:I
    new-instance v3, Ljava/io/File;

    .end local v3           #file:Ljava/io/File;
    const-string v9, "/sys/class/power_supply/battery/current_avg"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 674
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 675
    const-string v9, "PowerUI"

    const-string v10, "isOverCurrent : over current file not found"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    :goto_0
    return v8

    .line 680
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 682
    .end local v5           #fileReader:Ljava/io/FileReader;
    .local v6, fileReader:Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/io/FileReader;->read([C)I

    move-result v0

    .line 683
    .local v0, count:I
    const/4 v9, -0x1

    if-ne v9, v0, :cond_3

    .line 684
    const-string v9, "PowerUI"

    const-string v10, "isOverCurrent : over current file is empty"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 685
    const/4 v1, 0x1

    .line 701
    :goto_1
    if-eqz v6, :cond_7

    .line 703
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 710
    .end local v0           #count:I
    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    :cond_2
    :goto_2
    if-ltz v1, :cond_6

    .line 711
    const-string v9, "PowerUI"

    const-string v10, "isOverCurrent : not overcurrent"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 687
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v0       #count:I
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :cond_3
    :try_start_3
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([C)V

    new-instance v10, Ljava/lang/String;

    const-string v11, "\n"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 688
    .local v7, splitString:[Ljava/lang/String;
    if-nez v7, :cond_4

    .line 689
    const-string v9, "PowerUI"

    const-string v10, "isOverCurrent : failed to split buffer"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v1, 0x1

    goto :goto_1

    .line 692
    :cond_4
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v1

    goto :goto_1

    .line 704
    .end local v7           #splitString:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 705
    .local v2, exception:Ljava/io/IOException;
    const-string v9, "PowerUI"

    const-string v10, "isOverCurrent : failed to close over current file"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 706
    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_2

    .line 695
    .end local v0           #count:I
    .end local v2           #exception:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 696
    .local v2, exception:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    const-string v9, "PowerUI"

    const-string v10, "isOverCurrent : failed to open over current file"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 701
    if-eqz v5, :cond_0

    .line 703
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 704
    :catch_2
    move-exception v2

    .line 705
    .local v2, exception:Ljava/io/IOException;
    const-string v9, "PowerUI"

    const-string v10, "isOverCurrent : failed to close over current file"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 698
    .end local v2           #exception:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 699
    .restart local v2       #exception:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v9, "PowerUI"

    const-string v10, "isOverCurrent : failed to read over current file"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 701
    if-eqz v5, :cond_2

    .line 703
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 704
    :catch_4
    move-exception v2

    .line 705
    const-string v9, "PowerUI"

    const-string v10, "isOverCurrent : failed to close over current file"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 701
    .end local v2           #exception:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v5, :cond_5

    .line 703
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 706
    :cond_5
    :goto_6
    throw v8

    .line 704
    :catch_5
    move-exception v2

    .line 705
    .restart local v2       #exception:Ljava/io/IOException;
    const-string v9, "PowerUI"

    const-string v10, "isOverCurrent : failed to close over current file"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 714
    .end local v2           #exception:Ljava/io/IOException;
    :cond_6
    const-string v8, "PowerUI"

    const-string v9, "isOverCurrent : overcurrent"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 701
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_5

    .line 698
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_4

    .line 695
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_3

    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v0       #count:I
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :cond_7
    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_2
.end method

.method notifyFullBatteryNotification()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 561
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 563
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 564
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get NotificationManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0800a6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 569
    .local v6, title:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0800a7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 571
    .local v5, text:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-nez v7, :cond_1

    .line 572
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 573
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const v8, 0x7f02007a

    iput v8, v7, Landroid/app/Notification;->icon:I

    .line 574
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 575
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 576
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 579
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 580
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 582
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 584
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    invoke-virtual {v2, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 586
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 587
    .local v4, powerManager:Landroid/os/PowerManager;
    if-nez v4, :cond_2

    .line 588
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    :cond_2
    const v7, 0x10000006

    const-string v8, "PowerUI"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 593
    .local v0, fullBatteryScreenDimLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v7, 0x4e20

    invoke-virtual {v0, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method playSound(Landroid/net/Uri;)V
    .locals 8
    .parameter "soundUri"

    .prologue
    .line 608
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/server/NotificationPlayer;

    if-nez v4, :cond_0

    .line 611
    const-string v4, "PowerUI"

    const-string v5, "playSound : NotificationPlayer is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v4, Lcom/android/server/NotificationPlayer;

    const-string v5, "PowerUI"

    invoke-direct {v4, v5}, Lcom/android/server/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/server/NotificationPlayer;

    .line 614
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/server/NotificationPlayer;

    if-nez v4, :cond_0

    .line 615
    const-string v4, "PowerUI"

    const-string v5, "playSound : fail to new NotificationPlayer"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 623
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 630
    .local v2, ringerMode:I
    :goto_1
    const/4 v4, 0x2

    if-ne v4, v2, :cond_2

    .line 631
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/server/NotificationPlayer;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v4, v5, p1, v6, v7}, Lcom/android/server/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 632
    const-string v4, "PowerUI"

    const-string v5, "RINGER_MODE_NORMAL"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, exception:Ljava/lang/Exception;
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSound : Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 626
    .end local v1           #exception:Ljava/lang/Exception;
    .end local v2           #ringerMode:I
    :cond_1
    const/4 v2, 0x2

    .restart local v2       #ringerMode:I
    goto :goto_1

    .line 633
    :cond_2
    const/4 v4, 0x1

    if-ne v4, v2, :cond_4

    .line 634
    :try_start_1
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    .line 635
    .local v3, vibrator:Landroid/os/Vibrator;
    if-eqz v3, :cond_3

    .line 636
    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 640
    :goto_2
    const-string v4, "PowerUI"

    const-string v5, "RINGER_MODE_VIBRATE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 638
    :cond_3
    const-string v4, "PowerUI"

    const-string v5, "playSound : fail to new Vibrator"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 641
    .end local v3           #vibrator:Landroid/os/Vibrator;
    :cond_4
    if-nez v2, :cond_5

    .line 642
    const-string v4, "PowerUI"

    const-string v5, "RINGER_MODE_SILENT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 644
    :cond_5
    const-string v4, "PowerUI"

    const-string v5, "unknown RINGER_MODE"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method showInvalidChargerDialog()V
    .locals 4

    .prologue
    .line 431
    const-string v2, "PowerUI"

    const-string v3, "showing invalid charger dialog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 435
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 436
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 437
    const v2, 0x7f080014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 438
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 439
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 441
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 442
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 449
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 450
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 451
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    .line 452
    return-void
.end method

.method showLowBatteryWarning()V
    .locals 17

    .prologue
    .line 312
    const-string v14, "PowerUI"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-nez v13, :cond_0

    const-string v13, "showing"

    :goto_0
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " low battery warning: level="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " ["

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "]"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "SHOULD_SHUT_DOWN"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v13, v14, :cond_1

    const/4 v6, 0x1

    .line 321
    .local v6, isFactoryMode:Z
    :goto_1
    if-eqz v6, :cond_2

    .line 322
    const-string v13, "PowerUI"

    const-string v14, "don\'t show Low battery warning in Factory mode"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_2
    return-void

    .line 312
    .end local v6           #isFactoryMode:Z
    :cond_0
    const-string v13, "updating"

    goto :goto_0

    .line 319
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 326
    .restart local v6       #isFactoryMode:Z
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v2

    .line 327
    .local v2, bucket:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v14, 0x7f0800ae

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, levelText:Ljava/lang/CharSequence;
    const/4 v13, -0x2

    if-ne v13, v2, :cond_3

    .line 331
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v14, 0x7f0800ad

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 336
    .local v11, title:Ljava/lang/CharSequence;
    :goto_3
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v13, v14, :cond_4

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v14, 0x7f0800af

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 342
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v13, :cond_5

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13, v11}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 388
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 389
    .local v3, cr:Landroid/content/ContentResolver;
    const-string v13, "low_battery_sound"

    invoke-static {v3, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 390
    .local v10, soundPath:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/power/PowerUI;->playSound(Landroid/net/Uri;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v14, "power"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 393
    .local v9, powerManager:Landroid/os/PowerManager;
    if-nez v9, :cond_7

    .line 394
    const-string v13, "PowerUI"

    const-string v14, "showLowBatteryWarning : fail to get PowerManager reference"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 333
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v9           #powerManager:Landroid/os/PowerManager;
    .end local v10           #soundPath:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v14, 0x7f0800ac

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 339
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v14, 0x7f0800ae

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 346
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/high16 v14, 0x7f03

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 347
    .local v12, v:Landroid/view/View;
    const/high16 v13, 0x20

    invoke-virtual {v12, v13}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 348
    const v13, 0x7f0f0001

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    .local v1, b:Landroid/app/AlertDialog$Builder;
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 357
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 358
    const v13, 0x1010355

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 359
    const v13, 0x104000a

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 361
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v5, intent:Landroid/content/Intent;
    const/high16 v13, 0x5880

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 367
    const v13, 0x7f080015

    new-instance v14, Lcom/android/systemui/power/PowerUI$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    :cond_6
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 377
    .local v4, d:Landroid/app/AlertDialog;
    new-instance v13, Lcom/android/systemui/power/PowerUI$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 383
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x7d9

    invoke-virtual {v13, v14}, Landroid/view/Window;->setType(I)V

    .line 384
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 385
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_5

    .line 397
    .end local v1           #b:Landroid/app/AlertDialog$Builder;
    .end local v4           #d:Landroid/app/AlertDialog;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v12           #v:Landroid/view/View;
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v9       #powerManager:Landroid/os/PowerManager;
    .restart local v10       #soundPath:Ljava/lang/String;
    :cond_7
    const v13, 0x10000006

    const-string v14, "PowerUI"

    invoke-virtual {v9, v13, v14}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    .line 399
    .local v8, lowBatteryScreenDimLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v13, 0x3a98

    invoke-virtual {v8, v13, v14}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_2
.end method

.method showNotChargeDialog()V
    .locals 7

    .prologue
    .line 463
    const-string v5, "PowerUI"

    const-string v6, "showNotChargeDialog()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v5, 0x3

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v5, v6, :cond_0

    .line 467
    const v2, 0x7f0800a3

    .line 478
    .local v2, messageId:I
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 479
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 480
    const v5, 0x7f0800a1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 481
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 482
    const v5, 0x1010355

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 483
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 485
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 486
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 496
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 497
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 498
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeDialog:Landroid/app/AlertDialog;

    .line 500
    const-string v5, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/power/PowerUI;->playSound(Landroid/net/Uri;)V

    .line 502
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 503
    .local v4, powerManager:Landroid/os/PowerManager;
    if-nez v4, :cond_3

    .line 504
    const-string v5, "PowerUI"

    const-string v6, "showNotChargeDialog : fail to get PowerManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    .end local v2           #messageId:I
    .end local v4           #powerManager:Landroid/os/PowerManager;
    :goto_1
    return-void

    .line 468
    :cond_0
    const/4 v5, 0x7

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v5, v6, :cond_1

    .line 469
    const v2, 0x7f0800a4

    .restart local v2       #messageId:I
    goto :goto_0

    .line 470
    .end local v2           #messageId:I
    :cond_1
    const/4 v5, 0x6

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v5, v6, :cond_2

    .line 471
    const v2, 0x7f0800a2

    .restart local v2       #messageId:I
    goto :goto_0

    .line 473
    .end local v2           #messageId:I
    :cond_2
    const-string v5, "PowerUI"

    const-string v6, "status is NotCharging but health is wrong value"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 507
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v1       #d:Landroid/app/AlertDialog;
    .restart local v2       #messageId:I
    .restart local v4       #powerManager:Landroid/os/PowerManager;
    :cond_3
    const v5, 0x10000006

    const-string v6, "PowerUI"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 509
    .local v3, notChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 510
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method showWirelessChargeDialog()V
    .locals 6

    .prologue
    .line 526
    const-string v2, "PowerUI"

    const-string v3, "showWirelessChargeDialog()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 530
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 531
    const v2, 0x7f0800b3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 532
    const v2, 0x7f0800b4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 533
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 534
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 536
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 537
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 545
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 546
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 547
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeDialog:Landroid/app/AlertDialog;

    .line 549
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 552
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 106
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 108
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v2, v3

    .line 110
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    aput v3, v2, v6

    .line 113
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 114
    .local v1, powerManager:Landroid/os/PowerManager;
    if-nez v1, :cond_0

    .line 115
    const-string v2, "PowerUI"

    const-string v3, "start : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    new-instance v2, Lcom/android/server/NotificationPlayer;

    const-string v3, "PowerUI"

    invoke-direct {v2, v3}, Lcom/android/server/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/server/NotificationPlayer;

    .line 122
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/server/NotificationPlayer;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 129
    return-void

    .line 117
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    const/4 v2, 0x6

    const-string v3, "PowerUI"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 118
    const-string v2, "PowerUI"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method turnOnScreen()V
    .locals 6

    .prologue
    .line 652
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 653
    .local v1, powerManager:Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    .line 654
    const-string v2, "PowerUI"

    const-string v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_0
    return-void

    .line 659
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, exception:Landroid/os/RemoteException;
    const-string v2, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
