.class public Lcom/android/settings/sleepmode/SleepingModeEditor;
.super Landroid/app/Activity;
.source "SleepingModeEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static is24H:Z


# instance fields
.field private mDataChnaged:Z

.field private mEndTimeDisplay:Landroid/widget/TextView;

.field private mEveryWeekCheckBox:Landroid/widget/CheckBox;

.field private mEveryWeekRepeatType:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mReceiver:Lcom/android/settings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;

.field private mRepeatDay:I

.field private mRepeatDayContainer:Lcom/android/settings/sleepmode/RepeatBtnGroup;

.field private mRepeatType:I

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mStartTimeDisplay:Landroid/widget/TextView;

.field private mSubmitted:Z

.field timePickerEnd:Landroid/widget/TimePicker;

.field timePickerStart:Landroid/widget/TimePicker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/sleepmode/SleepingModeEditor;->is24H:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mDataChnaged:Z

    iput-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSubmitted:Z

    new-instance v0, Lcom/android/settings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;-><init>(Lcom/android/settings/sleepmode/SleepingModeEditor;Lcom/android/settings/sleepmode/SleepingModeEditor$1;)V

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mReceiver:Lcom/android/settings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sleepmode/SleepingModeEditor;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/sleepmode/SleepingModeEditor;->updateDisplay(IIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/sleepmode/SleepingModeEditor;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/sleepmode/SleepingModeEditor;Landroid/content/Context;IIIIII)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/settings/sleepmode/SleepingModeEditor;->initTime(Landroid/content/Context;IIIIII)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/sleepmode/SleepingModeEditor;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private cancelDetailChange()V
    .registers 4

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/sleepmode/SleepingModeEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->finish()V

    return-void
.end method

