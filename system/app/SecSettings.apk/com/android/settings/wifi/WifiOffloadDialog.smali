.class public Lcom/android/settings/wifi/WifiOffloadDialog;
.super Landroid/app/Activity;
.source "WifiOffloadDialog.java"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field public mLaunchFromSetup:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private packageName:Ljava/lang/String;

.field public searching_progress:Landroid/widget/ProgressBar;

.field public searching_text:Landroid/widget/TextView;

.field taskID:I

.field private userPress:I

.field wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    iput v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    iput v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->userPress:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiOffloadDialog;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->userPress:I

    return p1
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 5

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->userPress:I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v1, :cond_18

    const-string v1, "WifiOffloadDialog"

    const-string v2, "Offload onBackKeyPressed()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiOffloadManager;->startDontUseWiFiPressedTimer()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiOffloadManager;->setDontuseWifiPressed(Z)V

    :cond_18
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v1, :cond_2c

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.setupwizard.DATA_SETUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->finish()V

    :goto_2b
    return-void

    :cond_2c
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_2b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/4 v9, 0x7

    const/4 v8, 0x0

    const/4 v7, 0x1

    iput-object p0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "LAUNCH_SETUPWIZARD"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v4, :cond_36

    const-string v4, "WifiOffloadDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " %%%%%%%%%%%%%%%%%%%%%%%%%%    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    if-ne v3, v7, :cond_3b

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiOffloadDialog;->requestWindowFeature(I)Z

    :cond_3b
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-ne v4, v7, :cond_48

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiOffloadDialog;->requestWindowFeature(I)Z

    const v4, 0x7f0f0001

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->setTheme(I)V

    :cond_48
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x100

    invoke-virtual {v4, v5, v8}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "WifiOffloadDialog"

    const-string v5, "Offload, Dialog comes....!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v4, :cond_ed

    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v4, "WifiOffloadDialog"

    const-string v5, "Requesting for WIFI from Setupwizard"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f0400e3

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f0400bc

    invoke-virtual {v4, v9, v5}, Landroid/view/Window;->setFeatureInt(II)V

    const v4, 0x7f0f0002

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->setTheme(I)V

    const v4, 0x7f0a02d0

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/wifi/WifiOffloadDialog$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiOffloadDialog$1;-><init>(Lcom/android/settings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9c
    const-string v4, "wifioffload"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiOffloadManager;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v4, :cond_c1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    :cond_c1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v4

    iput v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0a02ca

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/WifiSettings;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    const v4, 0x7f0a02cd

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->searching_text:Landroid/widget/TextView;

    const v4, 0x7f0a02cc

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->searching_progress:Landroid/widget/ProgressBar;

    return-void

    :cond_ed
    const v4, 0x7f0400e2

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->setContentView(I)V

    const v4, 0x7f0a02ce

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/wifi/WifiOffloadDialog$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiOffloadDialog$2;-><init>(Lcom/android/settings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9c
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    iget v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->userPress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6d

    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Top Activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog TaskID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    iget v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiOffloadManager;->checkAppNeedsMoveToFront(I)V

    :cond_6d
    return-void
.end method

.method protected onResume()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v1, :cond_33

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    const-string v1, "WifiOffloadDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package name in onResume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    :cond_33
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    :cond_40
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserLeaveHint() ===>>> : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->finish()V

    :cond_2e
    return-void
.end method
