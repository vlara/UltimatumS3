.class Lcom/android/systemui/statusbar/policy/BrightnessController$2;
.super Landroid/content/BroadcastReceiver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$2;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.POWER_SIOP_ENABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    const-string v2, "max_brightness"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 229
    .local v1, isLimited:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$2;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v3

    if-eqz v1, :cond_1

    const/16 v2, 0x9d

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    .line 233
    .end local v1           #isLimited:Z
    :cond_0
    :goto_1
    return-void

    .line 229
    .restart local v1       #isLimited:Z
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$300()I

    move-result v2

    rsub-int v2, v2, 0xff

    goto :goto_0

    .line 230
    .end local v1           #isLimited:Z
    :cond_2
    const-string v2, "android.intent.action.POWER_SIOP_DISABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$2;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$300()I

    move-result v3

    rsub-int v3, v3, 0xff

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    goto :goto_1
.end method
