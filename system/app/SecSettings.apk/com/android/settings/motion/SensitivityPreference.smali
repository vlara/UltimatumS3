.class public Lcom/android/settings/motion/SensitivityPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "SensitivityPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mAfterTest:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentMotion:I

.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mOldSensitivity:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSensitivityDB:Ljava/lang/String;

.field private mSensitivityText:Landroid/widget/LinearLayout;

.field private mTest:Landroid/widget/Button;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mOldSensitivity:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mAfterTest:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mWhichButtonClicked:I

    iput-object p1, p0, Lcom/android/settings/motion/SensitivityPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/SensitivityPreference;->setDialogLayoutResource(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/motion/SensitivityPreference;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/motion/SensitivityPreference;->mWhichButtonClicked:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/motion/SensitivityPreference;)Landroid/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion/SensitivityPreference;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mCurrentMotion:I

    return v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    invoke-static {p1}, Lcom/android/settings/motion/SensitivityPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    const v0, 0x7f0a018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mSensitivityText:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    const-string v0, "SensitivityPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWhichButtonClicked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/settings/motion/SensitivityPreference;->mWhichButtonClicked:I

    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/android/settings/motion/SensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mSensitivityDB:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/motion/SensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mWhichButtonClicked:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1a

    const-string v0, "SensitivityPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick - mOldSensitivity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/SensitivityPreference;->mOldSensitivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/motion/SensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mSensitivityDB:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/motion/SensitivityPreference;->mOldSensitivity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1a
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 4

    const v0, 0x7f0d0860

    new-instance v1, Lcom/android/settings/motion/SensitivityPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/motion/SensitivityPreference$1;-><init>(Lcom/android/settings/motion/SensitivityPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    const-string v0, "SensitivityPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/SensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/motion/SensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mSensitivityDB:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/motion/SensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/motion/SensitivityPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method

.method public setMotion(I)V
    .registers 4

    iput p1, p0, Lcom/android/settings/motion/SensitivityPreference;->mCurrentMotion:I

    iget v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mCurrentMotion:I

    const/16 v1, 0x44d

    if-ne v0, v1, :cond_d

    const-string v0, "motion_zooming_sensitivity"

    iput-object v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mSensitivityDB:Ljava/lang/String;

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mCurrentMotion:I

    const/16 v1, 0x44e

    if-ne v0, v1, :cond_18

    const-string v0, "motion_tilt_to_scroll_list_sensitivity"

    iput-object v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mSensitivityDB:Ljava/lang/String;

    goto :goto_c

    :cond_18
    iget v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mCurrentMotion:I

    const/16 v1, 0x4b1

    if-ne v0, v1, :cond_23

    const-string v0, "motion_panning_sensitivity"

    iput-object v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mSensitivityDB:Ljava/lang/String;

    goto :goto_c

    :cond_23
    iget v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mCurrentMotion:I

    const/16 v1, 0x4b2

    if-ne v0, v1, :cond_c

    const-string v0, "motion_pan_to_browse_image_sensitivity"

    iput-object v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mSensitivityDB:Ljava/lang/String;

    goto :goto_c
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x5

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mWhichButtonClicked:I

    iget-boolean v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mAfterTest:Z

    if-nez v1, :cond_3f

    const-string v1, "SensitivityPreference"

    const-string v2, "showDialog :1 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/motion/SensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/SensitivityPreference;->mSensitivityDB:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mOldSensitivity:I

    iget-object v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/motion/SensitivityPreference;->mOldSensitivity:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_2c
    invoke-virtual {p0}, Lcom/android/settings/motion/SensitivityPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mTest:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :cond_3f
    const-string v1, "SensitivityPreference"

    const-string v2, "showDialog :2 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mAfterTest:Z

    iget-object v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/settings/motion/SensitivityPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion/SensitivityPreference;->mSensitivityDB:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2c
.end method

.method public showTutorialDialog()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion/SensitivityPreference;->mAfterTest:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/SensitivityPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public startSensitivityTest(II)V
    .registers 7

    const/16 v3, 0xc

    const/16 v1, 0x44d

    if-ne p2, v1, :cond_2a

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MotionTest"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Sensitivity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const/16 v1, 0x44e

    if-ne p2, v1, :cond_36

    const-string v1, "SensitivityPreference"

    const-string v2, "MOTION_TILT_TO_SCROLL_LIST"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_36
    const/16 v1, 0x4b1

    if-ne p2, v1, :cond_57

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.motions.settings.panningtutorial"

    const-string v2, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Preview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "Sensitivity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_29

    :cond_57
    const/16 v1, 0x4b2

    if-ne p2, v1, :cond_29

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MotionTest"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Sensitivity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/motion/SensitivityPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_29
.end method
