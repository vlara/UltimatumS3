.class Lcom/android/settings/wifi/WifiNewDialog;
.super Landroid/app/AlertDialog;
.source "WifiNewDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static ConnectedCorrectPassword:Ljava/lang/String;

.field public static ConnectedPassword:Ljava/lang/String;

.field public static Remembered:I

.field public static bEdit:I

.field public static changedssid:Ljava/lang/String;

.field public static previousssid:Ljava/lang/String;


# instance fields
.field final details:Z

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field public mAccessPointSecurity:I

.field private mConnectedAPEdit:I

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field final mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mNetworkSetupSpinner:Landroid/widget/Spinner;

.field public mPasswordView:Landroid/widget/EditText;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field public mSsidView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field final manageNetwork:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, " "

    sput-object v0, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    const-string v0, " "

    sput-object v0, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->manageNetwork:Z

    iput-object p3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    if-nez p4, :cond_29

    :goto_26
    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    return-void

    :cond_29
    iget v0, p4, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_26
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    iput-boolean p6, p0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->manageNetwork:Z

    iput-object p3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    if-nez p4, :cond_2a

    :goto_27
    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    return-void

    :cond_2a
    iget v0, p4, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_27
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400df

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .registers 12

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_27

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_27

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_15
    iput-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v10, :cond_2a

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiNewDialog;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    if-eqz v6, :cond_2a

    move v7, v8

    :goto_26
    return v7

    :cond_27
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_15

    :cond_2a
    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_82

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_82

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_38
    iput-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v10, :cond_80

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v7, :cond_80

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v7, :cond_80

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v7, :cond_80

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_6c
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v4, v1}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_73} :catch_85

    move-result v6

    :goto_74
    if-nez v6, :cond_8a

    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_80
    move v7, v9

    goto :goto_26

    :cond_82
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_38

    :catch_85
    move-exception v0

    const v6, 0x7f0d00cd

    goto :goto_74

    :cond_8a
    move v7, v8

    goto :goto_26
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v0, 0x7f0d022e

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    array-length v0, v3

    if-nez v0, :cond_30

    :cond_1a
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    :goto_1e
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void

    :cond_30
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v4

    array-length v2, v3

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1e
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_26

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .registers 6

    if-eqz p2, :cond_1d

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_e
    if-ltz v1, :cond_1d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1d
    return-void

    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_e
.end method

.method private showIpConfigFields()V
    .registers 8

    const v6, 0x7f0a02a1

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a029f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_194

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v5, :cond_194

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    :goto_24
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v3, :cond_188

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_93

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a02a2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a02a3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a02a4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a02a5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a02a6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_93
    new-array v0, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/wifi/WifiNewDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiNewDialog$1;-><init>(Lcom/android/settings/wifi/WifiNewDialog;)V

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    if-eqz v1, :cond_13b

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e2
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_ea
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_ea

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_109
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_126

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_126
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13b
    :goto_13b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_187

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_187

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_187

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_187

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-eqz v0, :cond_187

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_187
    return-void

    :cond_188
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13b

    :cond_194
    move-object v1, v0

    goto/16 :goto_24
.end method

.method private showNetworkSetupFields()V
    .registers 8

    const v6, 0x7f0a0290

    const v5, 0x7f0a028e

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a028c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a028d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_2c
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v3, :cond_53

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3d
    iget v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-eqz v1, :cond_52

    const/4 v1, 0x3

    if-eq v0, v1, :cond_49

    if-eq v0, v3, :cond_49

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    :cond_49
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_52
    :goto_52
    return-void

    :cond_53
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    :cond_5d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_52
.end method

.method private showProxyFields()V
    .registers 8

    const v6, 0x7f0a029b

    const v5, 0x7f0a029a

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0298

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_ba

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ba

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    :goto_28
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_7d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a029c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a029d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a029e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_7d
    if-eqz v1, :cond_a6

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    if-eqz v0, :cond_a6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a6
    :goto_a6
    return-void

    :cond_a7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a6

    :cond_ba
    move-object v1, v0

    goto/16 :goto_28
.end method

