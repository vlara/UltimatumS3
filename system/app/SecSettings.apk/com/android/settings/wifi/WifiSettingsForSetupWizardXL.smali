.class public Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;
.super Landroid/app/Activity;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$1;,
        Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;
    }
.end annotation


# static fields
.field private static final sNetworkStateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddNetworkButton:Landroid/widget/Button;

.field private mBackButton:Landroid/widget/Button;

.field private mBottomPadding:Landroid/view/View;

.field private mConnectButton:Landroid/widget/Button;

.field private mConnectingStatusLayout:Landroid/view/View;

.field private mConnectingStatusView:Landroid/widget/TextView;

.field private mContentPadding:Landroid/view/View;

.field private mEditingTitle:Ljava/lang/CharSequence;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mNetworkName:Ljava/lang/CharSequence;

.field private mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshButton:Landroid/widget/Button;

.field private mScreenState:I

.field private mSkipOrNextButton:Landroid/widget/Button;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopDividerNoProgress:Landroid/view/View;

.field private mTopPadding:Landroid/view/View;

.field private mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWifiSettingsFragmentLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method private hideSoftwareKeyboard()V
    .registers 5

    const-string v1, "SetupWizard"

    const-string v2, "Hiding software keyboard."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_17
    return-void
.end method

.method private initViews()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "firstRun"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_19

    const v2, 0x7f0a008b

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_19
    const-string v2, "extra_prefs_landscape_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    :cond_25
    const-string v2, "extra_prefs_portrait_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    :cond_31
    const v2, 0x7f0a02eb

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f0a02ec

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    const v2, 0x7f0a02ed

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    const v2, 0x7f0a02f6

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a02f8

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02fc

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02fb

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02fa

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02f9

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02ea

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    const v2, 0x7f0a02ef

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    const v2, 0x7f0a02f0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a02f3

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    const v2, 0x7f0a02f4

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    return-void
.end method

.method private onAddNetworkButtonPressed()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    return-void
.end method

.method private onAuthenticationFailure()V
    .registers 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    iput v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_24
    const v1, 0x7f0a02f2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    return-void

    :cond_3c
    const-string v1, "SetupWizard"

    const-string v2, "Title during editing/adding a network was empty."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showEditingTitle()V

    goto :goto_24
.end method

.method private onBackButtonPressed()V
    .registers 13

    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-eq v4, v11, :cond_e

    iget v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7f

    :cond_e
    const-string v4, "SetupWizard"

    const-string v5, "Back button pressed after connect action."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->changeNextButtonState(Z)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const-string v4, "SetupWizard"

    const-string v5, "forgeting Wi-Fi network \"%s\" (id: %d)"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v6, v8

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    goto :goto_2f

    :cond_5c
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    :goto_64
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a02f2

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    return-void

    :cond_7f
    iput v8, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings;->resumeWifiScan()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_64
.end method

.method private onEapNetworkSelected()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f0d065a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private refreshAccessPoints(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->refreshAccessPoints()V

    return-void
.end method

.method private restoreFirstVisibilityState()V
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDefaultTitle()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    return-void
.end method

.method private showAddNetworkTitle()V
    .registers 3

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0d0654

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private showConnectedProgressBar()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private showConnectedState()V
    .registers 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectedTitle()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectedProgressBar()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v1, 0x7f0d066b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f0d065a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private showConnectedTitle()V
    .registers 6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0d0653

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_43
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method private showConnectingProgressBar()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private showConnectingState()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingTitle()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingProgressBar()V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    return-void
.end method

.method private showConnectingTitle()V
    .registers 6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0d0652

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_43
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method private showDefaultTitle()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0d0650

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDisconnectedProgressBar()V
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16
.end method

.method private showDisconnectedState(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private showEditingButtonState()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private showEditingTitle()V
    .registers 6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0d0651

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_43
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method private showScanningProgressBar()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method private showScanningState()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningProgressBar()V

    return-void
.end method

.method private showTopDividerWithProgressBar()V
    .registers 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method changeNextButtonState(Z)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f0d0659

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f0d0658

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_a
.end method

.method initSecurityFields(Landroid/view/View;I)Z
    .registers 9

    const v5, 0x7f0a02a8

    const v4, 0x7f0a02a7

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v0, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a02aa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a02ab

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x3

    if-ne p2, v2, :cond_73

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    const v1, 0x7f0a02a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_49
    const v1, 0x7f0a0290

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a02aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a02ab

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    :goto_6a
    return v0

    :cond_6b
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_49

    :cond_73
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_8c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_84

    if-ne p2, v1, :cond_8e

    :cond_84
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0a024d

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    :cond_8c
    :goto_8c
    move v0, v1

    goto :goto_6a

    :cond_8e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0a0276

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    goto :goto_8c
.end method

.method onAccessPointsUpdated(Landroid/preference/PreferenceScreen;Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_2d

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    iget v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2d
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    const v2, 0x7f040039

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/AccessPoint;->setLayoutResource(I)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_31

    :cond_47
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_13

    const-string v0, "SetupWizard"

    const-string v1, "AddNetwork button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onAddNetworkButtonPressed()V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_22

    const-string v0, "SetupWizard"

    const-string v1, "Refresh button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    goto :goto_12

    :cond_22
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_52

    const-string v0, "SetupWizard"

    const-string v1, "Skip/Next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d0658

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    :goto_49
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->finish()V

    goto :goto_12

    :cond_4d
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    goto :goto_49

    :cond_52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_61

    const-string v0, "SetupWizard"

    const-string v1, "Connect button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onConnectButtonPressed()V

    goto :goto_12

    :cond_61
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_12

    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onBackButtonPressed()V

    goto :goto_12
.end method

.method onConnectButtonPressed()V
    .registers 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f0d065a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    const v1, 0x7f0a02f2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v2, 0x7f0d066a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->requestWindowFeature(I)Z

    const v0, 0x7f0400f0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setContentView(I)V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$1;)V

    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a02f1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->initViews()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    return-void
.end method

.method onSaveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method onSupplicantStateChanged(Landroid/content/Intent;)V
    .registers 5

    const-string v1, "supplicantError"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    const-string v1, "SetupWizard"

    const-string v2, "Received authentication error event."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onAuthenticationFailure()V

    :cond_14
    return-void
.end method

.method setPaddingVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V
    .registers 8

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-eqz p1, :cond_12

    iget v1, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v1, v2, :cond_11

    iget v1, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    :cond_11
    const/4 p2, 0x1

    :cond_12
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings;->pauseWifiScan()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a02f2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v1, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;Landroid/view/ViewGroup;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    if-nez p1, :cond_48

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showAddNetworkTitle()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showEditingButtonState()V

    :goto_47
    return-void

    :cond_48
    iget v1, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_5c

    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto :goto_47

    :cond_5c
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showEditingTitle()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showEditingButtonState()V

    iget v1, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_78

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    goto :goto_47

    :cond_78
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const v2, 0x7f0d02c6

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f0d065f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_47
.end method

.method updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 5

    sget-object v1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_10

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    :cond_10
    sget-object v1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_64

    iget v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2f

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v1

    if-lez v1, :cond_2f

    invoke-static {p0, v0}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedState(Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-void

    :pswitch_32
    iget v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v1, :cond_53

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v1

    if-nez v1, :cond_42

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    goto :goto_2f

    :cond_42
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f

    :cond_53
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    goto :goto_2f

    :pswitch_57
    iget v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    goto :goto_2f

    :pswitch_60
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectedState()V

    goto :goto_2f

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_32
        :pswitch_57
        :pswitch_60
    .end packed-switch
.end method
