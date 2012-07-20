.class Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;
.super Ljava/lang/Object;
.source "AutoPowerOnOffButtonPreference.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 16

    const v11, 0x7f0d09c8

    const v10, 0x7f0d04f0

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/TimePickerDialog;->dismiss()V

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    const/4 v6, 0x0

    #setter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v5, v6}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$002(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;Landroid/app/TimePickerDialog;)Landroid/app/TimePickerDialog;

    :cond_2e
    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d09ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$100(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$200(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "key_hour_end"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$200(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "key_minute_end"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne p2, v2, :cond_118

    if-ne p3, v3, :cond_118

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v5, v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v5, v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0d09c7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v5, v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1$1;

    invoke-direct {v5, p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1$1;-><init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1$2;

    invoke-direct {v5, p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1$2;-><init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_a2
    return-void

    :cond_a3
    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d09cf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$100(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_118

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$200(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "key_hour_start"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$200(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "key_minute_start"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne p2, v2, :cond_118

    if-ne p3, v3, :cond_118

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v5, v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v5, v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0d09c6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v5, v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1$3;

    invoke-direct {v5, p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1$3;-><init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1$4;

    invoke-direct {v5, p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1$4;-><init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_a2

    :cond_118
    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v6, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v6, p2, p3}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->timeFormatToString(II)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButtonText:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$302(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$400(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButtonText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$300(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d09ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$100(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a8

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key_hour_start"

    invoke-interface {v5, v6, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key_minute_start"

    invoke-interface {v5, v6, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_165
    :goto_165
    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key_no_repeat_power_off"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key_no_repeat_power_on"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.AUTO_POWER_ON_OFF_START_ACTION"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "ext_key_changed_by_user"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a2

    :cond_1a8
    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-virtual {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d09cf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$100(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_165

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key_hour_end"

    invoke-interface {v5, v6, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$500(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "key_minute_end"

    invoke-interface {v5, v6, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_165
.end method