.method private showSecurityFields()V
    .registers 8

    const v4, 0x7f0a0290

    const v3, 0x7f0a027a

    const/4 v6, -0x1

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_6d
    :goto_6d
    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_83

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0291

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28

    :cond_7f
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_6d

    :cond_83
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0291

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0292

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "PEAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "TTLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "FAST"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a02b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0293

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0294

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0295

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1f3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v6, :cond_1f3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_161

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v3, "fast_provisioning="

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_161
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auth="

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_17c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1ac
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v6, :cond_28

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "WifiPolicy"

    const-string v1, "Enterprise Wifi settings not editable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_28

    :cond_1f3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v1, "MSCHAPV2"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_1ac
.end method

.method private validate()V
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x3

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_47

    :cond_1d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v0, v2, :cond_56

    :cond_27
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->chosenNetworkSetupMethod()I

    move-result v0

    if-nez v0, :cond_56

    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v0, v5, :cond_39

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_47

    :cond_39
    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v0, v6, :cond_56

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_56

    :cond_47
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_55
    :goto_55
    return-void

    :cond_56
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_93

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->chosenNetworkSetupMethod()I

    move-result v0

    if-nez v0, :cond_93

    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v0, v5, :cond_76

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_84

    :cond_76
    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v0, v6, :cond_93

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_93

    :cond_84
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_55

    :cond_93
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->ipAndProxyFieldsAreValid()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_55

    :cond_a8
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_55
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .registers 13

    const v9, 0x7f0d02db

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_9

    :cond_8
    :goto_8
    return v8

    :cond_9
    iget-object v10, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    :try_start_14
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_17} :catch_31

    move-result-object v5

    const/4 v7, -0x1

    :try_start_19
    iget-object v10, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_26} :catch_8d

    move-result v7

    :goto_27
    if-ltz v7, :cond_2d

    const/16 v10, 0x20

    if-le v7, v10, :cond_36

    :cond_2d
    const v8, 0x7f0d02dc

    goto :goto_8

    :catch_31
    move-exception v2

    const v8, 0x7f0d02d9

    goto :goto_8

    :cond_36
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v5, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_49
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_4c} :catch_81

    move-result-object v4

    new-instance v10, Landroid/net/RouteInfo;

    invoke-direct {v10, v4}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_60
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_63} :catch_86

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_8

    iget-object v10, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_79
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_79 .. :try_end_7c} :catch_89

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_8

    :catch_81
    move-exception v2

    const v8, 0x7f0d02da

    goto :goto_8

    :catch_86
    move-exception v2

    move v8, v9

    goto :goto_8

    :catch_89
    move-exception v2

    move v8, v9

    goto/16 :goto_8

    :catch_8d
    move-exception v10

    goto :goto_27
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->validate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public chosenNetworkSetupMethod()I
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .registers 10

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/16 v6, 0x22

    const/4 v5, 0x0

    const-string v3, "WifiNewDialog"

    const-string v4, "getConfig()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v8, :cond_1c

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v3, :cond_1c

    const/4 v0, 0x0

    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v3, :cond_4e

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_37
    iget v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    packed-switch v3, :pswitch_data_286

    :cond_3c
    :goto_3c
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_1b

    :cond_4e
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v8, :cond_5f

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_37

    :cond_5f
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v3, :cond_73

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_73
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_37

    :pswitch_7a
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_3c

    :pswitch_80
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_bf

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_bf

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_cd

    :cond_bf
    const-string v3, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cd

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v3, v5

    goto/16 :goto_3c

    :cond_cd
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    goto/16 :goto_3c

    :pswitch_e8
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_117

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3c

    :cond_117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3c

    :pswitch_130
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FAST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17c

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fast_provisioning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v4, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    :cond_17c
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_1fb

    const-string v3, ""

    :goto_188
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_216

    const-string v3, ""

    :goto_197
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_233

    const-string v3, ""

    :goto_1a6
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_250

    const-string v3, ""

    :goto_1b5
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_26d

    const-string v3, ""

    :goto_1c4
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_279

    const-string v3, ""

    :goto_1d3
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3c

    :cond_1fb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auth="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_188

    :cond_216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_197

    :cond_233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1a6

    :cond_250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRPKEY_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1b5

    :cond_26d
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1c4

    :cond_279
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1d3

    nop

    :pswitch_data_286
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_80
        :pswitch_e8
        :pswitch_130
    .end packed-switch
