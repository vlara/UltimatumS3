.class Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;
.super Ljava/lang/Object;
.source "AutoPowerOnOffButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->onBindView(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0, v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$002(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;Landroid/app/TimePickerDialog;)Landroid/app/TimePickerDialog;

    :cond_24
    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v0

    if-nez v0, :cond_49

    iget-object v8, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v1, v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    invoke-static {v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$600(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v4, v4, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    #setter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v8, v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$002(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;Landroid/app/TimePickerDialog;)Landroid/app/TimePickerDialog;

    :cond_49
    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v0, v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->startTime:Landroid/text/format/Time;

    iget v6, v0, Landroid/text/format/Time;->hour:I

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    iget-object v0, v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->startTime:Landroid/text/format/Time;

    iget v7, v0, Landroid/text/format/Time;->minute:I

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/app/TimePickerDialog;->updateTime(II)V

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;
    invoke-static {v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method
