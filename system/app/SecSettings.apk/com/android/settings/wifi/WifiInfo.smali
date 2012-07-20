.class public Lcom/android/settings/wifi/WifiInfo;
.super Landroid/preference/PreferenceActivity;
.source "WifiInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070051

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiInfo;->addPreferencesFromResource(I)V

    return-void
.end method
