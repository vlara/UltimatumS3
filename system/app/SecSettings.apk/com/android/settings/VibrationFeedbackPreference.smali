.class public Lcom/android/settings/VibrationFeedbackPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "VibrationFeedbackPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final SEEKBAR_ID:[I


# instance fields
.field private currentLevel:I

.field private mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

.field private mHapticFeedbackVibrationIntensity:I

.field private mIncomingCallSeekBar:Landroid/widget/SeekBar;

.field private mIncomingCallVibrationIntensity:I

.field private mNotificationSeekBar:Landroid/widget/SeekBar;

.field private mNotificationVibrationIntensity:I

.field private mOldHapticFeedbackVibrationSlideLevel:I

.field private mOldIncomingCallVibrationSlideLevel:I

.field private mOldNotificationVibrationSlideLevel:I

.field mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/settings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x85t 0x1t 0xat 0x7ft
        0x86t 0x1t 0xat 0x7ft
        0x87t 0x1t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    const v0, 0x7f040087

    invoke-virtual {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->setDialogLayoutResource(I)V

    return-void
.end method

.method private setHapticFeedbackVibrationIntensity(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHapticFeedbackVibrationIntensity : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setIncomingCallVibrationIntensity(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIncomingCallVibrationIntensity : Settings.System.VIB_RECVCALL_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setNotificationVibrationIntensity(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNotificationVibrationIntensity : Settings.System.VIB_NOTIFICATION_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 8

    const/16 v5, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    sget-object v1, Lcom/android/settings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3e

    :cond_2d
    const v1, 0x7f0a0184

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_3e
    sget-object v1, Lcom/android/settings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    aget v1, v1, v4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    sget-object v1, Lcom/android/settings/VibrationFeedbackPreference;->SEEKBAR_ID:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "VIB_FEEDBACK_MAGNITUDE"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_ab

    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallVibrationIntensity:I

    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : Settings.System.VIB_RECVCALL_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationVibrationIntensity:I

    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : Settings.System.VIB_NOTIFICATION_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_aa
    return-void

    :cond_ab
    iget v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldIncomingCallVibrationSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->setIncomingCallVibrationIntensity(I)V

    iget v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldNotificationVibrationSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->setNotificationVibrationIntensity(I)V

    iget v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldHapticFeedbackVibrationSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->setHapticFeedbackVibrationIntensity(I)V

    goto :goto_aa
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_e

    move v0, v1

    :goto_9
    packed-switch p2, :pswitch_data_3a

    move v1, v2

    :cond_d
    :goto_d
    return v1

    :cond_e
    move v0, v2

    goto :goto_9

    :pswitch_10
    if-eqz v0, :cond_d

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    if-lez v2, :cond_d

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_d

    :pswitch_24
    if-eqz v0, :cond_d

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_d

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mHapticFeedbackSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_d

    nop

    :pswitch_data_3a
    .packed-switch 0x18
        :pswitch_24
        :pswitch_10
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIncomingCallSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p2}, Lcom/android/settings/VibrationFeedbackPreference;->setIncomingCallVibrationIntensity(I)V

    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateCall(I)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mNotificationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0, p2}, Lcom/android/settings/VibrationFeedbackPreference;->setNotificationVibrationIntensity(I)V

    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateNotification(I)V

    goto :goto_12

    :cond_26
    iput p2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    invoke-direct {p0, p2}, Lcom/android/settings/VibrationFeedbackPreference;->setHapticFeedbackVibrationIntensity(I)V

    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateImmVibe(I)V

    goto :goto_12
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
