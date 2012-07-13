.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryTextObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 3325
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3326
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3327
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 3329
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_battery_percentage"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3335
    :goto_0
    return-void

    .line 3333
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
