.class public Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "PhoneProfileDefaultRingtonePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mEditMode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z

.field private mSoundType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mShowDefault:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mShowSilent:Z

    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/R$styleable;->ProfileDefaultRingtonePreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_edit_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mEditMode:I

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mCurrentMode:I

    return-void
.end method


# virtual methods
.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .registers 13

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mEditMode:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v1, v10, :cond_a4

    iput v10, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mRingtoneType:I

    const-string v1, "profile_notification_tone"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b1

    const-string v1, "ProfileDefaultRingtonePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call ringtone is empty ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mShowDefault:Z

    if-eqz v1, :cond_7e

    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mRingtoneType:I

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_7e
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.TYPE"

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.EDIT"

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v1, v9, :cond_b6

    const-string v1, "android.intent.extra.ringtone.TITLE"

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d036c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_a3
    return-void

    :cond_a4
    iput v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mRingtoneType:I

    const-string v1, "profile_ringtone"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3c

    :cond_b1
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_63

    :cond_b6
    const-string v1, "android.intent.extra.ringtone.TITLE"

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0373

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a3
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .registers 9

    const/4 v6, 0x2

    const/4 v3, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v2, v6, :cond_4a

    const-string v4, "profile_notification_tone"

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_13
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    sget-object v2, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mEditMode:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mEditMode:I

    iget v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mCurrentMode:I

    if-ne v2, v4, :cond_47

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v2, v6, :cond_58

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "notification_sound"

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_44
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_47
    :goto_47
    return-void

    :cond_48
    move-object v2, v3

    goto :goto_13

    :cond_4a
    const-string v4, "profile_ringtone"

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_52
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_56
    move-object v2, v3

    goto :goto_52

    :cond_58
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "ringtone"

    if-eqz p1, :cond_68

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_68
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_47
.end method
