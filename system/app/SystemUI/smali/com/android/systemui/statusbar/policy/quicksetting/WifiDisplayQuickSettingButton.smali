.class public Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "WifiDisplayQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-WifiDisplayController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field private mWifiDisplayActivated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 31
    const/4 v2, 0x0

    const v3, 0x7f080090

    const v4, 0x7f020154

    const v5, 0x7f020153

    const v6, 0x7f020152

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 21
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 40
    const-string v0, "wfd"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method private handleStateChanged(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 67
    const-string v0, "STATUSBAR-WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi display state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    packed-switch p1, :pswitch_data_0

    .line 80
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 73
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 48
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->mWifiDisplayActivated:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->setActivateStatus(I)V

    .line 51
    const-string v1, "STATUSBAR-WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() - mWifiDisplayActivated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->mWifiDisplayActivated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 48
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 3
    .parameter "newValue"

    .prologue
    .line 59
    const-string v0, "STATUSBAR-WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() - newValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, p1}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->setActivateStatus(I)V

    .line 64
    :cond_0
    return-void
.end method
