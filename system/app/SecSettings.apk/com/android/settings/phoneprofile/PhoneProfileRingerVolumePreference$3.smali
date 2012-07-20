.class Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$3;
.super Landroid/content/BroadcastReceiver;
.source "PhoneProfileRingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 v5, 0x3

    if-nez p2, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_6
    invoke-static {}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->access$200()[I

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_16

    invoke-static {}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->access$300()[I

    move-result-object v3

    aget v3, v3, v0

    if-ne v3, v5, :cond_3b

    move v1, v0

    :cond_16
    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    invoke-static {v3}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->access$400(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)[Landroid/preference/VolumePreference$SeekBarVolumizer;

    move-result-object v3

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->access$500(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    invoke-static {v3}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->access$400(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)[Landroid/preference/VolumePreference$SeekBarVolumizer;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->setSeekBarVolume(I)V

    goto :goto_3

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method
