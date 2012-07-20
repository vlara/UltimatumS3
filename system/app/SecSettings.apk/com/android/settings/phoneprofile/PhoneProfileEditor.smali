.class public Lcom/android/settings/phoneprofile/PhoneProfileEditor;
.super Landroid/preference/PreferenceActivity;
.source "PhoneProfileEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentMode:I

.field private mEditMode:I

.field private mHandler:Landroid/os/Handler;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSilentMode:Landroid/preference/ListPreference;

.field private mState:I

.field profileName:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->profileName:[I

    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor$1;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$2;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor$2;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mHandler:Landroid/os/Handler;

    return-void

    :array_1a
    .array-data 0x4
        0x2at 0x8t 0xdt 0x7ft
        0x64t 0x9t 0xdt 0x7ft
        0x65t 0x9t 0xdt 0x7ft
        0x66t 0x9t 0xdt 0x7ft
        0x67t 0x9t 0xdt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/phoneprofile/PhoneProfileEditor;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->setPhoneSilentSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/phoneprofile/PhoneProfileEditor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/phoneprofile/PhoneProfileEditor;ILandroid/preference/Preference;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_a

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const-string p1, ""

    :cond_c
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    sget-object p1, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    :cond_a
    return-object p1
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "profile_silent"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "profile_silent"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    packed-switch v7, :pswitch_data_4a

    const-string v1, "off"

    :goto_40
    return-object v1

    :pswitch_41
    const-string v1, "off"

    goto :goto_40

    :pswitch_44
    const-string v1, "vibrate"

    goto :goto_40

    :pswitch_47
    const-string v1, "mute"

    goto :goto_40

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_47
        :pswitch_44
        :pswitch_41
    .end packed-switch
.end method

.method private lookupRingtoneNames()V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setPhoneSilentSettingValue(Ljava/lang/String;)V
    .registers 14

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x2

    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    const/4 v8, 0x0

    :cond_c
    :goto_c
    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_17
    const/4 v1, 0x2

    if-ne v8, v1, :cond_75

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "profile_ring_volume"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "profile_ring_volume"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    if-nez v9, :cond_75

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "profile_ring_volume"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v6, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_75
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "profile_silent"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v6, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_96
    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v8, 0x1

    goto/16 :goto_c
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0430

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d097e

    new-instance v2, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;

    invoke-direct {v2, p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .registers 15

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-ne p1, v3, :cond_6a

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "profile_ringtone"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "profile_ringtone"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_3d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    if-eqz v8, :cond_9c

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_46
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x10404a1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v2, :cond_9e

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x104049f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_5e
    :goto_5e
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    :cond_6a
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "profile_notification_tone"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "profile_notification_tone"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3d

    :cond_9c
    move-object v2, v4

    goto :goto_46

    :cond_9e
    :try_start_9e
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5e

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c2

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_c2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_c5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9e .. :try_end_c5} :catch_c6

    goto :goto_5e

    :catch_c6
    move-exception v1

    goto :goto_5e
.end method

.method private updateState(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    if-ne v0, v1, :cond_30

    const-string v0, "ring_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_2f
    return-void

    :cond_30
    const-string v0, "ring_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2f
.end method

.method private validateAndSave(Z)Z
    .registers 11

    const/4 v8, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v4, :cond_1e

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d097d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1e
    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_2a

    if-eqz v1, :cond_2a

    invoke-direct {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->showErrorMessage(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_29
    return v4

    :cond_2a
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "profile_name"

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "profile_mode"

    iget v6, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v6, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_29
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v1, "state"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "add"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    iput v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mState:I

    :goto_2e
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0979

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    const-string v1, "profile_name"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "silent_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_c4

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_6a
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_edit_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_ca

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->profileName:[I

    iget v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    :goto_a7
    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;

    const-string v1, "notification_sound"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;

    new-instance v1, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;

    invoke-direct {v1, p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    return-void

    :cond_bf
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mState:I

    goto/16 :goto_2e

    :cond_c4
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_6a

    :cond_ca
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "profile_name"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "profile_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v8}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_b

    :goto_a
    return v3

    :cond_b
    const v0, 0x7f0d097c

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    const v1, 0x7f0d097b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_a
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x1

    const-string v1, "PhoneProfileEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown keyCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_36

    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_20
    return v0

    :pswitch_21
    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mState:I

    if-ne v1, v0, :cond_1c

    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1c

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_20

    nop

    :pswitch_data_36
    .packed-switch 0x4
        :pswitch_21
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_4e

    :cond_a
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_e
    return v1

    :pswitch_f
    invoke-direct {p0, v5}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->validateAndSave(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_e

    :pswitch_19
    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_30

    sget-object v2, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_30
    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    iget v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    if-ne v2, v3, :cond_4a

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_profile_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2, v3, v5}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->setPhoneProfileMode(Landroid/content/ContentResolver;Landroid/media/AudioManager;I)V

    iput v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    :cond_4a
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_e

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_f
        :pswitch_19
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_10

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->setPhoneSilentSettingValue(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    :cond_f
    :goto_f
    return v2

    :cond_10
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_f
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->lookupRingtoneNames()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
