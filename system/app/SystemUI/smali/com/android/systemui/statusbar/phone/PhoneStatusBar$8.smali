.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 3030
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3032
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3033
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3035
    :cond_0
    const/4 v1, 0x0

    .line 3036
    .local v1, excludeRecents:Z
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3037
    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3038
    .local v2, reason:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 3039
    const-string v3, "recentapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3052
    .end local v2           #reason:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse(Z)V

    .line 3064
    .end local v1           #excludeRecents:Z
    :cond_2
    :goto_1
    return-void

    .line 3043
    .restart local v1       #excludeRecents:Z
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseStatusBarMarquee:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3044
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 3045
    const-string v3, "STATUSBAR-PhoneStatusBar"

    const-string v4, "marqueeStatusBar()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3047
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->marqueeNavigationBar()V

    .line 3048
    const-string v3, "STATUSBAR-PhoneStatusBar"

    const-string v4, "marqueeNavigationBar()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3054
    .end local v1           #excludeRecents:Z
    :cond_4
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3055
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3056
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    goto :goto_1

    .line 3059
    :cond_5
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayPlmnIcon:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 3061
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    goto :goto_1
.end method
