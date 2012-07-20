.class public final Lcom/sec/android/app/sysscope/service/SysScope;
.super Ljava/lang/Object;
.source "SysScope.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    }
.end annotation


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

.field private final mRemoteListener:Lcom/sec/android/app/sysscope/service/ISysScopeListener;

.field private mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->getDefaultListener()Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mRemoteListener:Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->connectToService()V

    return-void
.end method

.method static synthetic access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    return-object v0
.end method

.method private confirmServiceVersion()Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->getInfo()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v4, 0x13

    invoke-interface {v3, v4}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    :cond_12
    :goto_12
    return v2

    :cond_13
    const-string v3, "versionCode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_26

    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v4, 0xff

    invoke-interface {v3, v4}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    :cond_26
    const/4 v3, 0x4

    if-lt v3, v1, :cond_2b

    const/4 v2, 0x1

    goto :goto_12

    :cond_2b
    const-string v3, "SysScope"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Version missmatched, change the library with the valid version. The version of server is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private connectToService()V
    .registers 2

    const-string v0, "SYSSCOPE"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/ISysScopeService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->verifyServiceIntegrity()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    :cond_15
    return-void
.end method

.method private getDefaultListener()Lcom/sec/android/app/sysscope/service/ISysScopeListener;
    .registers 2

    new-instance v0, Lcom/sec/android/app/sysscope/service/SysScope$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/SysScope$1;-><init>(Lcom/sec/android/app/sysscope/service/SysScope;)V

    return-object v0
.end method

.method private verifyServiceIntegrity()Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->verifySysScopeService()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v2, 0x15

    invoke-interface {v1, v2}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    :cond_12
    const-string v1, "SysScope"

    const-string v2, "SysScope service has invalid signature"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_19
    return v0

    :cond_1a
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->confirmServiceVersion()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v2, 0x17

    invoke-interface {v1, v2}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    goto :goto_19

    :cond_2c
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private verifySysScopeService()Z
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->verifySysScopeService()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v3, 0x15

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x1

    goto :goto_1a
.end method


# virtual methods
.method public getInfo()Landroid/os/Bundle;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v3, 0x13

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return-object v2

    :cond_12
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    invoke-interface {v2}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->getInfo()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_25

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v3, 0x13

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_25} :catch_27

    :cond_25
    :goto_25
    move-object v2, v1

    goto :goto_11

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25
.end method

.method public getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v3, 0x13

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    :cond_10
    :goto_10
    return-object v1

    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    invoke-interface {v2}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    move-result-object v1

    goto :goto_10

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method