.method private hideKeyPad()V
    .registers 4

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/sleepmode/SleepingModeEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, -0x1

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/sleepmode/SleepingModeEditor;->is24H:Z

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/sleepmode/SleepingModeEditor;->initTime(Landroid/content/Context;IIIIII)V

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_repeat_days"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_repeat_every_week"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatType:I

    iget v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatType:I

    if-ne v0, v9, :cond_44

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_30
    const v0, 0x7f0a0204

    invoke-virtual {p0, v0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mEveryWeekRepeatType:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mEveryWeekRepeatType:Landroid/view/View;

    new-instance v1, Lcom/android/settings/sleepmode/SleepingModeEditor$9;

    invoke-direct {v1, p0}, Lcom/android/settings/sleepmode/SleepingModeEditor$9;-><init>(Lcom/android/settings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_44
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_30
.end method

.method private initTime(Landroid/content/Context;IIIIII)V
    .registers 19

    iget-object v8, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "key_start_hour"

    const/16 v10, 0x17

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v8, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "key_start_minute"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "key_end_hour"

    const/4 v10, 0x7

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v8, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "key_end_minute"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    move v2, p2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_2a

    move v2, v6

    :cond_2a
    move v3, p3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_2f

    move v3, v7

    :cond_2f
    move/from16 v0, p5

    const/4 v8, -0x1

    if-ne v0, v8, :cond_35

    move v0, v4

    :cond_35
    move/from16 v1, p6

    const/4 v8, -0x1

    if-ne v1, v8, :cond_3b

    move v1, v5

    :cond_3b
    iget-object v8, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v8, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object v8, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v8, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    const/4 v8, 0x1

    invoke-direct {p0, v2, v3, v8}, Lcom/android/settings/sleepmode/SleepingModeEditor;->updateDisplay(IIZ)V

    const/4 v8, 0x0

    invoke-direct {p0, v2, v3, v8}, Lcom/android/settings/sleepmode/SleepingModeEditor;->updateDisplay(IIZ)V

    return-void
.end method

.method private declared-synchronized saveDetailChange()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSubmitted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSubmitted:Z

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->saveRepeat()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->finish()V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_5

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateDisplay(IIZ)V
    .registers 10

    const-string v0, ""

    const-string v1, ""

    sget-boolean v2, Lcom/android/settings/sleepmode/SleepingModeEditor;->is24H:Z

    if-nez v2, :cond_21

    const/16 v2, 0xc

    if-lt p1, v2, :cond_10

    const/16 v2, 0x18

    if-ne p1, v2, :cond_93

    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d09c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    rem-int/lit8 v2, p1, 0xc

    if-nez v2, :cond_a0

    const/16 p1, 0xc

    :cond_21
    :goto_21
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_69
    if-eqz p3, :cond_bc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d09b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mStartTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_92
    return-void

    :cond_93
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d09c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b

    :cond_a0
    rem-int/lit8 p1, p1, 0xc

    goto/16 :goto_21

    :cond_a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    :cond_bc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d09b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mEndTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_92
.end method

.method private updateRepeatDaysColor()V
    .registers 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatType:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_a
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatDayContainer:Lcom/android/settings/sleepmode/RepeatBtnGroup;

    iget v1, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    invoke-virtual {v0, v1}, Lcom/android/settings/sleepmode/RepeatBtnGroup;->setCheckDay(I)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_a
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/sleepmode/SleepingModeEditor$10;

    invoke-direct {v1, p0}, Lcom/android/settings/sleepmode/SleepingModeEditor$10;-><init>(Lcom/android/settings/sleepmode/SleepingModeEditor;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isInSettedTime(Ljava/util/Calendar;)Z
    .registers 10

    const/4 v6, 0x1

    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v7, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v7, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v7, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v4, v0, :cond_47

    if-ge v4, v2, :cond_3c

    if-le v0, v2, :cond_3c

    :cond_3b
    :goto_3b
    return v6

    :cond_3c
    if-ne v4, v2, :cond_42

    if-ge v3, v5, :cond_3b

    :cond_40
    const/4 v6, 0x0

    goto :goto_3b

    :cond_42
    if-ne v0, v2, :cond_40

    if-ge v3, v1, :cond_40

    goto :goto_3b

    :cond_47
    if-le v4, v0, :cond_57

    if-lt v4, v2, :cond_3b

    if-gt v0, v2, :cond_3b

    if-ne v4, v2, :cond_52

    if-lt v3, v5, :cond_40

    goto :goto_3b

    :cond_52
    if-ne v0, v2, :cond_40

    if-ge v3, v1, :cond_40

    goto :goto_3b

    :cond_57
    if-ne v4, v0, :cond_40

    if-ne v4, v2, :cond_40

    if-ge v5, v1, :cond_62

    if-gt v5, v3, :cond_40

    if-le v1, v3, :cond_40

    goto :goto_3b

    :cond_62
    if-le v5, v1, :cond_40

    if-le v5, v3, :cond_3b

    if-le v1, v3, :cond_40

    goto :goto_3b
.end method

.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x7f0d09b6

    invoke-virtual {p0, v0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0400b5

    invoke-virtual {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeEditor;->setContentView(I)V

    const v2, 0x7f0a01fd

    invoke-virtual {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mStartTimeDisplay:Landroid/widget/TextView;

    const v2, 0x7f0a01fe

    invoke-virtual {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TimePicker;

    iput-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    const v2, 0x7f0a01ff

    invoke-virtual {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mEndTimeDisplay:Landroid/widget/TextView;

    const v2, 0x7f0a0200

    invoke-virtual {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TimePicker;

    iput-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/settings/sleepmode/SleepingModeEditor$1;

    invoke-direct {v3, p0}, Lcom/android/settings/sleepmode/SleepingModeEditor$1;-><init>(Lcom/android/settings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/settings/sleepmode/SleepingModeEditor$2;

    invoke-direct {v3, p0}, Lcom/android/settings/sleepmode/SleepingModeEditor$2;-><init>(Lcom/android/settings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/settings/sleepmode/SleepingModeEditor$3;

    invoke-direct {v3, p0}, Lcom/android/settings/sleepmode/SleepingModeEditor$3;-><init>(Lcom/android/settings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/settings/sleepmode/SleepingModeEditor$4;

    invoke-direct {v3, p0}, Lcom/android/settings/sleepmode/SleepingModeEditor$4;-><init>(Lcom/android/settings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/settings/sleepmode/SleepingModeEditor$5;

    invoke-direct {v3, p0}, Lcom/android/settings/sleepmode/SleepingModeEditor$5;-><init>(Lcom/android/settings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/settings/sleepmode/SleepingModeEditor$6;

    invoke-direct {v3, p0}, Lcom/android/settings/sleepmode/SleepingModeEditor$6;-><init>(Lcom/android/settings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/settings/sleepmode/SleepingModeEditor$7;

    invoke-direct {v3, p0}, Lcom/android/settings/sleepmode/SleepingModeEditor$7;-><init>(Lcom/android/settings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/settings/sleepmode/SleepingModeEditor$8;

    invoke-direct {v3, p0}, Lcom/android/settings/sleepmode/SleepingModeEditor$8;-><init>(Lcom/android/settings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string v2, "key_sleeping_mode_pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/sleepmode/SleepingModeEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const v2, 0x7f0a0203

    invoke-virtual {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/sleepmode/RepeatBtnGroup;

    iput-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatDayContainer:Lcom/android/settings/sleepmode/RepeatBtnGroup;

    const v2, 0x7f0a0205

    invoke-virtual {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    const v2, 0x7f0a01f9

    invoke-virtual {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mReceiver:Lcom/android/settings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/sleepmode/SleepingModeEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-direct {p0, p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0d010e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0d042e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return v3
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mReceiver:Lcom/android/settings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1c

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    :sswitch_d
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->finish()V

    goto :goto_c

    :sswitch_11
    iput-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mDataChnaged:Z

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->saveDetailChange()V

    goto :goto_c

    :sswitch_17
    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->cancelDetailChange()V

    goto :goto_c

    nop

    :sswitch_data_1c
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0a033f -> :sswitch_17
        0x7f0a0340 -> :sswitch_11
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->hideKeyPad()V

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->saveRepeat()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/sleepmode/SleepingModeEditor;->is24H:Z

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    sget-boolean v1, Lcom/android/settings/sleepmode/SleepingModeEditor;->is24H:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    sget-boolean v1, Lcom/android/settings/sleepmode/SleepingModeEditor;->is24H:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->updateRepeatDaysColor()V

    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSubmitted:Z

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public saveRepeat()V
    .registers 10

    const/4 v6, 0x7

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatDayContainer:Lcom/android/settings/sleepmode/RepeatBtnGroup;

    invoke-virtual {v5}, Lcom/android/settings/sleepmode/RepeatBtnGroup;->getCheckDay()I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->clearFocus()V

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->clearFocus()V

    iget-boolean v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSubmitted:Z

    if-eqz v5, :cond_56

    if-nez v1, :cond_56

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->isInSettedTime(Ljava/util/Calendar;)Z

    move-result v5

    if-nez v5, :cond_3a

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    :cond_3a
    iget v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    const v6, 0xfffffff

    rsub-int/lit8 v7, v2, 0x7

    mul-int/lit8 v7, v7, 0x4

    shl-int v7, v8, v7

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatDayContainer:Lcom/android/settings/sleepmode/RepeatBtnGroup;

    iget v6, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    invoke-virtual {v5, v6}, Lcom/android/settings/sleepmode/RepeatBtnGroup;->setCheckDay(I)V

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatDayContainer:Lcom/android/settings/sleepmode/RepeatBtnGroup;

    invoke-virtual {v5}, Lcom/android/settings/sleepmode/RepeatBtnGroup;->getCheckDay()I

    move-result v1

    :cond_56
    iput v1, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_be

    iput v8, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatType:I

    :goto_62
    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_repeat_days"

    iget v7, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_repeat_every_week"

    iget v7, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatType:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_start_hour"

    iget-object v7, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_start_minute"

    iget-object v7, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_end_hour"

    iget-object v7, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_end_minute"

    iget-object v7, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_be
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/sleepmode/SleepingModeEditor;->mRepeatType:I

    goto :goto_62
.end method
