.class public Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ShakeTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/ShakeTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShakeTutorialFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
    }
.end annotation


# static fields
.field private static final mAnimationImage:[I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

.field private mBTdevice1:Landroid/preference/Preference;

.field private mBTdevice2:Landroid/preference/Preference;

.field private mCanShake:Z

.field private mContext:Landroid/content/Context;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mRetryDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationImage:[I

    return-void

    :array_c
    .array-data 0x4
        0x9ct 0x1t 0x2t 0x7ft
        0x9dt 0x1t 0x2t 0x7ft
        0x9ct 0x1t 0x2t 0x7ft
        0x9dt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    iput-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mRetryDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    iput-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$1;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$2;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$3;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    return p1
.end method

.method static synthetic access$200()Landroid/hardware/motion/MotionRecognitionManager;
    .registers 1

    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/hardware/motion/MRListener;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->removeBTPreference()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->addBTPreference()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    return-void
.end method

.method private addBTPreference()V
    .registers 4

    const v2, 0x7f04007f

    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    const-string v1, "BT device 1"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    const-string v1, "BT device 2"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private removeBTPreference()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->removeAll()V

    return-void
.end method

.method private startAnimation()V
    .registers 3

    const-string v0, "ShakeTutorial"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    :cond_11
    return-void
.end method

.method private stopAnimation()V
    .registers 3

    const-string v0, "ShakeTutorial"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_12
    return-void
.end method

.method private updateAnimation()V
    .registers 5

    const/16 v3, 0x66

    const-string v0, "ShakeTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    :cond_31
    iget v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_49

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    iget v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_49
    :goto_49
    return-void

    :cond_4a
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_49
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0074

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    const v2, 0x7f0d0078

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_6c

    const v2, 0x7f020084

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    :goto_30
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    iget-object v2, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    const v3, 0x7f0d01aa

    invoke-virtual {v2, v3}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "motion_recognition"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v2, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iput-boolean v5, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    return-void

    :cond_6c
    const v2, 0x7f020093

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_30
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_10

    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    const-string v0, "ShakeTutorial"

    const-string v1, "context is assigned"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v1, 0x7f0d0850

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02018b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->showGuideDialog()V

    const/4 v0, 0x1

    goto :goto_b

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_11
    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :cond_16
    return-void
.end method

.method public onStop()V
    .registers 3

    const-string v0, "ShakeTutorial"

    const-string v1, "onStop : remove handler message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public showGuideDialog()V
    .registers 8

    const/4 v6, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v6, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

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

    iput-object v4, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    const v4, 0x7f0d086d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d0864

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d04f0

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    iget-object v4, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$6;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$6;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->startAnimation()V

    return-void
.end method
