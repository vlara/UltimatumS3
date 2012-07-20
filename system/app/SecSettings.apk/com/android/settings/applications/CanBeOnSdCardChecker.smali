.class final Lcom/android/settings/applications/CanBeOnSdCardChecker;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# instance fields
.field mInstallLocation:I

.field final mPm:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/CanBeOnSdCardChecker;->mPm:Landroid/content/pm/IPackageManager;

    return-void
.end method


# virtual methods
.method check(Landroid/content/pm/ApplicationInfo;)Z
    .registers 6

    const/4 v3, 0x2

    const/4 v0, 0x0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-nez v1, :cond_a

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_a

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-eq v1, v3, :cond_20

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-nez v1, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_a

    :cond_22
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/android/settings/applications/CanBeOnSdCardChecker;->mInstallLocation:I

    if-ne v1, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_a
.end method

.method init()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/CanBeOnSdCardChecker;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/CanBeOnSdCardChecker;->mInstallLocation:I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    const-string v1, "CanBeOnSdCardChecker"

    const-string v2, "Is Package Manager running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method
