.class public abstract Lcom/android/systemui/statusbar/StatusBar;
.super Lcom/android/systemui/SystemUI;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DBG_WAKE:Z = false

.field private static final SPEW:Z = false

.field static final TAG:Ljava/lang/String; = "StatusBar"

.field private static final TIMEOUT:I = 0x1

.field public static canStatusBarHide:Z

.field public static hasVibrator:Z

.field public static isGPSProviderSupported:Z

.field public static isNetworkSupported:Z

.field public static showStatusBarHelp:Z

.field public static supportHapticFeedback:Z

.field public static supportVoice:Z

.field public static useStatusBarWorldClock:Z

.field public static useTouchWizGUI:Z


# instance fields
.field private lp:Landroid/view/WindowManager$LayoutParams;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPM:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I

.field private sb:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 136
    new-instance v0, Lcom/android/systemui/statusbar/StatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBar$1;-><init>(Lcom/android/systemui/statusbar/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/StatusBar;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBar;->handleTimeout(I)V

    return-void
.end method

.method private handleTimeout(I)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 170
    monitor-enter p0

    .line 172
    :try_start_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakelockSequence:I

    if-ne p1, v0, :cond_a

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 175
    :cond_a
    monitor-exit p0

    .line 176
    return-void

    .line 175
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private updateStatusBarGlobalSettings()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 329
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_11} :catch_82

    .line 337
    :goto_11
    :try_start_11
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 339
    .local v4, wm:Landroid/view/IWindowManager;
    invoke-interface {v4}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->canStatusBarHide:Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_21} :catch_86

    .line 348
    .end local v4           #wm:Landroid/view/IWindowManager;
    :goto_21
    :try_start_21
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->supportVoice:Z
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_30} :catch_91

    .line 358
    :goto_30
    :try_start_30
    const-string v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 360
    .local v0, cm:Landroid/net/IConnectivityManager;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->isNetworkSupported:Z
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_41} :catch_9c

    .line 370
    .end local v0           #cm:Landroid/net/IConnectivityManager;
    :goto_41
    const/4 v5, 0x1

    :try_start_42
    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->isGPSProviderSupported:Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_44} :catch_a7

    .line 382
    :goto_44
    :try_start_44
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 383
    .local v3, v:Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->hasVibrator:Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_54} :catch_b2

    .line 392
    .end local v3           #v:Landroid/os/Vibrator;
    :goto_54
    :try_start_54
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->showStatusBarHelp:Z
    :try_end_63
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_54 .. :try_end_63} :catch_bd

    .line 402
    :goto_63
    :try_start_63
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->supportHapticFeedback:Z
    :try_end_72
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_63 .. :try_end_72} :catch_c8

    .line 411
    :goto_72
    :try_start_72
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->useStatusBarWorldClock:Z
    :try_end_81
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_72 .. :try_end_81} :catch_cc

    .line 418
    :goto_81
    return-void

    .line 330
    :catch_82
    move-exception v2

    .line 331
    .local v2, ex:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    goto :goto_11

    .line 340
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_86
    move-exception v1

    .line 341
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether status bar can hide"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->canStatusBarHide:Z

    goto :goto_21

    .line 350
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_91
    move-exception v2

    .line 351
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "StatusBar"

    const-string v6, "com.android.internal.R.bool.config_voice_capable not found"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    sput-boolean v8, Lcom/android/systemui/statusbar/StatusBar;->supportVoice:Z

    goto :goto_30

    .line 361
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_9c
    move-exception v1

    .line 362
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether network support"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->isNetworkSupported:Z

    goto :goto_41

    .line 374
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_a7
    move-exception v1

    .line 375
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether GPS provider support"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    sput-boolean v8, Lcom/android/systemui/statusbar/StatusBar;->isGPSProviderSupported:Z

    goto :goto_44

    .line 384
    .end local v1           #e:Ljava/lang/Exception;
    :catch_b2
    move-exception v1

    .line 385
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether has vibrator"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->hasVibrator:Z

    goto :goto_54

    .line 394
    .end local v1           #e:Ljava/lang/Exception;
    :catch_bd
    move-exception v2

    .line 395
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "StatusBar"

    const-string v6, "com.android.internal.R.bool.config_voice_capable not found"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->showStatusBarHelp:Z

    goto :goto_63

    .line 404
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_c8
    move-exception v2

    .line 405
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v8, Lcom/android/systemui/statusbar/StatusBar;->supportHapticFeedback:Z

    goto :goto_72

    .line 413
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_cc
    move-exception v2

    .line 414
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->useStatusBarWorldClock:Z

    goto :goto_81
