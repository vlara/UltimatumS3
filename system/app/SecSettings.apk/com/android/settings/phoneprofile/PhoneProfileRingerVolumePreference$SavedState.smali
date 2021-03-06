.class Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "PhoneProfileRingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-static {}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->access$200()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/preference/VolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    const/4 v0, 0x0

    :goto_d
    invoke-static {}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->access$200()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_34

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/VolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/VolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;
    .registers 5

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    array-length v1, v1

    if-eq v1, p1, :cond_1c

    :cond_9
    new-array v1, p1, [Landroid/preference/VolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p1, :cond_1c

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/VolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/VolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v0, 0x0

    :goto_4
    invoke-static {}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->access$200()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_20
    return-void
.end method
