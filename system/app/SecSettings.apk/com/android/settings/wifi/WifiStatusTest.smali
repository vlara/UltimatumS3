.class public Lcom/android/settings/wifi/WifiStatusTest;
.super Landroid/app/Activity;
.source "WifiStatusTest.java"


# instance fields
.field private mBSSID:Landroid/widget/TextView;

.field private mHiddenSSID:Landroid/widget/TextView;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field private mIPAddr:Landroid/widget/TextView;

.field private mLinkSpeed:Landroid/widget/TextView;

.field private mMACAddr:Landroid/widget/TextView;

.field private mNetworkId:Landroid/widget/TextView;

.field private mNetworkState:Landroid/widget/TextView;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field private mRSSI:Landroid/widget/TextView;

.field private mSSID:Landroid/widget/TextView;

.field private mScanList:Landroid/widget/TextView;

.field private mSupplicantState:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:Landroid/widget/TextView;

.field private mWifiStateFilter:Landroid/content/IntentFilter;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private pingTestButton:Landroid/widget/Button;

.field private updateButton:Landroid/widget/Button;

.field updateButtonHandler:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings/wifi/WifiStatusTest$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiStatusTest$1;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/WifiStatusTest$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiStatusTest$2;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/wifi/WifiStatusTest$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiStatusTest$3;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->updateButtonHandler:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/NetworkInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mIPAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mLinkSpeed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mMACAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mNetworkId:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSSID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiStatusTest;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->handleScanResultsAvailable()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiStatusTest;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/WifiStatusTest;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->pingHostname()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/WifiStatusTest;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->httpClientTest()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;ZI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiStatusTest;->handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->handleSignalChanged(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiStatusTest;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->updatePingState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setWifiStateText(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mBSSID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHiddenSSID:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mNetworkState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    return-void
.end method

.method private handleScanResultsAvailable()V
    .registers 7

    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v1, :cond_41

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_13
    if-ltz v0, :cond_41

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    if-nez v3, :cond_20

    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_20
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d

    :cond_41
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mScanList:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private handleSignalChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V
    .registers 6

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "ERROR AUTHENTICATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    return-void

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V

    goto :goto_9
.end method

.method private handleWifiStateChanged(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setWifiStateText(I)V

    return-void
.end method

.method private httpClientTest()V
    .registers 7

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_5
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v4, "http://www.google.com"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_24

    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    :goto_20
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :goto_23
    return-void

    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail: Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3d} :catch_3e

    goto :goto_20

    :catch_3e
    move-exception v1

    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_23
.end method

.method private final pingHostname()V
    .registers 6

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "ping -c 1 -w 100 www.google.com"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    if-nez v2, :cond_15

    const-string v3, "Pass"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    :goto_14
    return-void

    :cond_15
    const-string v3, "Fail: Host unreachable"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;
    :try_end_19
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_20
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_19} :catch_26

    goto :goto_14

    :catch_1a
    move-exception v0

    const-string v3, "Fail: Unknown Host"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_14

    :catch_20
    move-exception v0

    const-string v3, "Fail: IOException"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_14

    :catch_26
    move-exception v0

    const-string v3, "Fail: InterruptedException"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_14
.end method

.method private final pingIpAddr()V
    .registers 8

    :try_start_0
    const-string v1, "74.125.47.104"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 -w 100 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    if-nez v3, :cond_28

    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    :goto_27
    return-void

    :cond_28
    const-string v4, "Fail: IP addr not reachable"

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2c} :catch_33

    goto :goto_27

    :catch_2d
    move-exception v0

    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_27

    :catch_33
    move-exception v0

    const-string v4, "Fail: InterruptedException"

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_27
.end method

.method private setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V
    .registers 4

    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "FOUR WAY HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    return-void

    :cond_10
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "ASSOCIATED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_20
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "ASSOCIATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_30
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "COMPLETED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_40
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_50
    sget-object v0, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "DORMANT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_60
    sget-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "GROUP HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_70
    sget-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "INACTIVE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_80
    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "INVALID"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_90
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "SCANNING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_a1
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "UNINITIALIZED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_b2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "BAD"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "WifiStatusTest"

    const-string v1, "supplicant state is bad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f
.end method

.method private setWifiStateText(I)V
    .registers 5

    packed-switch p1, :pswitch_data_3a

    const-string v0, "BAD"

    const-string v1, "WifiStatusTest"

    const-string v2, "wifi state is bad"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_12
    const v1, 0x7f0d0362

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :pswitch_1a
    const v1, 0x7f0d0363

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :pswitch_22
    const v1, 0x7f0d0364

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :pswitch_2a
    const v1, 0x7f0d0365

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :pswitch_32
    const v1, 0x7f0d0366

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1a
        :pswitch_22
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method

.method private final updatePingState()V
    .registers 8

    const v6, 0x7f0d0044

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/android/settings/wifi/WifiStatusTest$4;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiStatusTest$4;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    new-instance v3, Lcom/android/settings/wifi/WifiStatusTest$5;

    invoke-direct {v3, p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusTest$5;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/android/settings/wifi/WifiStatusTest$6;

    invoke-direct {v1, p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusTest$6;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Lcom/android/settings/wifi/WifiStatusTest$7;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusTest$7;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f0400f2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->setContentView(I)V

    const v0, 0x7f0a02fd

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->updateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->updateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->updateButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02fe

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiState:Landroid/widget/TextView;

    const v0, 0x7f0a02ff

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mNetworkState:Landroid/widget/TextView;

    const v0, 0x7f0a0300

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    const v0, 0x7f0a0302

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mBSSID:Landroid/widget/TextView;

    const v0, 0x7f0a0276

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSSID:Landroid/widget/TextView;

    const v0, 0x7f0a0303

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHiddenSSID:Landroid/widget/TextView;

    const v0, 0x7f0a0304

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mIPAddr:Landroid/widget/TextView;

    const v0, 0x7f0a0305

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mMACAddr:Landroid/widget/TextView;

    const v0, 0x7f0a0306

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mNetworkId:Landroid/widget/TextView;

    const v0, 0x7f0a0307

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mLinkSpeed:Landroid/widget/TextView;

    const v0, 0x7f0a0308

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mScanList:Landroid/widget/TextView;

    const v0, 0x7f0a01b5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;

    const v0, 0x7f0a01b6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    const v0, 0x7f0a01b7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    const v0, 0x7f0a01b4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->pingTestButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->pingTestButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
