.class Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;
.super Ljava/lang/Object;
.source "AutoPowerOnOffSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;

.field final synthetic val$p:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/preference/Preference;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    iput-object p2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;->val$p:Landroid/preference/Preference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;->val$p:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;
    invoke-static {v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    move-result-object v2

    if-ne v1, v2, :cond_5d

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->access$100(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_auto_power_on_off_repeat_days"

    iget-object v3, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;
    invoke-static {v3}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->getDaysOfWeek()Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->access$100(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->access$200(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5e

    sput-boolean v4, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.AUTO_POWER_ON_OFF_START_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ext_key_changed_by_user"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$3;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOnOffAlarm(Landroid/content/Context;)V

    goto :goto_5d
.end method
