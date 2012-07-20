.class public Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "PhoneProfileRingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mCurrentMode:I

.field private mHandler:Landroid/os/Handler;

.field private mOriginalHphMusicVol:I

.field private mOriginalMusicVol:I

.field private mOriginalNotiVol:I

.field private mOriginalRingVol:I

.field private mOriginalSysVol:I

.field private mProfileMode:I

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_56

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    nop

    :array_26
    .array-data 0x4
        0x59t 0x1t 0xat 0x7ft
        0x5dt 0x1t 0xat 0x7ft
        0x61t 0x1t 0xat 0x7ft
        0x63t 0x1t 0xat 0x7ft
    .end array-data

    :array_32
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3e
    .array-data 0x4
        0x58t 0x1t 0xat 0x7ft
        0x5ct 0x1t 0xat 0x7ft
        0x60t 0x1t 0xat 0x7ft
        0x62t 0x1t 0xat 0x7ft
    .end array-data

    :array_4a
    .array-data 0x4
        0xb9t 0x2t 0x8t 0x1t
        0xb4t 0x2t 0x8t 0x1t
        0xb1t 0x2t 0x8t 0x1t
        0xb7t 0x2t 0x8t 0x1t
    .end array-data

    :array_56
    .array-data 0x4
        0xb8t 0x2t 0x8t 0x1t
        0xb3t 0x2t 0x8t 0x1t
        0xb0t 0x2t 0x8t 0x1t
        0xb6t 0x2t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$1;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$3;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->setStreamType(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->setDisplayType(I)V

    const v0, 0x7f040074

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->setDialogLayoutResource(I)V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_profile_edit_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mProfileMode:I

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_profile_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCurrentMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()[I
    .registers 1

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .registers 1

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private cleanup()V
    .registers 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aput-object v4, v2, v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_2e
    return-void
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private updateSlidersAndMutedStates()V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    sget-object v4, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_60

    sget-object v4, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_2e

    const/4 v4, 0x2

    if-ne v2, v4, :cond_46

    if-eqz v1, :cond_46

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_46

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x10802b5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2e
    :goto_2e
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_43

    if-eqz v1, :cond_59

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    :goto_3c
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_46
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_54

    sget-object v4, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_50
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2e

    :cond_54
    sget-object v4, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_50

    :cond_59
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    goto :goto_3c

    :cond_60
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .registers 2

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->setPositiveButtonText(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityStop()V
    .registers 5

    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 16

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalRingVol:I

    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalSysVol:I

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalNotiVol:I

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolumeForce(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalMusicVol:I

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolumeForce(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalHphMusicVol:I

    const/4 v9, 0x0

    :goto_55
    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    if-ge v9, v0, :cond_9e

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v0, v9

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v0, v0, v9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8c

    iget-object v13, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v0, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v1, v9

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v13, v9

    :goto_89
    add-int/lit8 v9, v9, 0x1

    goto :goto_55

    :cond_8c
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v4, v9

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v9

    goto :goto_89

    :cond_9e
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_streams_affected"

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v9, 0x0

    :goto_af
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v9, v0, :cond_c5

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v6, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_af

    :cond_c5
    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->updateSlidersAndMutedStates()V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_e6

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$2;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_e6
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_107

    const v10, 0x7f0a015a

    :goto_f3
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_106

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_106
    return-void

    :cond_107
    const v10, 0x7f0a015e

    goto :goto_f3
.end method

.method protected onDialogClosed(Z)V
    .registers 15

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0xd

    const/4 v9, 0x3

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    const-string v4, "PhoneProfileVolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onDialogClosed() positiveResult: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_21
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_2a} :catch_6a

    :goto_2a
    if-nez p1, :cond_82

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalRingVol:I

    invoke-virtual {v4, v12, v5, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalSysVol:I

    invoke-virtual {v4, v11, v5, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalNotiVol:I

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "audioParam;curDevice"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "HPH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalMusicVol:I

    invoke-virtual {v4, v9, v5, v8}, Landroid/media/AudioManager;->setStreamVolumeWithOutChange(III)V

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalHphMusicVol:I

    invoke-virtual {v4, v10, v5, v8}, Landroid/media/AudioManager;->setStreamVolumeForce(III)V

    :cond_66
    :goto_66
    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->cleanup()V

    return-void

    :catch_6a
    move-exception v1

    const-string v4, "PhoneProfileVolumePreference"

    const-string v5, "onDialogClosed : mVolumeChangeReceiver is not registered."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_73
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalHphMusicVol:I

    invoke-virtual {v4, v10, v5, v8}, Landroid/media/AudioManager;->setStreamVolumeWithOutChange(III)V

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalMusicVol:I

    invoke-virtual {v4, v9, v5, v8}, Landroid/media/AudioManager;->setStreamVolumeForce(III)V

    goto :goto_66

    :cond_82
    const-string v4, "PhoneProfileVolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "volume:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v7, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " 1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v7, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v7, v7, v11

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " 2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v7, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v7, v7, v12

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "profile_music_volume"

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v6, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolumeForce(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "profile_hph_music_volume"

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v10}, Landroid/media/AudioManager;->getStreamVolumeForce(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "profile_ring_volume"

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v6, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v6, v6, v11

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "profile_notification_volume"

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v6, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v6, v6, v12

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "profile_system_volume"

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v6, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mProfileMode:I

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mProfileMode:I

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCurrentMode:I

    if-eq v4, v5, :cond_66

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalRingVol:I

    invoke-virtual {v4, v12, v5, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalSysVol:I

    invoke-virtual {v4, v11, v5, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalNotiVol:I

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "audioParam;curDevice"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "HPH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_186

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalMusicVol:I

    invoke-virtual {v4, v9, v5, v8}, Landroid/media/AudioManager;->setStreamVolumeWithOutChange(III)V

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalHphMusicVol:I

    invoke-virtual {v4, v10, v5, v8}, Landroid/media/AudioManager;->setStreamVolumeForce(III)V

    goto/16 :goto_66

    :cond_186
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalHphMusicVol:I

    invoke-virtual {v4, v10, v5, v8}, Landroid/media/AudioManager;->setStreamVolumeWithOutChange(III)V

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalMusicVol:I

    invoke-virtual {v4, v9, v5, v8}, Landroid/media/AudioManager;->setStreamVolumeForce(III)V

    goto/16 :goto_66
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_e

    move v0, v1

    :goto_9
    sparse-switch p2, :sswitch_data_10

    move v1, v2

    :sswitch_d
    return v1

    :cond_e
    move v0, v2

    goto :goto_9

    :sswitch_data_10
    .sparse-switch
        0x18 -> :sswitch_d
        0x19 -> :sswitch_d
        0xa4 -> :sswitch_d
    .end sparse-switch
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 4

    const/high16 v0, 0x104

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_e
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_11
    return-void

    :cond_12
    check-cast p1, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;

    invoke-virtual {p1}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v1

    const/4 v0, 0x0

    :goto_23
    sget-object v2, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v0

    if-eqz v2, :cond_33

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_23
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_15

    aget-object v3, v0, v1

    if-eqz v3, :cond_12

    if-eq v3, p1, :cond_12

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_b

    :goto_a
    return-object v2

    :cond_b
    new-instance v1, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    sget-object v5, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    const/4 v0, 0x0

    :goto_18
    sget-object v5, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2b

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    if-eqz v3, :cond_28

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2b
    move-object v2, v1

    goto :goto_a
.end method
