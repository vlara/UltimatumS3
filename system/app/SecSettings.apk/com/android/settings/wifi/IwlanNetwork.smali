.class public Lcom/android/settings/wifi/IwlanNetwork;
.super Landroid/preference/Preference;
.source "IwlanNetwork.java"


# instance fields
.field private defaultPdgDomainName:Ljava/lang/String;

.field private isConnected:Z

.field private pdgAddress:Ljava/lang/String;

.field private pdgDomainName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    :try_start_3
    iput-boolean p3, p0, Lcom/android/settings/wifi/IwlanNetwork;->isConnected:Z

    const-string v1, "pdg_name"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "pdg_name"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanNetwork;->pdgDomainName:Ljava/lang/String;

    :cond_15
    const-string v1, "pdg_ipaddr"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "pdg_ipaddr"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanNetwork;->pdgAddress:Ljava/lang/String;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_25} :catch_52

    :cond_25
    :goto_25
    iput-object p4, p0, Lcom/android/settings/wifi/IwlanNetwork;->defaultPdgDomainName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanNetwork;->getDefaultPdgDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanNetwork;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0a3e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/IwlanNetwork;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanNetwork;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0a41

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/IwlanNetwork;->setSummary(Ljava/lang/CharSequence;)V

    :goto_51
    return-void

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_25

    :cond_57
    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/IwlanNetwork;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanNetwork;->pdgAddress:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/IwlanNetwork;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_51
.end method


# virtual methods
.method public getDefaultPdgDomainName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanNetwork;->defaultPdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPdgDomainName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanNetwork;->pdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPdgIpAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanNetwork;->pdgAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/wifi/IwlanNetwork;->isConnected:Z

    return v0
.end method
