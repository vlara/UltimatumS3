.class public Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "PowerSavingQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;
    }
.end annotation


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PowerSavingController"

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 27
    const v3, 0x7f080091

    const v4, 0x7f020148

    const v5, 0x7f020147

    const v6, 0x7f020146

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

    .line 38
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_switch"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_4a

    move v0, v9

    :goto_32
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->setActivateStatus(I)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_switch"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_4c

    :goto_3f
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mState:Z

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    .line 43
    return-void

    .line 39
    :cond_4a
    const/4 v0, 0x2

    goto :goto_32

    :cond_4c
    move v9, v7

    .line 41
    goto :goto_3f
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private canEnablePowerSaving()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_cpu_clock"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_display"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_background_colour"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_haptic_feedback"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    if-eqz v1, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0
.end method

.method private getMode()I
    .registers 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_switch"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    return-void
.end method


# virtual methods
.method public deinit()V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 52
    return-void
.end method

.method public init()V
    .registers 5

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 48
    return-void
.end method

.method public onClick(Z)V
    .registers 4
    .parameter "state"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_1b

    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mState:Z

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->canEnablePowerSaving()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 57
    sget-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 58
    sget-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    :cond_1b
    :goto_1b
    return-void

    .line 60
    :cond_1c
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->setActivateStatus(I)V

    .line 61
    if-eqz p1, :cond_27

    const/4 v0, 0x1

    :goto_23
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->setMode(I)V

    goto :goto_1b

    :cond_27
    const/4 v0, 0x0

    goto :goto_23
.end method