.end method

.method getWpsConfig()Landroid/net/wifi/WpsInfo;
    .registers 4

    new-instance v1, Landroid/net/wifi/WpsInfo;

    invoke-direct {v1}, Landroid/net/wifi/WpsInfo;-><init>()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    const/4 v0, 0x4

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    const-string v0, "WifiNewDialog"

    const-string v2, "WPS not selected type"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_19
    return-object v0

    :pswitch_1a
    const/4 v0, 0x0

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    :goto_1d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a028f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    :goto_3a
    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    new-instance v0, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object v0, v1

    goto :goto_19

    :pswitch_4f
    const/4 v0, 0x2

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1d

    :pswitch_53
    const/4 v0, 0x1

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1d

    :cond_57
    const/4 v0, 0x0

    goto :goto_3a

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_4f
        :pswitch_53
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "on back pressed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    const v2, 0x7f0a02c1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a027a

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_50

    const/16 v0, 0x90

    :goto_3b
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2e

    :cond_50
    const/16 v0, 0x80

    goto :goto_3b

    :cond_53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02c0

    if-ne v0, v1, :cond_2e

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e

    :cond_6f
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 19

    const-string v13, "WifiNewDialog"

    const-string v14, "onCreate()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v13, "enterprise_policy"

    invoke-virtual {v3, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f0400dd

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setView(Landroid/view/View;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setInverseBackgroundForced(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a0278

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a02a0

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a0299

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v13, :cond_215

    const-string v13, "WifiNewDialog"

    const-string v14, "onCreate: mAccessPoint == null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v13, 0x7f0d01fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a0151

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a0276

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v13, -0x1

    const v14, 0x7f0d02c6

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v13, -0x3

    const v14, 0x7f0d02c8

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x14

    invoke-virtual {v13, v14}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_f1
    :goto_f1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v13, :cond_5b8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_5b8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_5b8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    if-eqz v13, :cond_58e

    const/4 v13, -0x3

    const v14, 0x7f0d0213

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_120
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    :goto_123
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_16e

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    sget v13, Lcom/android/settings/wifi/WifiNewDialog;->Remembered:I

    if-eqz v13, :cond_14e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_14e

    const/4 v13, -0x1

    const v14, 0x7f0d0213

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_14e
    const/4 v13, 0x1

    sput v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    sget v13, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    if-nez v13, :cond_5f8

    const/4 v13, -0x2

    const v14, 0x7f0d0216

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v13, 0x1

    sput v13, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    :goto_169
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    :cond_16e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v13, :cond_1fc

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1fc

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_1fc

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_1fc

    sget v13, Lcom/android/settings/wifi/WifiNewDialog;->Remembered:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1da

    const/4 v13, -0x1

    const v14, 0x7f0d02c6

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setInverseBackgroundForced(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v13, :cond_60e

    const v13, 0x7f0d02cd

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1da
    :goto_1da
    const/4 v13, -0x3

    const v14, 0x7f0d0213

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v13, -0x2

    const v14, 0x7f0d0214

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1fc
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v13, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    if-eqz v13, :cond_214

    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    if-eqz v13, :cond_214

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->validate()V

    :cond_214
    return-void

    :cond_215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v13, :cond_4a7

    const v13, 0x7f0d02ce

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_23b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a0275

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const-string v13, "WifiNewDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onCreate: details "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    if-eqz v10, :cond_27e

    const v13, 0x7f0d021c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v10}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_27e
    const v13, 0x7f090015

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f0d021a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v6

    const/4 v13, -0x1

    if-eq v6, v13, :cond_2bf

    const v13, 0x7f090023

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    array-length v13, v9

    if-le v6, v13, :cond_2b5

    const-string v13, "WifiNewDialog"

    const-string v14, "Force level of wifi signal"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    array-length v13, v9

    add-int/lit8 v6, v13, -0x1

    :cond_2b5
    const v13, 0x7f0d021b

    aget-object v14, v9, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_2bf
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_2fa

    const v13, 0x7f0d021d

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Mbps"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-eqz v1, :cond_2fa

    const v13, 0x7f0d021e

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_2fa
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_35f

    const-string v13, "WifiNewDialog"

    const-string v14, "network id is valid"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v14, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v13, v14, :cond_4b4

    const-string v13, "WifiNewDialog"

    const-string v14, "ip assignment static"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v8, 0x1

    :goto_329
    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v14, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v13, v14, :cond_4be

    const-string v13, "WifiNewDialog"

    const-string v14, "proxy static"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v8, 0x1

    :goto_33f
    iget v13, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_35f

    iget v13, v2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_35f

    const-string v13, "WifiNewDialog"

    const-string v14, "DNS FAILURE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v13, 0x7f0d0232

    const v14, 0x7f0d0233

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_35f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3a7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v13, v13, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v13, :cond_3a7

    const-string v13, "WifiNewDialog"

    const-string v14, "wps AVAILABLE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_3a7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/enterprise/WifiPolicy;->isNetworkSecure(IZ)Z

    move-result v13

    if-eqz v13, :cond_3a7

    const-string v13, "WifiNewDialog"

    const-string v14, "to show network setup  after wps"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->showNetworkSetupFields()V

    :cond_3a7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    if-eqz v13, :cond_4c8

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3b1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3c0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v13, :cond_40a

    :cond_3c0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->showSecurityFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->showIpConfigFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->showProxyFields()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a02bf

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a02c0

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_40a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a02c0

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a02c1

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_40a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v13, :cond_4cf

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a0151

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a0276

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a0278

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a0278

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    const/4 v13, -0x1

    const v14, 0x7f0d02c6

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v13, -0x3

    const v14, 0x7f0d02c8

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v13, "WifiNewDialog"

    const-string v14, "EDIT true connect and submit btn set "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->previousssid:Ljava/lang/String;

    const/4 v13, 0x1

    sput v13, Lcom/android/settings/wifi/WifiNewDialog;->bEdit:I

    goto/16 :goto_f1

    :cond_4a7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_23b

    :cond_4b4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_329

    :cond_4be
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_33f

    :cond_4c8
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3b1

    :cond_4cf
    if-nez v10, :cond_57d

    const/4 v13, -0x1

    if-eq v6, v13, :cond_57d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v13, :cond_54e

    const v13, 0x7f0d02cd

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string v13, "WifiNewDialog"

    const-string v14, "show_message_ap_none "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_501
    :goto_501
    const/4 v13, -0x1

    const v14, 0x7f0d02c6

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v13, "WifiNewDialog"

    const-string v14, "EDIT false state null set connect button "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_519
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_f1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_f1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->manageNetwork:Z

    if-nez v13, :cond_f1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_f1

    const/4 v13, -0x1

    const v14, 0x7f0d02c7

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_f1

    :cond_54e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_501

    const v13, 0x7f0d0215

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string v13, "WifiNewDialog"

    const-string v14, "show_message_ap "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_501

    :cond_57d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a029f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_519

    :cond_58e
    const/4 v13, -0x3

    const v14, 0x7f0d0212

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    const/4 v13, -0x2

    const v14, 0x7f0d0213

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v13, 0x0

    sput v13, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_120

    :cond_5b8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v13, :cond_5e5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    if-eqz v10, :cond_5e5

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v10, v13, :cond_5d4

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v10, v13, :cond_5d4

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v10, v13, :cond_5e5

    :cond_5d4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0a0275

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5e5
    const/4 v13, -0x2

    const v14, 0x7f0d02c9

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_123

    :cond_5f8
    const/4 v13, -0x2

    const v14, 0x7f0d0214

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v13, 0x1

    sput v13, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_169

    :cond_60e
    const v13, 0x7f0d0215

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/WifiNewDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1da
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    const v3, 0x7f0a02b1

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_12

    iput p3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->showSecurityFields()V

    :goto_e
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->validate()V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1a

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->showNetworkSetupFields()V

    goto :goto_e

    :cond_1a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_22

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->showProxyFields()V

    goto :goto_e

    :cond_22
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_71

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FAST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a02b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a02b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e

    :cond_65
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e

    :cond_71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->showIpConfigFields()V

    goto :goto_e
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public show()V
    .registers 7

    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v3, -0x1

    const/high16 v2, 0x4160

    const-string v0, "WifiNewDialog"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    :cond_23
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    :cond_30
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    :cond_3d
    return-void
.end method
