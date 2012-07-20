.class public Lcom/android/settings/motion/MotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mMotions:Landroid/preference/CheckBoxPreference;

.field private mPalmSwipe:Landroid/preference/CheckBoxPreference;

.field private mPalmTouch:Landroid/preference/CheckBoxPreference;

.field private mPan:Landroid/preference/SwitchPreferenceScreen;

.field private mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUp:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShake:Landroid/preference/SwitchPreferenceScreen;

.field private mTapAndTwist:Landroid/preference/CheckBoxPreference;

.field private mTilt:Landroid/preference/SwitchPreferenceScreen;

.field private mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

.field private mTurnOver:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/MotionSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion/MotionSettings;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showMotionUnlockDialog(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    :cond_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d084b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04f0

    new-instance v2, Lcom/android/settings/motion/MotionSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionSettings$1;-><init>(Lcom/android/settings/motion/MotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d010e

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion/MotionSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/motion/MotionSettings$2;-><init>(Lcom/android/settings/motion/MotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f070031

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "motion_activation"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    const-string v3, "tilt"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "tilt_to_scroll_list"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "pan"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "pan_to_browse_image"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "shake"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "double_tap"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "pick_up"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "pick_up_to_call_out"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "turn_over"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "palm_swipe"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    const-string v3, "palm_touch"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    const-string v3, "tap_and_twist"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    if-eqz v0, :cond_dc

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_dc

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_dc
    if-eqz v0, :cond_eb

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_eb

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_eb
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_fa

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_fa
    if-eqz v0, :cond_109

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_109
    if-eqz v0, :cond_118

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_118

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_118
    if-eqz v0, :cond_127

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_127

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_127
    if-eqz v0, :cond_136

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_136

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_136
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    if-eqz v0, :cond_152

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_152

    const-string v3, "category_surface"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_152

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_152
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    move v0, v1

    :goto_a
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_17
    :goto_17
    return v1

    :cond_18
    const/4 v0, 0x0

    goto :goto_a

    :cond_1a
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_28

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_tilt_to_list_scrolling"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_17

    :cond_28
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_36

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_17

    :cond_36
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_44

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pan_to_browse_image"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_17

    :cond_44
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_52

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_shake"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_17

    :cond_52
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_60

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_double_tap"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_17

    :cond_60
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_6e

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pick_up"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_17

    :cond_6e
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_7c

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pick_up_to_call_out"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_17

    :cond_7c
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_17

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_overturn"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_17
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_98

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_7c

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_32

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-nez v5, :cond_32

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_32

    const/4 v2, 0x1

    :cond_32
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_unlock_camera_short_cut"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v0, 0x1

    :cond_3f
    if-eqz v2, :cond_4a

    if-eqz v0, :cond_4a

    const v3, 0x7f0d088f

    invoke-direct {p0, v3}, Lcom/android/settings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    :goto_49
    return v4

    :cond_4a
    if-nez v2, :cond_55

    if-eqz v0, :cond_55

    const v3, 0x7f0d088e

    invoke-direct {p0, v3}, Lcom/android/settings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_49

    :cond_55
    if-eqz v2, :cond_60

    if-nez v0, :cond_60

    const v3, 0x7f0d088d

    invoke-direct {p0, v3}, Lcom/android/settings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_49

    :cond_60
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_engine"

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_6f

    move v3, v4

    :cond_6f
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    goto :goto_49

    :cond_7c
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_engine"

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8b

    move v3, v4

    :cond_8b
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    goto :goto_49

    :cond_98
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_af

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "surface_palm_swipe"

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_ab

    move v3, v4

    :cond_ab
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_49

    :cond_af
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_c6

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "surface_palm_touch"

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_c2

    move v3, v4

    :cond_c2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_49

    :cond_c6
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_de

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "surface_tap_and_twist"

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_d9

    move v3, v4

    :cond_d9
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_49

    :cond_de
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_49
.end method

.method public onResume()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_engine"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_db

    move v0, v1

    :goto_18
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_zooming"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_de

    move v0, v1

    :goto_28
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_tilt_to_list_scrolling"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e1

    move v0, v1

    :goto_38
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_panning"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e4

    move v0, v1

    :goto_48
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_pan_to_browse_image"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e7

    move v0, v1

    :goto_58
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_shake"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_ea

    move v0, v1

    :goto_68
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_double_tap"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_ed

    move v0, v1

    :goto_78
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_pick_up"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_ef

    move v0, v1

    :goto_88
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_pick_up_to_call_out"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f1

    move v0, v1

    :goto_98
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_overturn"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f3

    move v0, v1

    :goto_a8
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_palm_swipe"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f5

    move v0, v1

    :goto_b8
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_palm_touch"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f7

    move v0, v1

    :goto_c8
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_tap_and_twist"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_f9

    :goto_d7
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_db
    move v0, v2

    goto/16 :goto_18

    :cond_de
    move v0, v2

    goto/16 :goto_28

    :cond_e1
    move v0, v2

    goto/16 :goto_38

    :cond_e4
    move v0, v2

    goto/16 :goto_48

    :cond_e7
    move v0, v2

    goto/16 :goto_58

    :cond_ea
    move v0, v2

    goto/16 :goto_68

    :cond_ed
    move v0, v2

    goto :goto_78

    :cond_ef
    move v0, v2

    goto :goto_88

    :cond_f1
    move v0, v2

    goto :goto_98

    :cond_f3
    move v0, v2

    goto :goto_a8

    :cond_f5
    move v0, v2

    goto :goto_b8

    :cond_f7
    move v0, v2

    goto :goto_c8

    :cond_f9
    move v1, v2

    goto :goto_d7
.end method
