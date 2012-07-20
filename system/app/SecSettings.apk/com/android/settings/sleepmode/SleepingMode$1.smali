.class Lcom/android/settings/sleepmode/SleepingMode$1;
.super Landroid/content/BroadcastReceiver;
.source "SleepingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sleepmode/SleepingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sleepmode/SleepingMode;


# direct methods
.method constructor <init>(Lcom/android/settings/sleepmode/SleepingMode;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37

    :cond_18
    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    const-string v12, "toggle_sleeping_mode"

    invoke-virtual {v11, v12}, Lcom/android/settings/sleepmode/SleepingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v11}, Lcom/android/settings/sleepmode/SleepingMode;->access$000(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "key_sleeping_mode_is_set"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_38

    if-eqz v8, :cond_37

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_37
    :goto_37
    return-void

    :cond_38
    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v11}, Lcom/android/settings/sleepmode/SleepingMode;->access$000(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "sleeping_mode_enabled"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v11}, Lcom/android/settings/sleepmode/SleepingMode;->access$000(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "key_repeat_days"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v11}, Lcom/android/settings/sleepmode/SleepingMode;->access$000(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "key_repeat_every_week"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v11, "state"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v2, :cond_37

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_84

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37

    if-nez v9, :cond_37

    :cond_84
    if-nez v7, :cond_d4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v11, 0x7

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x1

    rsub-int/lit8 v12, v10, 0x7

    mul-int/lit8 v12, v12, 0x4

    shl-int v4, v11, v12

    and-int v11, v6, v4

    if-eqz v11, :cond_d4

    xor-int/lit8 v11, v4, -0x1

    and-int/2addr v6, v11

    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v11}, Lcom/android/settings/sleepmode/SleepingMode;->access$100(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "key_repeat_days"

    invoke-interface {v11, v12, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v11}, Lcom/android/settings/sleepmode/SleepingMode;->access$100(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-nez v6, :cond_d4

    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v11}, Lcom/android/settings/sleepmode/SleepingMode;->access$100(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "key_sleeping_mode_is_set"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v11}, Lcom/android/settings/sleepmode/SleepingMode;->access$100(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "sleeping_mode_enabled"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v11}, Lcom/android/settings/sleepmode/SleepingMode;->access$100(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_d4
    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v11}, Lcom/android/settings/sleepmode/SleepingMode;->access$200(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/preference/CheckBoxPreference;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/android/settings/sleepmode/SleepingMode;->access$000(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "key_sleeping_mode_is_set"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0d09bd

    invoke-static {v11, v12}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12b

    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v11}, Lcom/android/settings/sleepmode/SleepingMode;->access$000(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "previous_flight_mode"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_12b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "state"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_12b
    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;
    invoke-static {v11}, Lcom/android/settings/sleepmode/SleepingMode;->access$300(Lcom/android/settings/sleepmode/SleepingMode;)Lcom/android/settings/sleepmode/SleepingModePreference;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/settings/sleepmode/SleepingModePreference;->updateSleepingMode()V

    iget-object v11, p0, Lcom/android/settings/sleepmode/SleepingMode$1;->this$0:Lcom/android/settings/sleepmode/SleepingMode;

    #getter for: Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;
    invoke-static {v11}, Lcom/android/settings/sleepmode/SleepingMode;->access$300(Lcom/android/settings/sleepmode/SleepingMode;)Lcom/android/settings/sleepmode/SleepingModePreference;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/settings/sleepmode/SleepingModePreference;->refreshSleepingModeList()V

    goto/16 :goto_37
.end method
