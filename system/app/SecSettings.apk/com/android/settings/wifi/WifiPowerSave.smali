.class public Lcom/android/settings/wifi/WifiPowerSave;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiPowerSave.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final Null:Ljava/lang/String;

.field private cellAvailable:Z

.field entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/wifi/WifiDatabaseEntries;",
            ">;"
        }
    .end annotation
.end field

.field private generator:Ljava/util/Random;

.field mAlertDialog:Landroid/app/AlertDialog$Builder;

.field mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/TextView;

.field private mProgress:Lcom/android/settings/ProgressCategory;

.field private mSelectedProfile:Lcom/android/settings/wifi/Profile;

.field mUseWifiLocation:Landroid/preference/CheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field notificationManager:Landroid/app/NotificationManager;

.field private tm:Landroid/telephony/TelephonyManager;

.field value:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPowerSave;->Null:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiPowerSave;->cellAvailable:Z

    return-void
.end method

.method private initPreferences()V
    .registers 7

    const/4 v3, 0x0

    const-string v2, "wifi_enable_location"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiPowerSave;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_auto_connection"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_61

    const/4 v2, 0x1

    :goto_1f
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v2, "wifi_power_save_database"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiPowerSave;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ProgressCategory;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiPowerSave;->mProgress:Lcom/android/settings/ProgressCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiPowerSave;->mProgress:Lcom/android/settings/ProgressCategory;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/settings/wifi/WifiPowerSave;->mProgress:Lcom/android/settings/ProgressCategory;

    const v4, 0x7f0d0a57

    invoke-virtual {v2, v4}, Lcom/android/settings/ProgressCategory;->setNoDeviceFoundText(I)V

    :cond_38
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_auto_connection"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/android/settings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0d0593

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->populateProfiles()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings.wifi.LocationProvidingService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_60
    return-void

    :cond_61
    move v2, v3

    goto :goto_1f

    :cond_63
    iget-object v2, p0, Lcom/android/settings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0d0594

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiPowerSave;->mProgress:Lcom/android/settings/ProgressCategory;

    if-eqz v2, :cond_7f

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiPowerSave;->mProgress:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "WifiPowerSave"

    const-string v3, "Power Save mode OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings.wifi.LocationProvidingService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_60
.end method


