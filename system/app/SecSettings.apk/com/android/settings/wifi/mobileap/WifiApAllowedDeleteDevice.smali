.class Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;
.super Landroid/preference/CheckBoxPreference;
.source "WifiApAllowedDeleteDevice.java"


# instance fields
.field private mMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .registers 5

    instance-of v1, p1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->mMac:Ljava/lang/String;

    return-void
.end method
