.class public Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SyncQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 36
    const/4 v2, 0x0

    const v3, 0x7f08008f

    const v4, 0x7f020150

    const v5, 0x7f02014f

    const v6, 0x7f02014e

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 21
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 45
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 52
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->setActivateStatus(I)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 6
    .parameter "state"

    .prologue
    .line 64
    const-string v3, "systemui/quicksetting/QuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick() - state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    move v0, p1

    .line 68
    .local v0, buttonStatus:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 70
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    .line 72
    .local v2, sync:Z
    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;ZZ)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    return-void
.end method
