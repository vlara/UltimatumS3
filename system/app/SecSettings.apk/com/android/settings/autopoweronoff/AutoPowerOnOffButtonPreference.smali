.class public Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;
.super Landroid/preference/Preference;
.source "AutoPowerOnOffButtonPreference.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mPrefText:Ljava/lang/String;

.field private mPrefTextView:Landroid/widget/TextView;

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mTimeButton:Landroid/widget/Button;

.field private mTimeButtonText:Ljava/lang/String;

.field private mTimePicker:Landroid/app/TimePickerDialog;

.field startTime:Landroid/text/format/Time;

.field private timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->startTime:Landroid/text/format/Time;

    iput-object p1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f04007d

    invoke-virtual {p0, v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->setLayoutResource(I)V

    sget-object v0, Lcom/android/settings/R$styleable;->AutoPowerOnOffButtonPreference:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefText:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButtonText:Ljava/lang/String;

    const-string v0, "key_auto_power_on_off_pref"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d09ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_hour_start"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_minute_start"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    :cond_5b
    :goto_5b
    invoke-virtual {p0, v7, v8}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->timeFormatToString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButtonText:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$1;-><init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)V

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;

    return-void

    :cond_7f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d09cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_hour_end"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_minute_end"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    goto :goto_5b
.end method

.method static synthetic access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;Landroid/app/TimePickerDialog;)Landroid/app/TimePickerDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimePicker:Landroid/app/TimePickerDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButtonText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButtonText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/content/SharedPreferences$Editor;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)Landroid/app/TimePickerDialog$OnTimeSetListener;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-object v0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0171

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0172

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference$2;-><init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4e
    return-void

    :cond_4f
    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->mPrefTextView:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4e
.end method

.method public timeFormatToString(II)Ljava/lang/String;
    .registers 10

    iget-object v4, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->startTime:Landroid/text/format/Time;

    iput p1, v4, Landroid/text/format/Time;->hour:I

    iget-object v4, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->startTime:Landroid/text/format/Time;

    iput p2, v4, Landroid/text/format/Time;->minute:I

    iget-object v4, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->startTime:Landroid/text/format/Time;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    const/16 v0, 0x201

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1d

    or-int/lit16 v0, v0, 0x80

    :cond_1d
    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pm"

    const-string v5, " PM"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "am"

    const-string v6, " AM"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