.end method


# virtual methods
.method public abstract animateCollapse()V
.end method

.method public applyEDMPolicy()V
    .registers 5

    .prologue
    .line 430
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBar;->isSystemBarHidden()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 431
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBar;->sb:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 432
    const-string v1, "StatusBar"

    const-string v2, "Removed status bar view"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_16
    return-void

    .line 434
    :cond_17
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBar;->sb:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    const-string v1, "StatusBar"

    const-string v2, "Added status bar view"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_16

    .line 437
    :catch_2a
    move-exception v0

    .line 438
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed Applying policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method protected abstract getStatusBarGravity()I
.end method

.method public abstract getStatusBarHeight()I
.end method

.method public hideCallOnGoingView()V
    .registers 1

    .prologue
    .line 422
    return-void
.end method

.method protected isSystemBarHidden()Z
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isSystemBarHidden()Z

    move-result v0

    return v0
.end method

.method public isUnsecureKeyguardLocked()Z
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_16

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_16

    .line 181
    const/4 v0, 0x1

    .line 184
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected abstract makeStatusBarView()Landroid/view/View;
.end method

.method public pokeWakelock()V
    .registers 2

    .prologue
    .line 148
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBar;->pokeWakelock(I)V

    .line 149
    return-void
.end method

.method public pokeWakelock(I)V
    .registers 7
    .parameter "holdMs"

    .prologue
    .line 152
    monitor-enter p0

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBar;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakelockSequence:I

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBar;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 158
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBar;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 159
    monitor-exit p0

    .line 160
    return-void

    .line 159
    .end local v0           #msg:Landroid/os/Message;
    :catchall_24
    move-exception v1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public releaseWakelock()V
    .registers 2

    .prologue
    .line 163
    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 166
    :cond_e
    monitor-exit p0

    .line 167
    return-void

    .line 166
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public setMaxBrightness(I)V
    .registers 2
    .parameter "maxLevel"

    .prologue
    .line 425
    return-void
.end method

.method public showCallOnGoingView()V
    .registers 1

    .prologue
    .line 421
    return-void
.end method

