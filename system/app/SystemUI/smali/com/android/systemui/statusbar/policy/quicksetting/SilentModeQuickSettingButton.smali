.class public Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SilentModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static mSoundProfile:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 36
    const v3, 0x7f080087

    const v4, 0x7f02014b

    const v5, 0x7f02014c

    const v7, 0x7f02014d

    const v8, 0x7f02014a

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 19
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 22
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 45
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setSoundEffectsEnabled(Z)V

    .line 46
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    sput p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    return p0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->updateStatus()V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v1, "systemui/quicksetting/QuickSettingButton"

    const-string v2, "mAudioManager is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 67
    const-string v1, "systemui/quicksetting/QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() - state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, soundProfile:I
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 85
    :goto_0
    const-string v1, "systemui/quicksetting/QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 87
    return-void

    .line 73
    :cond_0
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    if-nez v1, :cond_1

    .line 74
    const/4 v0, 0x2

    goto :goto_0

    .line 75
    :cond_1
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 76
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBar;->hasVibrator:Z

    if-eqz v1, :cond_2

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public updateStatus()V
    .locals 5

    .prologue
    .line 97
    const-string v2, "systemui/quicksetting/QuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatus()-S:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, -0x1

    .line 100
    .local v0, status:I
    const v1, 0x7f080087

    .line 102
    .local v1, textID:I
    sget v2, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 104
    const v1, 0x7f080089

    .line 117
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setTextId(I)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setActivateStatus(I)V

    .line 120
    return-void

    .line 105
    :cond_0
    sget v2, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    if-nez v2, :cond_1

    .line 106
    const/4 v0, 0x4

    .line 107
    const v1, 0x7f08008a

    goto :goto_0

    .line 108
    :cond_1
    sget v2, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 109
    const/4 v0, 0x2

    .line 110
    const v1, 0x7f080088

    goto :goto_0

    .line 112
    :cond_2
    const/4 v0, 0x2

    .line 113
    const v1, 0x7f080088

    goto :goto_0
.end method
