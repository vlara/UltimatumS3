.class public Lcom/android/settings/phoneprofile/PhoneProfileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PhoneProfileSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mInitHandler:Landroid/os/Handler;

.field private mMaxProfile:I

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mProfileList:Landroid/preference/PreferenceGroup;

.field private mSelectedKey:Ljava/lang/String;

.field private mSelectedProfile:I

.field profileName:[I

.field profilekey:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "driving"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "meeting"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "outdoor"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mute"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->profilekey:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_38

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->profileName:[I

    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings$1;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileSettings;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings$2;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileSettings;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mInitHandler:Landroid/os/Handler;

    return-void

    nop

    :array_38
    .array-data 0x4
        0x2at 0x8t 0xdt 0x7ft
        0x64t 0x9t 0xdt 0x7ft
        0x65t 0x9t 0xdt 0x7ft
        0x66t 0x9t 0xdt 0x7ft
        0x67t 0x9t 0xdt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/phoneprofile/PhoneProfileSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->onAirplaneModeChanged()V

    return-void
.end method

.method private fillList()V
    .registers 14

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    const-string v0, "phone_profile_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mProfileList:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_profile_mode"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    iget v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mSelectedKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mProfileList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "profile_mode"

    aput-object v4, v2, v11

    const-string v4, "profile_name"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v7, 0x0

    :goto_41
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_98

    const-string v0, "profile_mode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v10, Lcom/android/settings/phoneprofile/PhoneProfilePreference;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    if-ge v7, v0, :cond_8a

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->profileName:[I

    aget v0, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_68
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->setPersistent(Z)V

    invoke-virtual {v10, p0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v10, v12}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->setSelectable(Z)V

    iget v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    if-ne v0, v8, :cond_7f

    invoke-virtual {v10}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->setChecked()V

    :cond_7f
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mProfileList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    :cond_8a
    const-string v0, "profile_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_68

    :cond_98
    iput v7, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mMaxProfile:I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    const-string v1, "toggle_airplane"

    invoke-virtual {v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v0, v11}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mProfileList:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public static getConfigRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 16

    const/4 v0, 0x2

    if-ne p1, v0, :cond_87

    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_1c
    const-wide/16 v6, 0x0

    const/4 v13, 0x0

    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "PhoneProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigRingtoneUri(): defaultRingtoneFilename ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_64

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    :cond_61
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_64
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_39 .. :try_end_64} :catch_a2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_39 .. :try_end_64} :catch_c0

    :cond_64
    :goto_64
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_de

    invoke-static {v8, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const-string v0, "PhoneProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigRingtoneUri(): ringUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_86
    return-object v13

    :cond_87
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1c

    :catch_a2
    move-exception v11

    const-string v0, "PhoneProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getConfigRingtoneUri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :catch_c0
    move-exception v11

    const-string v0, "PhoneProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteDiskIOException getConfigRingtoneUri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_de
    const-string v0, "PhoneProfileSettings"

    const-string v1, "getConfigRingtoneUri(): audio_id == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private onAirplaneModeChanged()V
    .registers 7

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_54

    move v0, v2

    :goto_f
    const-string v3, "PhoneProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAirplaneModeChanged : serviceState.getState() return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "PhoneProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAirplaneModeChanged : airplaneModeEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    sget-object v3, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->setForceChecked(Z)V

    return-void

    :cond_54
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static setPhoneProfileMode(Landroid/content/ContentResolver;Landroid/media/AudioManager;I)V
    .registers 24

    const-string v2, "sound_profile_mode"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v3, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "profile_silent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v2, "profile_vibration"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string v2, "profile_ring_volume"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v2, "profile_system_volume"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string v2, "profile_music_volume"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string v2, "profile_hph_music_volume"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v2, "profile_notification_volume"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string v2, "profile_notification_use_ring_vol"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v2, "profile_ringtone"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v2, "profile_gsm_ringtone"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v2, "profile_video_ringtone"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "profile_notification_tone"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/16 v2, 0xd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v3}, Landroid/media/AudioManager;->setStreamVolumeForce(III)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolumeForce(III)V

    const/4 v2, 0x1

    if-ne v15, v2, :cond_e4

    const/4 v2, 0x5

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_e4
    const-string v2, "ringtone"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "notification_sound"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method

.method private setSelectedKey(Ljava/lang/String;)V
    .registers 25

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mSelectedKey:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_profile_mode"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "profile_silent"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string v3, "profile_vibration"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string v3, "profile_ring_volume"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const-string v3, "profile_system_volume"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string v3, "profile_music_volume"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v3, "profile_hph_music_volume"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v3, "profile_notification_volume"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string v3, "profile_notification_use_ring_vol"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string v3, "profile_ringtone"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v3, "profile_gsm_ringtone"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v3, "profile_video_ringtone"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "profile_notification_tone"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x5

    const/4 v5, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v10, v5}, Landroid/media/AudioManager;->setStreamVolumeForce(III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolumeForce(III)V

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_110

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_110
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ringtone"

    invoke-static {v3, v4, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_sound"

    invoke-static {v3, v4, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    new-instance v11, Landroid/content/Intent;

    const-string v3, "com.android.widget.PROFILE_CHANGED"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "mode"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_142

    :goto_141
    return-void

    :cond_142
    invoke-virtual {v8, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_141
.end method


# virtual methods
.method public checkProfileName()V
    .registers 12

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "profile_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v8, 0x0

    :goto_1e
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_57

    const-string v0, "profile_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x5

    if-lt v8, v0, :cond_51

    if-eqz v9, :cond_39

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_51

    :cond_39
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, v10

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v6, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_51
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_57
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1b

    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->setAirplaneModeInECM(ZZ)V

    :cond_1b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->addPreferencesFromResource(I)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->setHasOptionsMenu(Z)V

    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mInitHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->checkProfileName()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7

    const/4 v3, 0x0

    const-string v0, "PhoneProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mOptionsMenu:Landroid/view/Menu;

    const/4 v0, 0x1

    const v1, 0x7f0d097a

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mOptionsMenu:Landroid/view/Menu;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 11

    const/4 v8, 0x7

    const/4 v6, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_f6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_10
    return v0

    :pswitch_11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const-string v0, "state"

    const-string v4, "add"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "PhoneProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadModeSettings() => create DB  max:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mMaxProfile:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "profile_silent"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "profile_vibration"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "profile_ring_volume"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "profile_system_volume"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "profile_music_volume"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "profile_notification_volume"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "profile_notification_use_ring_vol"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "profile_hph_music_volume"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getConfigRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "profile_ringtone"

    if-eqz v5, :cond_f0

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9d
    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "profile_gsm_ringtone"

    if-eqz v5, :cond_f2

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a8
    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "profile_video_ringtone"

    if-eqz v5, :cond_f4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b3
    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getConfigRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const-string v5, "profile_notification_tone"

    if-eqz v0, :cond_c4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c4
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/phoneprofile/ProviderConstants;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "sound_profile_edit_mode"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, v3}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    goto/16 :goto_10

    :cond_f0
    move-object v0, v1

    goto :goto_9d

    :cond_f2
    move-object v0, v1

    goto :goto_a8

    :cond_f4
    move-object v0, v1

    goto :goto_b3

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_14
    :goto_14
    const/4 v3, 0x1

    :goto_15
    return v3

    :cond_16
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_55

    const v1, 0x7f0d07bc

    :goto_21
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0112

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/phoneprofile/PhoneProfileSettings$3;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/phoneprofile/PhoneProfileSettings$3;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileSettings;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/phoneprofile/PhoneProfileSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings$4;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/phoneprofile/PhoneProfileSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings$5;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileSettings;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x0

    goto :goto_15

    :cond_55
    const v1, 0x7f0d07bd

    goto :goto_21

    :cond_59
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_14

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->setSelectedKey(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->updateOptionsMenu()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->fillList()V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->updateOptionsMenu()V

    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .registers 3

    if-eqz p1, :cond_6

    invoke-virtual {p0, p2}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->setAirplaneModeOn(Z)V

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->onAirplaneModeChanged()V

    goto :goto_5
.end method

.method public setAirplaneModeOn(Z)V
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->setEnabled(Z)V

    sget-object v2, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    :cond_11
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method updateOptionsMenu()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mMaxProfile:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_17
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5
.end method
