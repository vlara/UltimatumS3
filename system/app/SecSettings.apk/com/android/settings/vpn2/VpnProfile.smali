.class Lcom/android/settings/vpn2/VpnProfile;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field dnsServers:Ljava/lang/String;

.field ipsecCaCert:Ljava/lang/String;

.field ipsecIdentifier:Ljava/lang/String;

.field ipsecSecret:Ljava/lang/String;

.field ipsecServerCert:Ljava/lang/String;

.field ipsecUserCert:Ljava/lang/String;

.field final key:Ljava/lang/String;

.field l2tpSecret:Ljava/lang/String;

.field mppe:Z

.field name:Ljava/lang/String;

.field password:Ljava/lang/String;

.field routes:Ljava/lang/String;

.field saveLogin:Z

.field searchDomains:Ljava/lang/String;

.field server:Ljava/lang/String;

.field type:I

.field username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/vpn2/VpnProfile;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnProfile;->mppe:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/vpn2/VpnProfile;->saveLogin:Z

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    return-void
.end method

.method static decode(Ljava/lang/String;[B)Lcom/android/settings/vpn2/VpnProfile;
    .registers 12

    const/4 v9, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v8, 0xe

    const/4 v2, 0x0

    if-nez p0, :cond_a

    move-object v0, v2

    :goto_9
    return-object v0

    :cond_a
    :try_start_a
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v6, "\u0000"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    if-lt v5, v8, :cond_20

    array-length v5, v1

    const/16 v6, 0xf

    if-le v5, v6, :cond_22

    :cond_20
    move-object v0, v2

    goto :goto_9

    :cond_22
    new-instance v0, Lcom/android/settings/vpn2/VpnProfile;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/android/settings/vpn2/VpnProfile;->type:I

    iget v5, v0, Lcom/android/settings/vpn2/VpnProfile;->type:I

    if-ltz v5, :cond_41

    iget v5, v0, Lcom/android/settings/vpn2/VpnProfile;->type:I

    if-le v5, v9, :cond_43

    :cond_41
    move-object v0, v2

    goto :goto_9

    :cond_43
    const/4 v5, 0x2

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    const/16 v5, 0x8

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/settings/vpn2/VpnProfile;->mppe:Z

    const/16 v5, 0x9

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const/16 v5, 0xa

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/16 v5, 0xb

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/16 v5, 0xc

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const/16 v5, 0xd

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    array-length v5, v1

    if-le v5, v8, :cond_af

    const/16 v5, 0xe

    aget-object v5, v1, v5

    :goto_94
    iput-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a6

    iget-object v5, v0, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a7

    :cond_a6
    move v3, v4

    :cond_a7
    iput-boolean v3, v0, Lcom/android/settings/vpn2/VpnProfile;->saveLogin:Z

    goto/16 :goto_9

    :catch_ab
    move-exception v3

    move-object v0, v2

    goto/16 :goto_9

    :cond_af
    const-string v5, ""
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b1} :catch_ab

    goto :goto_94
.end method


# virtual methods
.method encode()[B
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/vpn2/VpnProfile;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/settings/vpn2/VpnProfile;->saveLogin:Z

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    :goto_24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/settings/vpn2/VpnProfile;->saveLogin:Z

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    :goto_31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/vpn2/VpnProfile;->mppe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1

    :cond_99
    const-string v1, ""

    goto :goto_24

    :cond_9c
    const-string v1, ""

    goto :goto_31
.end method
