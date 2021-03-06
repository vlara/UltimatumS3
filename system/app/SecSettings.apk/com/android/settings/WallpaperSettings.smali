.class public Lcom/android/settings/WallpaperSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WallpaperSettings.java"


# instance fields
.field mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

.field private mLockScreenWallpaper:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/WallpaperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/WallpaperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/WallpaperSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    const v2, 0x7f07005a

    invoke-virtual {p0, v2}, Lcom/android/settings/WallpaperSettings;->addPreferencesFromResource(I)V

    const-string v2, "homescreen_wallpaper"

    invoke-virtual {p0, v2}, Lcom/android/settings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/WallpaperSettings;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    const-string v2, "lockscreen_wallpaper"

    invoke-virtual {p0, v2}, Lcom/android/settings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/WallpaperSettings;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Wallpaper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    invoke-virtual {p0}, Lcom/android/settings/WallpaperSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "download_wallpaper"

    invoke-virtual {p0, v3}, Lcom/android/settings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_52
    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/WallpaperSettings;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x7f0d0766

    invoke-virtual {p0, v2}, Lcom/android/settings/WallpaperSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/WallpaperSettings;->startActivity(Landroid/content/Intent;)V

    :cond_1e
    :goto_1e
    return v1

    :cond_1f
    iget-object v2, p0, Lcom/android/settings/WallpaperSettings;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1e
.end method

.method public onResume()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings/WallpaperSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/settings/WallpaperSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WallpaperSettings;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/WallpaperSettings;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const-string v1, "both_wallpaper"

    invoke-virtual {p0, v1}, Lcom/android/settings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2f
    return-void
.end method
