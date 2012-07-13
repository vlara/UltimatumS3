.class Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 52
    .local v1, state:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setActivateStatus(I)V

    .line 61
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 57
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    const/4 v3, 0x2

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->dismissDialog(I)V
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;I)V

    goto :goto_0
.end method
