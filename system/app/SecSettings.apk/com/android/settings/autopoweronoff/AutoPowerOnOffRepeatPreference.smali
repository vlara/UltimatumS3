.class public Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;
.super Landroid/preference/MultiSelectListPreference;
.source "AutoPowerOnOffRepeatPreference.java"


# instance fields
.field private mDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

.field private mNewDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v2, v3}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    new-instance v2, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v2, v3}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mNewDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const-string v2, "key_auto_power_on_off_pref"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0xa

    const/4 v2, 0x7

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v7, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x5

    invoke-static {v2, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x6

    invoke-static {v2, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-static {v3, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {v4, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;)Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mNewDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-object v0
.end method


# virtual methods
.method public getDaysOfWeek()Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mNewDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->set(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_auto_power_on_off_repeat_days"

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {p0, v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->callChangeListener(Ljava/lang/Object;)Z

    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mNewDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    iget-object v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->set(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    goto :goto_2c
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v2

    new-instance v3, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference$1;-><init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public setDaysOfWeek(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->set(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mNewDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->set(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    invoke-virtual {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
