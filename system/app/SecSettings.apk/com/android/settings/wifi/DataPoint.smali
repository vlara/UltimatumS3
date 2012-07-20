.class Lcom/android/settings/wifi/DataPoint;
.super Landroid/preference/Preference;
.source "DataPoint.java"


# instance fields
.field address:Ljava/lang/String;

.field bssid:Ljava/lang/String;

.field cid:Ljava/lang/String;

.field ssid:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDatabaseEntries;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/android/settings/wifi/WifiDatabaseEntries;->getssid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/DataPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/wifi/WifiDatabaseEntries;->getbssid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/DataPoint;->bssid:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/wifi/WifiDatabaseEntries;->getaddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/DataPoint;->address:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/wifi/WifiDatabaseEntries;->getcid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/DataPoint;->cid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/DataPoint;->address:Ljava/lang/String;

    if-eqz v0, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/DataPoint;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/DataPoint;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/DataPoint;->title:Ljava/lang/String;

    :goto_42
    iget-object v0, p0, Lcom/android/settings/wifi/DataPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/DataPoint;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/DataPoint;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/DataPoint;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown address\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/DataPoint;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/DataPoint;->title:Ljava/lang/String;

    goto :goto_42
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/DataPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method
