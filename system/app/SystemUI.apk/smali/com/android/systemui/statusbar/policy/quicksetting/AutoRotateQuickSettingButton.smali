.class public Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AutoRotateQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;
    }
.end annotation


# instance fields
.field private mAutoRotation:Z

.field private mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v2, 0x0

    const v3, 0x7f08008b

    const v4, 0x7f020149

    const v5, 0x7f020148

    move-object v0, p0

    move-object v1, p1

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->getAutoRotation()Z

    move-result v0

    return v0
.end method

.method private getAutoRotation()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setAutoRotation(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->getAutoRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 3

    const-string v0, "systemui/quicksetting/QuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() - state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->setAutoRotation(Z)V

    :cond_0
    return-void
.end method
