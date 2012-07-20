.class public Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;
.super Landroid/app/Fragment;
.source "ChooseLockMotion.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockMotionFragment"
.end annotation


# static fields
.field private static final mAnimationImage:[I


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mContentTextView:Landroid/widget/TextView;

.field private mOKButton:Landroid/widget/Button;

.field private mTryTutorialButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationImage:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0xaft 0x1t 0x2t 0x7ft
        0xb0t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment$1;-><init>(Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->updateAnimation()V

    return-void
.end method

.method private broadcastMotionChanged(Z)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private stopAnimation()V
    .registers 3

    const-string v0, "ChooseLockMotionFragment"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_12
    return-void
.end method

.method private updateAnimation()V
    .registers 5

    const/16 v3, 0x66

    const-string v0, "ChooseLockMotionFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    :cond_31
    iget v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_49

    invoke-direct {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->stopAnimation()V

    iget v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_49
    :goto_49
    return-void

    :cond_4a
    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_49
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v1, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mOKButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_58

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->broadcastMotionChanged(Z)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_motion_tilt_to_unlock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_14

    :cond_58
    iget-object v1, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mTryTutorialButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->broadcastMotionChanged(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.tilttounlock.TILTTOUNLOCKTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const/4 v6, 0x0

    const v3, 0x7f04001d

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0043

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationView:Landroid/widget/ImageView;

    const v3, 0x7f0a0042

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mContentTextView:Landroid/widget/TextView;

    const v3, 0x7f0a0009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mCancelButton:Landroid/widget/Button;

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mOKButton:Landroid/widget/Button;

    const v3, 0x7f0a0044

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mTryTutorialButton:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0d088b

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d088c

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mTryTutorialButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "confirm_credentials"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez p3, :cond_92

    if-eqz v0, :cond_93

    iget-object v3, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v4, 0x37

    invoke-virtual {v3, v4, v6, v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    :cond_92
    :goto_92
    return-object v2

    :cond_93
    invoke-direct {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->updateAnimation()V

    goto :goto_92
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->stopAnimation()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->updateAnimation()V

    return-void
.end method

.method public onStop()V
    .registers 3

    const-string v0, "ChooseLockMotionFragment"

    const-string v1, "onStop : remove handler message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method