.method public start()V
    .registers 23

    .prologue
    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->updateStatusBarGlobalSettings()V

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mPM:Landroid/os/PowerManager;

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mPM:Landroid/os/PowerManager;

    const v5, 0x1000001a

    const-string v11, "statusbar"

    invoke-virtual {v4, v5, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->makeStatusBarView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->sb:Landroid/view/View;

    .line 208
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v6}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 209
    .local v6, iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v7, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v8, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    new-instance v4, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 212
    const-string v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 214
    const/4 v4, 0x7

    new-array v9, v4, [I

    .line 215
    .local v9, switches:[I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v10, binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_74
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_7f} :catch_224

    .line 223
    :goto_7f
    const/4 v4, 0x0

    aget v4, v9, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBar;->disable(I)V

    .line 224
    const/4 v4, 0x1

    aget v4, v9, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBar;->setSystemUiVisibility(I)V

    .line 225
    const/4 v4, 0x2

    aget v4, v9, v4

    if-eqz v4, :cond_e9

    const/4 v4, 0x1

    :goto_95
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBar;->topAppWindowChanged(Z)V

    .line 227
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const/4 v5, 0x3

    aget v5, v9, v5

    const/4 v11, 0x4

    aget v11, v9, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v11}, Lcom/android/systemui/statusbar/StatusBar;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 228
    const/4 v4, 0x5

    aget v4, v9, v4

    if-eqz v4, :cond_eb

    const/4 v4, 0x1

    :goto_b2
    const/4 v5, 0x6

    aget v5, v9, v5

    if-eqz v5, :cond_ed

    const/4 v5, 0x1

    :goto_b8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/StatusBar;->setHardKeyboardStatus(ZZ)V

    .line 231
    invoke-virtual {v6}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v17

    .line 232
    .local v17, N:I
    const/16 v21, 0x0

    .line 233
    .local v21, viewIndex:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_c5
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_ef

    .line 234
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v20

    .line 235
    .local v20, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v20, :cond_e6

    .line 236
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 237
    add-int/lit8 v21, v21, 0x1

    .line 233
    :cond_e6
    add-int/lit8 v19, v19, 0x1

    goto :goto_c5

    .line 225
    .end local v17           #N:I
    .end local v19           #i:I
    .end local v20           #icon:Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v21           #viewIndex:I
    :cond_e9
    const/4 v4, 0x0

    goto :goto_95

    .line 228
    :cond_eb
    const/4 v4, 0x0

    goto :goto_b2

    :cond_ed
    const/4 v5, 0x0

    goto :goto_b8

    .line 242
    .restart local v17       #N:I
    .restart local v19       #i:I
    .restart local v21       #viewIndex:I
    :cond_ef
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 243
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ne v0, v4, :cond_11b

    .line 244
    const/16 v19, 0x0

    :goto_fd
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_143

    .line 245
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/StatusBar;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 244
    add-int/lit8 v19, v19, 0x1

    goto :goto_fd

    .line 248
    :cond_11b
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Notification list length mismatch: keys="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " notifications="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_143
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->getStatusBarHeight()I

    move-result v13

    .line 256
    .local v13, height:I
    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    const/4 v12, -0x1

    const/16 v14, 0x7d0

    const v15, 0x800048

    const/16 v16, 0x4

    invoke-direct/range {v11 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    .line 280
    .local v18, defaultDisplay:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->getStatusBarGravity()I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    const-string v5, "StatusBar"

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x7f0c0009

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 286
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Status bar view Desc: gravity=0x"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " icons="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " disabled=0x"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v11, 0x0

    aget v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " lights="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v11, 0x1

    aget v11, v9, v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " menu="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v11, 0x2

    aget v11, v9, v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " imeButton="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v11, 0x3

    aget v11, v9, v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->isSystemBarHidden()Z

    move-result v4

    if-nez v4, :cond_216

    .line 295
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBar;->sb:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5, v11}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    const-string v4, "StatusBar"

    const-string v5, "Added status bar view"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_216
    new-instance v4, Lcom/android/systemui/statusbar/DoNotDisturb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/DoNotDisturb;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    .line 301
    return-void

    .line 219
    .end local v13           #height:I
    .end local v17           #N:I
    .end local v18           #defaultDisplay:Landroid/view/Display;
    .end local v19           #i:I
    .end local v21           #viewIndex:I
    :catch_224
    move-exception v4

    goto/16 :goto_7f
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;
    .registers 8
    .parameter "row"
    .parameter "n"

    .prologue
    .line 304
    const v4, 0x7f0f007b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 305
    .local v3, vetoButton:Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isClearable()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 306
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 307
    .local v1, _pkg:Ljava/lang/String;
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    .line 308
    .local v2, _tag:Ljava/lang/String;
    iget v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    .line 309
    .local v0, _id:I
    new-instance v4, Lcom/android/systemui/statusbar/StatusBar$2;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/systemui/statusbar/StatusBar$2;-><init>(Lcom/android/systemui/statusbar/StatusBar;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 322
    .end local v0           #_id:I
    .end local v1           #_pkg:Ljava/lang/String;
    .end local v2           #_tag:Ljava/lang/String;
    :goto_1f
    return-object v3

    .line 320
    :cond_20
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1f
.end method
