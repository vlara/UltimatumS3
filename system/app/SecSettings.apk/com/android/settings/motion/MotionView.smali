.class public Lcom/android/settings/motion/MotionView;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCameraShortCutDialog:Landroid/app/AlertDialog;

.field private mCurrentDB:Ljava/lang/String;

.field private mCurrentMotion:I

.field private mCurrentText:Ljava/lang/String;

.field private mDoubleTapToGoTopAnimationImage:[I

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mPanToBrowseImageAnimationImage:[I

.field private mPanToMoveIconAnimationImage:[I

.field private mPickUpToBeNotifiedAnimationImage:[I

.field private mPickUpToCallOutAnimationImage:[I

.field private mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

.field private mShakeToUpdateAnimationImage:[I

.field private mTabletPanToBrowseImageAnimationImage:[I

.field private mTabletPanToMoveIconAnimationImage:[I

.field private mTiltToScrollListAnimationImage:[I

.field private mTiltToZoomAnimationImage:[I

.field private mTitle:Ljava/lang/String;

.field private mTurnOverToMuteAnimationImage:[I

.field private mTutorial:Landroid/preference/Preference;

.field private mUnlockCameraShortCut:[I

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    new-array v0, v2, [I

    fill-array-data v0, :array_74

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTiltToZoomAnimationImage:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_7e

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTiltToScrollListAnimationImage:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_8c

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mPanToMoveIconAnimationImage:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_98

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mPanToBrowseImageAnimationImage:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_aa

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mShakeToUpdateAnimationImage:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_b6

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mDoubleTapToGoTopAnimationImage:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_c2

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mPickUpToBeNotifiedAnimationImage:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_cc

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTurnOverToMuteAnimationImage:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_d6

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mPickUpToCallOutAnimationImage:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_e0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mUnlockCameraShortCut:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_e8

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTabletPanToMoveIconAnimationImage:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_f4

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTabletPanToBrowseImageAnimationImage:[I

    new-instance v0, Lcom/android/settings/motion/MotionView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/MotionView$1;-><init>(Lcom/android/settings/motion/MotionView;)V

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    return-void

    :array_74
    .array-data 0x4
        0x93t 0x1t 0x2t 0x7ft
        0x94t 0x1t 0x2t 0x7ft
        0x95t 0x1t 0x2t 0x7ft
    .end array-data

    :array_7e
    .array-data 0x4
        0xaat 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0xact 0x1t 0x2t 0x7ft
        0xadt 0x1t 0x2t 0x7ft
        0xaet 0x1t 0x2t 0x7ft
    .end array-data

    :array_8c
    .array-data 0x4
        0x8ft 0x1t 0x2t 0x7ft
        0x90t 0x1t 0x2t 0x7ft
        0x91t 0x1t 0x2t 0x7ft
        0x92t 0x1t 0x2t 0x7ft
    .end array-data

    :array_98
    .array-data 0x4
        0x82t 0x1t 0x2t 0x7ft
        0x83t 0x1t 0x2t 0x7ft
        0x84t 0x1t 0x2t 0x7ft
        0x85t 0x1t 0x2t 0x7ft
        0x86t 0x1t 0x2t 0x7ft
        0x87t 0x1t 0x2t 0x7ft
        0x88t 0x1t 0x2t 0x7ft
    .end array-data

    :array_aa
    .array-data 0x4
        0x9ct 0x1t 0x2t 0x7ft
        0x9dt 0x1t 0x2t 0x7ft
        0x9ct 0x1t 0x2t 0x7ft
        0x9dt 0x1t 0x2t 0x7ft
    .end array-data

    :array_b6
    .array-data 0x4
        0x89t 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
        0x89t 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
    .end array-data

    :array_c2
    .array-data 0x4
        0x97t 0x1t 0x2t 0x7ft
        0x98t 0x1t 0x2t 0x7ft
        0x99t 0x1t 0x2t 0x7ft
    .end array-data

    :array_cc
    .array-data 0x4
        0xb5t 0x1t 0x2t 0x7ft
        0xb6t 0x1t 0x2t 0x7ft
        0xb7t 0x1t 0x2t 0x7ft
    .end array-data

    :array_d6
    .array-data 0x4
        0x8ct 0x1t 0x2t 0x7ft
        0x8dt 0x1t 0x2t 0x7ft
        0x8et 0x1t 0x2t 0x7ft
    .end array-data

    :array_e0
    .array-data 0x4
        0x9at 0x1t 0x2t 0x7ft
        0x9bt 0x1t 0x2t 0x7ft
    .end array-data

    :array_e8
    .array-data 0x4
        0xa6t 0x1t 0x2t 0x7ft
        0xa7t 0x1t 0x2t 0x7ft
        0xa8t 0x1t 0x2t 0x7ft
        0xa9t 0x1t 0x2t 0x7ft
    .end array-data

    :array_f4
    .array-data 0x4
        0x9et 0x1t 0x2t 0x7ft
        0x9ft 0x1t 0x2t 0x7ft
        0xa0t 0x1t 0x2t 0x7ft
        0xa1t 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/motion/MotionView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion/MotionView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/motion/MotionView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/motion/MotionView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/motion/MotionView;->startTryActually(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/motion/MotionView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/MotionView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateCheckedUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion/MotionView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->startTryActually()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private setArguments()V
    .registers 10

    const v8, 0x7f0d0863

    const v7, 0x7f0d0862

    const/16 v4, 0x10

    const/4 v6, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    const-string v2, "sensitivity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v0, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1, v1, v0, v1}, Landroid/widget/Switch;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    :cond_68
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v0, "MotionView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d084c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    const/16 v0, 0x44d

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const-string v0, "motion_zooming"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTiltToZoomAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0869

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setTitle(I)V

    :cond_c0
    :goto_c0
    if-nez v2, :cond_d7

    const-string v0, "sensitivity_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_d7

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sensitivity_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion/MotionView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d7
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    iget v1, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    invoke-virtual {v0, v1}, Lcom/android/settings/motion/SensitivityPreference;->setMotion(I)V

    :cond_de
    return-void

    :cond_df
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d084d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    const/16 v0, 0x44e

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const-string v0, "motion_tilt_to_list_scrolling"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTiltToScrollListAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d086a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_c0

    :cond_115
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d084f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    const/16 v0, 0x4b2

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const-string v0, "motion_pan_to_browse_image"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mPanToBrowseImageAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTabletPanToBrowseImageAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    :cond_144
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d086c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_c0

    :cond_15a
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d084e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19f

    const/16 v0, 0x4b1

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const-string v0, "motion_panning"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mPanToMoveIconAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_189

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTabletPanToMoveIconAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    :cond_189
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d086b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_c0

    :cond_19f
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0850

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fd

    const/16 v0, 0x515

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const-string v0, "motion_shake"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mShakeToUpdateAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    const/4 v0, 0x1

    :try_start_1c1
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.kieswifi"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1cf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c1 .. :try_end_1cf} :catch_1ea

    :goto_1cf
    if-eqz v0, :cond_1ed

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d086d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    :goto_1e0
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f0d0864

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_c0

    :catch_1ea
    move-exception v0

    move v0, v1

    goto :goto_1cf

    :cond_1ed
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d086e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    goto :goto_1e0

    :cond_1fd
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0851

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_237

    const/16 v0, 0x579

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const-string v0, "motion_double_tap"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mDoubleTapToGoTopAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d086f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f0d0865

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_c0

    :cond_237
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0852

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_295

    const/16 v0, 0x5dd

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const-string v0, "motion_pick_up"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mPickUpToBeNotifiedAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0870

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0871

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f0d0866

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_c0

    :cond_295
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0853

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    const/16 v0, 0x641

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const-string v0, "motion_overturn"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTurnOverToMuteAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0872

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f0d0868

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_c0

    :cond_2cf
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d087f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_309

    const/16 v0, 0x5de

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const-string v0, "motion_pick_up_to_call_out"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mPickUpToCallOutAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0881

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f0d0867

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_c0

    :cond_309
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0890

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    const/16 v0, 0x6a5

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const-string v0, "motion_unlock_camera_short_cut"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mUnlockCameraShortCut:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0894

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f0d0893

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_c0
.end method

.method private showCameraShortCutDialog()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->allDialogDismiss()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0892

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d084b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04f0

    new-instance v2, Lcom/android/settings/motion/MotionView$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionView$2;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d010e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion/MotionView$3;

    invoke-direct {v1, p0}, Lcom/android/settings/motion/MotionView$3;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showMotionDialog()V
    .registers 5

    const v3, 0x7f0d087c

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->allDialogDismiss()V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d087d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/motion/MotionView$4;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionView$4;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d010e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion/MotionView$5;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionView$5;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showUseRingDialog()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->allDialogDismiss()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d087a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0879

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04f0

    new-instance v2, Lcom/android/settings/motion/MotionView$9;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionView$9;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d087b

    new-instance v2, Lcom/android/settings/motion/MotionView$8;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionView$8;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion/MotionView$10;

    invoke-direct {v1, p0}, Lcom/android/settings/motion/MotionView$10;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private startAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-string v0, "MotionView"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateAnimation()V

    goto :goto_4
.end method

.method private startTryActually()V
    .registers 7

    const/4 v5, 0x2

    const/16 v4, 0xa

    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x44d

    if-ne v2, v3, :cond_26

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "MotionTest"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x44e

    if-ne v2, v3, :cond_50

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "com.android.jcontacts"

    const-string v3, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_44
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_25

    :cond_48
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_44

    :cond_50
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x4b1

    if-ne v2, v3, :cond_66

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.motions.settings.panningtutorial"

    const-string v3, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_25

    :cond_66
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x4b2

    if-ne v2, v3, :cond_89

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "MotionTest"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_25

    :cond_89
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x515

    if-ne v2, v3, :cond_9f

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_25

    :cond_9f
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x579

    if-ne v2, v3, :cond_ca

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    const-string v2, "com.android.jcontacts"

    const-string v3, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_bd
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_25

    :cond_c2
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_bd

    :cond_ca
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x5dd

    if-ne v2, v3, :cond_df

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_25

    :cond_df
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x5de

    if-ne v2, v3, :cond_f8

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_25

    :cond_f8
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x6a5

    if-ne v2, v3, :cond_10d

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.camerashortcut.CAMERASHORTCUTTUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion/MotionView;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_25

    :cond_10d
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x641

    if-ne v2, v3, :cond_25

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/motion/MotionView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v5, :cond_12c

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_12c

    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->showUseRingDialog()V

    goto/16 :goto_25

    :cond_12c
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/motion/MotionView;->startTryActually(Z)V

    goto/16 :goto_25
.end method

.method private startTryActually(Z)V
    .registers 5

    iget v1, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v2, 0x641

    if-ne v1, v2, :cond_1a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionView;->startActivity(Landroid/content/Intent;)V

    :cond_1a
    return-void
.end method

.method private stopAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-string v0, "MotionView"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_4
.end method

.method private updateAnimation()V
    .registers 7

    const-wide/16 v4, 0x1f4

    const/16 v3, 0x66

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v0, "MotionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    :cond_38
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->stopAnimation()V

    iget v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    :cond_53
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v1, 0x579

    if-ne v0, v1, :cond_6c

    iget v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_66

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    :cond_66
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    :cond_6c
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8
.end method

.method private updateCheckedUI()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/motion/SensitivityPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public allDialogDismiss()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_c
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    :cond_17
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    :cond_22
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    :cond_2d
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->setArguments()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const-string v0, "MotionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_38

    :cond_25
    :goto_25
    :pswitch_25
    return-void

    :pswitch_26
    const/16 v0, 0x65

    if-ne p2, v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings/motion/SensitivityPreference;->showTutorialDialog()V

    goto :goto_25

    :pswitch_30
    const/16 v0, 0x64

    if-ne p2, v0, :cond_25

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->showGuideDialog()V

    goto :goto_25

    :pswitch_data_38
    .packed-switch 0xa
        :pswitch_30
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "MotionView"

    const-string v3, "onCheckChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x6a5

    if-ne v2, v3, :cond_21

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_21

    if-ne p2, v0, :cond_20

    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->showCameraShortCutDialog()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    if-eqz p2, :cond_32

    :goto_29
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/motion/SensitivityPreference;->setEnabled(Z)V

    goto :goto_20

    :cond_32
    move v0, v1

    goto :goto_29
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionView;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    const-string v0, "sensitivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/motion/SensitivityPreference;

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/motion/SensitivityPreference;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    const-string v0, "tutorial"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->stopAnimation()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    if-ne p2, v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->showGuideDialog()V

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_8
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateCheckedUI()V

    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateAnimation()V

    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public showGuideDialog()V
    .registers 8

    const/4 v6, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->allDialogDismiss()V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f04004e

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a0033

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a00a9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d0873

    new-instance v5, Lcom/android/settings/motion/MotionView$6;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/MotionView$6;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d010e

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/motion/MotionView$7;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/MotionView$7;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->startAnimation()V

    return-void
.end method