# virtual methods
.method forgetProfile(Ljava/lang/String;)V
    .registers 15

    const/4 v12, 0x7

    const/4 v2, 0x0

    if-eqz p1, :cond_86

    const-string v1, "WifiPowerSave"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing Profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_86

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_32
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_83

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sget-object v1, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "profile"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiPowerSave;->Null:Ljava/lang/String;

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v8, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_7f

    const-string v1, "WifiPowerSave"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile forgotten: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_32

    :cond_83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_86
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPowerSave;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPowerSave;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPowerSave;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPowerSave;->tm:Landroid/telephony/TelephonyManager;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPowerSave;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPowerSave;->notificationManager:Landroid/app/NotificationManager;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPowerSave;->generator:Ljava/util/Random;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPowerSave;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiPowerSave;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPowerSave;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPowerSave;->entries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPowerSave;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiPowerSave;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPowerSave;->registerForContextMenu(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPowerSave;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 23

    invoke-super/range {p0 .. p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_d5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_d5

    const-string v3, "PROFILE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "SSID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "BSSID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "ADDRESS"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "CID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_d5

    if-eqz v15, :cond_d5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_d5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_53
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_d2

    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    sget-object v3, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "profile"

    invoke-virtual {v14, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v14, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_ce

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiPowerSave;->populateProfiles()V

    const-string v3, "WifiPowerSave"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry updated at row: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "with, PROFILE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ADDRESS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ce
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_53

    :cond_d2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_d5
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 8

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_58

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    :pswitch_d
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/settings/wifi/Profile;

    iget-object v1, v1, Lcom/android/settings/wifi/Profile;->profile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiPowerSave;->forgetProfile(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->populateProfiles()V

    goto :goto_c

    :pswitch_18
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPowerSave;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0a6a

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiPowerSave;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/settings/wifi/Profile;

    iget-object v5, v5, Lcom/android/settings/wifi/Profile;->profile:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/settings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/settings/wifi/Profile;

    iget-object v4, v4, Lcom/android/settings/wifi/Profile;->ssid:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/settings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/settings/wifi/Profile;

    iget-object v5, v5, Lcom/android/settings/wifi/Profile;->address:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/wifi/WifiPowerSave$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiPowerSave$1;-><init>(Lcom/android/settings/wifi/WifiPowerSave;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiPowerSave;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_c

    :pswitch_data_58
    .packed-switch 0x4
        :pswitch_d
        :pswitch_18
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPowerSave;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/Profile;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/settings/wifi/Profile;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/settings/wifi/Profile;

    iget-object v1, v1, Lcom/android/settings/wifi/Profile;->profile:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 v1, 0x4

    const v2, 0x7f0d0a69

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x5

    const v2, 0x7f0d0a68

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0d097a

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x6

    const v1, 0x7f0d069c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_32

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    :sswitch_d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/wifi/AddConnection;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/WifiPowerSave;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    :sswitch_1f
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/wifi/DeleteConnection;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiPowerSave;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_d
        0x6 -> :sswitch_1f
    .end sparse-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiPowerSave;->value:Z

    const-string v6, "wifi_enable_location"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    :try_start_16
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_auto_connection"

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiPowerSave;->value:Z

    if-eqz v6, :cond_46

    move v6, v5

    :goto_21
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_24} :catch_48

    :cond_24
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiPowerSave;->value:Z

    if-eqz v4, :cond_4a

    iget-object v4, p0, Lcom/android/settings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0d0593

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->populateProfiles()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings.wifi.LocationProvidingService"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_44
    move v4, v5

    :goto_45
    return v4

    :cond_46
    move v6, v4

    goto :goto_21

    :catch_48
    move-exception v0

    goto :goto_45

    :cond_4a
    iget-object v4, p0, Lcom/android/settings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0d0594

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiPowerSave;->mProgress:Lcom/android/settings/ProgressCategory;

    if-eqz v4, :cond_66

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiPowerSave;->mProgress:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "WifiPowerSave"

    const-string v6, "Power Save mode OFF"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings.wifi.LocationProvidingService"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_44
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    instance-of v1, p2, Lcom/android/settings/wifi/Profile;

    if-eqz v1, :cond_4b

    check-cast p2, Lcom/android/settings/wifi/Profile;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/settings/wifi/Profile;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/wifi/AddConnection;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "PROFILE"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/settings/wifi/Profile;

    iget-object v3, v3, Lcom/android/settings/wifi/Profile;->profile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SSID"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/settings/wifi/Profile;

    iget-object v3, v3, Lcom/android/settings/wifi/Profile;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "BSSID"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/settings/wifi/Profile;

    iget-object v3, v3, Lcom/android/settings/wifi/Profile;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CID"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/settings/wifi/Profile;

    iget-object v3, v3, Lcom/android/settings/wifi/Profile;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ADDRESS"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/settings/wifi/Profile;

    iget-object v3, v3, Lcom/android/settings/wifi/Profile;->address:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/WifiPowerSave;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_4a
    return v0

    :cond_4b
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_4a
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPowerSave;->initPreferences()V

    return-void
.end method

.method public populateProfiles()V
    .registers 13

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiPowerSave;->mProgress:Lcom/android/settings/ProgressCategory;

    if-eqz v3, :cond_98

    iget-object v3, p0, Lcom/android/settings/wifi/WifiPowerSave;->mProgress:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/settings/ProgressCategory;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiPowerSave;->mProgress:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/wifi/WifiPowerSave;->mProgress:Lcom/android/settings/ProgressCategory;

    const v4, 0x7f0d0a57

    invoke-virtual {v3, v4}, Lcom/android/settings/ProgressCategory;->setNoDeviceFoundText(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_98

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2d
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_95

    new-instance v1, Lcom/android/settings/wifi/WifiDatabaseEntries;

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/wifi/WifiDatabaseEntries;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_91

    new-instance v10, Lcom/android/settings/wifi/Profile;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2, v1}, Lcom/android/settings/wifi/Profile;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDatabaseEntries;)V

    if-eqz v10, :cond_91

    iget-object v2, v10, Lcom/android/settings/wifi/Profile;->profile:Ljava/lang/String;

    if-eqz v2, :cond_91

    iget-object v2, p0, Lcom/android/settings/wifi/WifiPowerSave;->mProgress:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2, v10}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    const-string v2, "WifiPowerSave"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/android/settings/wifi/Profile;->profile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2d

    :cond_95
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_98
    return-void
.end method
