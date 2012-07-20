.class public Lcom/android/settings/rcs/RcsSettings;
.super Ljava/lang/Object;
.source "RcsSettings.java"


# static fields
.field private static final RCS_CONTENT_URI:Landroid/net/Uri;

.field private static final RCS_CONTENT_URI_SHOW_SETTINGS_WHEN_UNPROVISIONED:Landroid/net/Uri;

.field private static mRcsSettingsPreference:Landroid/preference/Preference;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRcsContentObserver:Landroid/database/ContentObserver;

.field private mSettingsTreeParent:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    const-string v0, "content://com.samsung.rcs.settings/rcse_provisioned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/rcs/RcsSettings;->RCS_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.rcs.settings/rcse_show_settings_when_unprovisioned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/rcs/RcsSettings;->RCS_CONTENT_URI_SHOW_SETTINGS_WHEN_UNPROVISIONED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/rcs/RcsSettings;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mRcsContentObserver:Landroid/database/ContentObserver;

    iput-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    const-string v0, "rcs_settings"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    sget-object v0, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_27
    return-void
.end method


# virtual methods
.method public registerRcsProviderObserver()V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mRcsContentObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_c

    new-instance v1, Lcom/android/settings/rcs/RcsSettings$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/rcs/RcsSettings$1;-><init>(Lcom/android/settings/rcs/RcsSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mRcsContentObserver:Landroid/database/ContentObserver;

    :cond_c
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/rcs/RcsSettings;->RCS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/rcs/RcsSettings;->mRcsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterRcsProviderObserver()V
    .registers 3

    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mRcsContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mRcsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_f
    return-void
.end method

.method public updateRcsSettingsVisibility()V
    .registers 13

    const/4 v11, 0x0

    sget-object v1, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    if-nez v1, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v9, 0x0

    :try_start_d
    sget-object v1, Lcom/android/settings/rcs/RcsSettings;->RCS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_16} :catch_59

    move-result-object v9

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz v9, :cond_2e

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2b

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    :cond_2b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2e
    :try_start_2e
    sget-object v1, Lcom/android/settings/rcs/RcsSettings;->RCS_CONTENT_URI_SHOW_SETTINGS_WHEN_UNPROVISIONED:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_37} :catch_65

    move-result-object v9

    if-eqz v9, :cond_4d

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4a

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_4a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4d
    if-nez v7, :cond_51

    if-eqz v6, :cond_71

    :cond_51
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    sget-object v2, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    :catch_59
    move-exception v8

    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t query \'RCS_CONTENT_URI\' provider. Please install latest RCSe aplication."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    :catch_65
    move-exception v8

    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t query \'RCS_CONTENT_URI_SHOW_SETTINGS_WHEN_UNPROVISIONED\' provider. Please install latest RCSe aplication."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    :cond_71
    iget-object v1, p0, Lcom/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    sget-object v2, Lcom/android/settings/rcs/RcsSettings;->mRcsSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method
