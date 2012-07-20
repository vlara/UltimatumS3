.class public Lcom/android/settings/wifi/WifiDatabaseEntries;
.super Ljava/lang/Object;
.source "WifiDatabaseEntries.java"


# instance fields
.field public address:Ljava/lang/String;

.field public bssid:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public profile:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->ssid:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->cid:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->bssid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->latitude:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->address:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->provider:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->profile:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->longitude:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getaddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getbssid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getcid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getprofile()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->profile:Ljava/lang/String;

    return-object v0
.end method

.method public getssid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->latitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->profile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDatabaseEntries;->longitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
