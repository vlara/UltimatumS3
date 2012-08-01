.class Lcom/android/systemui/statusbar/BatteryBar$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BatteryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BatteryBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BatteryBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/BatteryBar;

    .line 404
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 407
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/BatteryBar;

    const-string v2, "status"

    .line 410
    const/4 v3, 0x1

    .line 409
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/BatteryBar;->batteryStatus:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BatteryBar;->access$0(Lcom/android/systemui/statusbar/BatteryBar;I)V

    .line 411
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/BatteryBar;

    const-string v2, "level"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/BatteryBar;->batteryLevel:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BatteryBar;->access$1(Lcom/android/systemui/statusbar/BatteryBar;I)V

    .line 412
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/BatteryBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BatteryBar;->updateBatteryBar()V

    .line 415
    :cond_0
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/BatteryBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BatteryBar;->updateBatteryBar()V

    .line 419
    :cond_1
    return-void
.end method
