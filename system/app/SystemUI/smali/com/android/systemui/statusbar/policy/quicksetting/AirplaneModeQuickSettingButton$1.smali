.class Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 42
    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBar;->isNetworkSupported:Z

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 45
    .local v0, enabled:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setActivateStatus(I)V

    .line 64
    .end local v0           #enabled:Z
    :cond_1
    :goto_1
    return-void

    .line 50
    .restart local v0       #enabled:Z
    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    .line 54
    .end local v0           #enabled:Z
    :cond_3
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const-string v2, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z

    .line 61
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->unsafe(Z)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V

    goto :goto_1
.end method
