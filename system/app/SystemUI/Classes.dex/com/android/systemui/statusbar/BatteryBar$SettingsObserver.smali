.class Lcom/android/systemui/statusbar/BatteryBar$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BatteryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BatteryBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/BatteryBar;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "handler"

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BatteryBar;

    .line 634
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 637
    const-string v0, "pvymods"

    const-string v1, "batbar observe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 642
    const-string v2, "pvymods"

    const-string v3, "batbar observe"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v2, p0, Lcom/android/systemui/statusbar/BatteryBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BatteryBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 647
    .local v1, mContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 651
    .local v0, localContentResolver:Landroid/content/ContentResolver;
    const-string v2, "battery_bar_style"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 650
    invoke-virtual {v0, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 655
    const-string v2, "battery_bar_height"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 654
    invoke-virtual {v0, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 660
    const-string v2, "battery_bar_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 659
    invoke-virtual {v0, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 664
    const-string v2, "battery_bar_color_auto_low"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 663
    invoke-virtual {v0, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 668
    const-string v2, "battery_bar_color_auto_medium"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 667
    invoke-virtual {v0, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 673
    const-string v2, "battery_bar_color_auto_regular"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 672
    invoke-virtual {v0, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 677
    const-string v2, "battery_bar_color_auto_full"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 676
    invoke-virtual {v0, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 681
    const-string v2, "battery_bar_color_auto_charging"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 680
    invoke-virtual {v0, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 684
    const-string v2, "battery_bar_auto_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 683
    invoke-virtual {v0, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 688
    const-string v2, "anim_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 687
    invoke-virtual {v0, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 691
    const-string v2, "anim_pulse_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 690
    invoke-virtual {v0, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 694
    const-string v2, "battery_bar_anim_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 693
    invoke-virtual {v0, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 697
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "paramBoolean"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BatteryBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BatteryBar;->updateBatteryBar()V

    .line 702
    const-string v0, "pvymods"

    const-string v1, "batterybar observed change done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-void
.end method
