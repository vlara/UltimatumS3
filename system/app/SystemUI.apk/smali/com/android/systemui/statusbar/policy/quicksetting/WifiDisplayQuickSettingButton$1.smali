.class Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "wfd_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiDisplayQuickSettingButton;->setActivateStatus(I)V

    return-void
.end method
