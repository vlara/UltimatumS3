.class public Lcom/android/settings/wifi/SelectAP;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SelectAP.java"


# instance fields
.field private ap_address:Ljava/lang/String;

.field private ap_bssid:Ljava/lang/String;

.field private ap_cid:Ljava/lang/String;

.field private ap_ssid:Ljava/lang/String;

.field mAlertDialog:Landroid/app/AlertDialog$Builder;

.field mSelectedDataPoint:Lcom/android/settings/wifi/DataPoint;

.field scan_ap:Landroid/preference/Preference;

.field ssidCidPair:Lcom/android/settings/ProgressCategory;

.field wm:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SelectAP;->addPreferencesFromResource(I)V

    const-string v0, "select_wifi_ap"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SelectAP;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/SelectAP;->ssidCidPair:Lcom/android/settings/ProgressCategory;

    iget-object v0, p0, Lcom/android/settings/wifi/SelectAP;->ssidCidPair:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f0d0206

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setNoDeviceFoundText(I)V

    const-string v0, "select_ap_dialog_scan_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SelectAP;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SelectAP;->scan_ap:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SelectAP;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SelectAP;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/SelectAP;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SelectAP;->populateAllProfiles()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SelectAP"

    const-string v1, "SelectAP, RESULT_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/SelectAP;->populateAllProfiles()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    instance-of v2, p2, Lcom/android/settings/wifi/DataPoint;

    if-eqz v2, :cond_8d

    check-cast p2, Lcom/android/settings/wifi/DataPoint;

    iput-object p2, p0, Lcom/android/settings/wifi/SelectAP;->mSelectedDataPoint:Lcom/android/settings/wifi/DataPoint;

    iget-object v0, p0, Lcom/android/settings/wifi/SelectAP;->mSelectedDataPoint:Lcom/android/settings/wifi/DataPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/DataPoint;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/SelectAP;->ap_ssid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/SelectAP;->mSelectedDataPoint:Lcom/android/settings/wifi/DataPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/DataPoint;->bssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/SelectAP;->ap_bssid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/SelectAP;->mSelectedDataPoint:Lcom/android/settings/wifi/DataPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/DataPoint;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/SelectAP;->ap_address:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/SelectAP;->mSelectedDataPoint:Lcom/android/settings/wifi/DataPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/DataPoint;->cid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/SelectAP;->ap_cid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/SelectAP;->ap_ssid:Ljava/lang/String;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/settings/wifi/SelectAP;->ap_cid:Ljava/lang/String;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/settings/wifi/SelectAP;->ap_bssid:Ljava/lang/String;

    if-eqz v0, :cond_61

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v0, "SSID"

    iget-object v3, p0, Lcom/android/settings/wifi/SelectAP;->ap_ssid:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "BSSID"

    iget-object v3, p0, Lcom/android/settings/wifi/SelectAP;->ap_bssid:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ADDRESS"

    iget-object v3, p0, Lcom/android/settings/wifi/SelectAP;->ap_address:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CID"

    iget-object v3, p0, Lcom/android/settings/wifi/SelectAP;->ap_cid:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SelectAP;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/SelectApDialog;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/wifi/SelectApDialog;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/SelectAP;->finish()V

    :goto_5f
    move v0, v1

    :goto_60
    return v0

    :cond_61
    iget-object v0, p0, Lcom/android/settings/wifi/SelectAP;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0a71

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/wifi/SelectAP$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/SelectAP$2;-><init>(Lcom/android/settings/wifi/SelectAP;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/wifi/SelectAP$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/SelectAP$1;-><init>(Lcom/android/settings/wifi/SelectAP;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/SelectAP;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_5f

    :cond_8d
    const-string v2, "select_ap_dialog_scan_network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/SelectAP;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/wifi/WifiPickerDialog;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/SelectAP;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5f

    :cond_a7
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_60
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SelectAP;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SelectAP;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/SelectAP;->ssidCidPair:Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/wifi/SelectAP;->ssidCidPair:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f0d0a57

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setNoDeviceFoundText(I)V

    :cond_1a
    invoke-virtual {p0}, Lcom/android/settings/wifi/SelectAP;->populateAllProfiles()V

    return-void
.end method

.method public populateAllProfiles()V
    .registers 13

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/SelectAP;->ssidCidPair:Lcom/android/settings/ProgressCategory;

    if-eqz v3, :cond_77

    iget-object v3, p0, Lcom/android/settings/wifi/SelectAP;->ssidCidPair:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/settings/ProgressCategory;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/SelectAP;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/SelectAP;->ssidCidPair:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/SelectAP;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_77

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_25
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "SelectAP"

    const-string v3, "Database Entries added"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v10, Lcom/android/settings/wifi/DataPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SelectAP;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2, v1}, Lcom/android/settings/wifi/DataPoint;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDatabaseEntries;)V

    if-eqz v10, :cond_70

    iget-object v2, p0, Lcom/android/settings/wifi/SelectAP;->ssidCidPair:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2, v10}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_70
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_25

    :cond_74
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_77
    return-void
.end method
