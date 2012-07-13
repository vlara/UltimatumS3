.class Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;
.super Landroid/database/ContentObserver;
.source "DrivingModeQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrivingModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    const-string v0, "STATUSBAR-DrivingModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrivingModeObserver.onChange() - DB_KEY_DRIVING_MODE_ON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 77
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->setActivateStatus(I)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->getMode()I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mState:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;Z)Z

    .line 80
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 79
    goto :goto_1
.end method
