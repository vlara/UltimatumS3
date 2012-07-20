.class public Lcom/android/settings/sleepmode/SleepingModePreference;
.super Landroid/preference/Preference;
.source "SleepingModePreference.java"


# static fields
.field private static final sDaysShortest:[I


# instance fields
.field private mListDayColorActive:I

.field private mListDayColorInactive:I

.field private mPreferenceView:Landroid/widget/LinearLayout;

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/settings/sleepmode/SleepingModePreference;->sDaysShortest:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x74t 0x0t 0x4t 0x1t
        0x73t 0x0t 0x4t 0x1t
        0x72t 0x0t 0x4t 0x1t
        0x71t 0x0t 0x4t 0x1t
        0x70t 0x0t 0x4t 0x1t
        0x6ft 0x0t 0x4t 0x1t
        0x6et 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/sleepmode/SleepingModePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v1, 0x7f0400b6

    invoke-virtual {p0, v1}, Lcom/android/settings/sleepmode/SleepingModePreference;->setLayoutResource(I)V

    const-string v1, "key_sleeping_mode_pref"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mListDayColorActive:I

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mListDayColorInactive:I

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->updateSleepingMode()V

    return-void
.end method

.method public refreshSleepingModeList()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public timeFormatToString(II)Ljava/lang/String;
    .registers 9

    const/16 v5, 0xc

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d09c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, p1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_73

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p1, 0xa

    if-nez v3, :cond_69

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p2, 0xa

    if-nez v3, :cond_6e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_60
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_68
    return-object v3

    :cond_69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3f

    :cond_6e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_60

    :cond_73
    if-lt p1, v5, :cond_88

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d09c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-le p1, v5, :cond_88

    add-int/lit8 v2, p1, -0xc

    :cond_88
    if-nez p1, :cond_8c

    const/16 v2, 0xc

    :cond_8c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_d8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_ae
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p2, 0xa

    if-nez v3, :cond_dd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_cf
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_68

    :cond_d8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_ae

    :cond_dd
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_cf
.end method

.method public updateSleepingMode()V
    .registers 16

    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v13, "key_sleeping_mode_is_set"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v13, "key_start_hour"

    const/16 v14, 0x17

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v13, "key_start_minute"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v13, "key_end_hour"

    const/4 v14, 0x7

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v13, "key_end_minute"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, ""

    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0208

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/sleepmode/SleepingModePreference;->timeFormatToString(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_f0

    const/16 v12, 0xc

    if-lt v8, v12, :cond_df

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d09c1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5f
    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0209

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6d
    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a020b

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/sleepmode/SleepingModePreference;->timeFormatToString(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_112

    const-string v0, ""

    const/16 v12, 0xc

    if-lt v2, v12, :cond_102

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d09c1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9e
    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a020c

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_ac
    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v13, "key_repeat_days"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    move v11, v7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v4, 0x0

    :goto_bb
    const/4 v12, 0x7

    if-ge v4, v12, :cond_182

    and-int/lit8 v1, v11, 0xf

    shr-int/lit8 v11, v11, 0x4

    const/4 v10, 0x0

    packed-switch v4, :pswitch_data_184

    :goto_c6
    if-eqz v10, :cond_dc

    sget-object v12, Lcom/android/settings/sleepmode/SleepingModePreference;->sDaysShortest:[I

    aget v12, v12, v4

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v1, :cond_17b

    if-eqz v5, :cond_17b

    iget v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mListDayColorActive:I

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_dc
    :goto_dc
    add-int/lit8 v4, v4, 0x1

    goto :goto_bb

    :cond_df
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d09c0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5f

    :cond_f0
    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0209

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6d

    :cond_102
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d09c0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9e

    :cond_112
    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a020c

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ac

    :pswitch_123
    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0214

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    goto :goto_c6

    :pswitch_12f
    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0213

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    goto :goto_c6

    :pswitch_13b
    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0212

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    goto :goto_c6

    :pswitch_147
    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0211

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    goto/16 :goto_c6

    :pswitch_154
    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a0210

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    goto/16 :goto_c6

    :pswitch_161
    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a020f

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    goto/16 :goto_c6

    :pswitch_16e
    iget-object v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v13, 0x7f0a020e

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    goto/16 :goto_c6

    :cond_17b
    iget v12, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mListDayColorInactive:I

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_dc

    :cond_182
    return-void

    nop

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_123
        :pswitch_12f
        :pswitch_13b
        :pswitch_147
        :pswitch_154
        :pswitch_161
        :pswitch_16e
    .end packed-switch
.end method
