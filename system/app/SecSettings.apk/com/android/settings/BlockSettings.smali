.class public Lcom/android/settings/BlockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BlockSettings.java"


# static fields
.field private static mIsCallSeparate:Z


# instance fields
.field private mCallBlockMode:Landroid/preference/PreferenceScreen;

.field private mListIndex:I

.field private mMessageBlockMode:Landroid/preference/PreferenceScreen;

.field private mRejectModeDlgId:I

.field private mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

.field private mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BlockSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/BlockSettings;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/BlockSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setBlockMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/BlockSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->updateSummary()V

    return-void
.end method

.method private getCallBlockMode()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIndexFromValue(I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    :cond_8
    :goto_8
    return v0

    :cond_9
    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    goto :goto_8

    :cond_11
    const/4 v1, 0x3

    if-ne p1, v1, :cond_19

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getVideoBlockMode()I

    move-result v0

    goto :goto_8

    :cond_19
    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getMessageBlockMode()I

    move-result v0

    goto :goto_8
.end method

.method private getMessageBlockMode()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "messageblock_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getModeDialogId()I
    .registers 2

    iget v0, p0, Lcom/android/settings/BlockSettings;->mRejectModeDlgId:I

    return v0
.end method

.method private getVideoBlockMode()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_videocall_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private makeCallBlockDialog(I)Landroid/app/Dialog;
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d09a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/BlockSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$2;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09005f

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$1;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private makeMessageBlockDialog(I)Landroid/app/Dialog;
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d09aa

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/BlockSettings$8;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$8;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090062

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$7;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private makeVideoCallBlockDialog(I)Landroid/app/Dialog;
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d09a7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/BlockSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$6;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090061

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$5;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private makeVoiceCallBlockDialog(I)Landroid/app/Dialog;
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d09a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/BlockSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$4;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090060

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$3;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private setBlockMode(I)V
    .registers 5

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getModeDialogId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_10
    :goto_10
    return-void

    :cond_11
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    :cond_1e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_videocall_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    :cond_2b
    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "messageblock_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10
.end method

.method private setModeDialogId(I)V
    .registers 2

    iput p1, p0, Lcom/android/settings/BlockSettings;->mRejectModeDlgId:I

    return-void
.end method

.method private updateSummary()V
    .registers 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_14

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    if-ne v0, v3, :cond_4b

    const v1, 0x7f0d09af

    :goto_f
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_14
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_26

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    if-ne v0, v3, :cond_55

    const v1, 0x7f0d09b0

    :goto_21
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_26
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_38

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getVideoBlockMode()I

    move-result v0

    if-ne v0, v3, :cond_5f

    const v1, 0x7f0d09b1

    :goto_33
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_38
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_4a

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getMessageBlockMode()I

    move-result v0

    if-ne v0, v3, :cond_69

    const v1, 0x7f0d09b3

    :goto_45
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_4a
    return-void

    :cond_4b
    if-ne v0, v4, :cond_51

    const v1, 0x7f0d09b2

    goto :goto_f

    :cond_51
    const v1, 0x7f0d09b5

    goto :goto_f

    :cond_55
    if-ne v0, v4, :cond_5b

    const v1, 0x7f0d09b2

    goto :goto_21

    :cond_5b
    const v1, 0x7f0d09b5

    goto :goto_21

    :cond_5f
    if-ne v0, v4, :cond_65

    const v1, 0x7f0d09b2

    goto :goto_33

    :cond_65
    const v1, 0x7f0d09b5

    goto :goto_33

    :cond_69
    if-ne v0, v4, :cond_6f

    const v1, 0x7f0d09b4

    goto :goto_45

    :cond_6f
    const v1, 0x7f0d09b5

    goto :goto_45
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->addPreferencesFromResource(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/BlockSettings;->mIsCallSeparate:Z

    sget-boolean v0, Lcom/android/settings/BlockSettings;->mIsCallSeparate:Z

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "call_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "voice_callblock_mode_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    const-string v0, "video_callblock_mode_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    :goto_34
    const-string v0, "messageblock_mode_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    return-void

    :cond_3f
    const-string v0, "callblock_mode_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "voice_call_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/BlockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "video_call_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_34
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 3

    packed-switch p1, :pswitch_data_1a

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeCallBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeVoiceCallBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeVideoCallBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    :pswitch_14
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeMessageBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_a
        :pswitch_f
        :pswitch_14
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_9

    invoke-virtual {p0, v0}, Lcom/android/settings/BlockSettings;->showDialog(I)V

    :goto_8
    return v0

    :cond_9
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_12

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->showDialog(I)V

    goto :goto_8

    :cond_12
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_1b

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->showDialog(I)V

    goto :goto_8

    :cond_1b
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_24

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/BlockSettings;->showDialog(I)V

    goto :goto_8

    :cond_24
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_8
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->updateSummary()V

    return-void
.end method
