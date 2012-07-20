.class Lcom/android/settings/wifi/WifiTimer$1;
.super Ljava/lang/Object;
.source "WifiTimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiTimer;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTimer;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiTimer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v5, "WifiTimer"

    const-string v6, "Save"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->clearFocus()V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->clearFocus()V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    #getter for: Lcom/android/settings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiTimer;->access$000(Lcom/android/settings/wifi/WifiTimer;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v6}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v6}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v6}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v6}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    const/16 v6, 0x12d

    #calls: Lcom/android/settings/wifi/WifiTimer;->showDialog(I)V
    invoke-static {v5, v6}, Lcom/android/settings/wifi/WifiTimer;->access$100(Lcom/android/settings/wifi/WifiTimer;I)V

    :goto_90
    return-void

    :cond_91
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bb

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iput-object v4, v5, Lcom/android/settings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    const-string v5, "wifitimer_start_time"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiTimer;->startTime_tv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v7, v7, Lcom/android/settings/wifi/WifiTimer;->lastSetStartTime:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_bb
    const-string v5, "WifiTimer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newEndTime    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fd

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iput-object v3, v5, Lcom/android/settings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    const-string v5, "wifitimer_end_time"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiTimer;->endTime_tv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v7, v7, Lcom/android/settings/wifi/WifiTimer;->lastSetEndTime:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_fd
    const-string v5, "WifiTimer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    #getter for: Lcom/android/settings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiTimer;->access$000(Lcom/android/settings/wifi/WifiTimer;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "wifitimer_enabled"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_151

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    #getter for: Lcom/android/settings/wifi/WifiTimer;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiTimer;->access$000(Lcom/android/settings/wifi/WifiTimer;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "wifitimer_enabled"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_151

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v6, 0x1389

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const-string v5, "WifiTimer"

    const-string v6, "Broadcast Sent"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_151
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiTimer;->mContext:Landroid/content/Context;

    const v6, 0x7f0d022f

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiTimer;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_90
.end method
