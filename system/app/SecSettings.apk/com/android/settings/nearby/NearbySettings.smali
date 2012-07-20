.class public Lcom/android/settings/nearby/NearbySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;,
        Lcom/android/settings/nearby/NearbySettings$HandleRejectDevice;,
        Lcom/android/settings/nearby/NearbySettings$HandleAcceptDevice;,
        Lcom/android/settings/nearby/NearbySettings$HandleAllowUpload;,
        Lcom/android/settings/nearby/NearbySettings$HandleShareContentType;,
        Lcom/android/settings/nearby/NearbySettings$HandleServerName;,
        Lcom/android/settings/nearby/NearbySettings$HandleServerStart;,
        Lcom/android/settings/nearby/NearbySettings$HandleSetUploadPath;
    }
.end annotation


# static fields
.field protected static mStorageManager:Landroid/os/storage/StorageManager;

.field protected static mStorageVolumes:[Landroid/os/storage/StorageVolume;


# instance fields
.field private final SHARE_VALUE_MUSIC:Ljava/lang/String;

.field private final SHARE_VALUE_PHOTOS:Ljava/lang/String;

.field private final SHARE_VALUE_VIDEOS:Ljava/lang/String;

.field private bFunctionState:Z

.field private bInitPreference:Z

.field private bRegisterReceiver:Z

.field private bWifiPopupShown:Z

.field private mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

.field private mAccessControl:Landroid/preference/ListPreference;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Landroid/preference/EditTextPreference;

.field private mDeviceNameWatcher:Lcom/android/settings/nearby/EditTextWatcher;

.field private mDownloadFrom:Landroid/preference/ListPreference;

.field private mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

.field private mFunctionOnoff:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

.field private mPreferenceChangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChangeThread:Landroid/os/HandlerThread;

.field private mPreferenceChangeWorker:Landroid/os/Handler;

.field private mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

.field private mSharedContents:Landroid/preference/MultiSelectListPreference;

.field private mSharedContentsValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->SHARE_VALUE_VIDEOS:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->SHARE_VALUE_PHOTOS:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->SHARE_VALUE_MUSIC:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bWifiPopupShown:Z

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bInitPreference:Z

    iput-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    new-instance v0, Lcom/android/settings/nearby/NearbySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbySettings$1;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/settings/nearby/NearbySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbySettings$4;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/nearby/NearbySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbySettings$5;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/IMediaServer;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/IMediaServer;)Lcom/android/settings/nearby/IMediaServer;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/nearby/NearbySettings;Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/nearby/NearbySettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/nearby/NearbySettings;Landroid/preference/Preference;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/nearby/NearbySettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/nearby/NearbySettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bInitPreference:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/nearby/NearbySettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/nearby/NearbySettings;->bInitPreference:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/nearby/NearbySettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->refreshPreferenceValues()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/nearby/NearbySettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/nearby/NearbySettings;->bWifiPopupShown:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/settings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_80

    move-result-object v0

    :try_start_f
    invoke-interface {v0}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "[Mobile]"
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_34
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_80

    :goto_17
    if-eqz p1, :cond_4f

    :try_start_19
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2f} :catch_80

    move-result-object v0

    :goto_30
    return-object v0

    :cond_31
    :try_start_31
    const-string v0, "[Tablet]"
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_33} :catch_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_33} :catch_80

    goto :goto_17

    :catch_34
    move-exception v0

    :try_start_35
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: exception on wm.canStatusBarHide(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_17

    :cond_4f
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_67

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d0941

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_7e} :catch_80

    move-result-object v0

    goto :goto_30

    :catch_80
    move-exception v0

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: checkDeviceName(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p1

    goto :goto_30
.end method

.method private initChangePreferenceHandler()V
    .registers 6

    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: initChangePreferenceHandler"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_onoff"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleServerStart;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbySettings$HandleServerStart;-><init>(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_shared_contents"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleShareContentType;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbySettings$HandleShareContentType;-><init>(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_device_name"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleServerName;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbySettings$HandleServerName;-><init>(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_from"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleAllowUpload;

    invoke-direct {v3, p0}, Lcom/android/settings/nearby/NearbySettings$HandleAllowUpload;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_access_control"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;

    invoke-direct {v3, p0}, Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_to"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleSetUploadPath;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbySettings$HandleSetUploadPath;-><init>(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_accept_device"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleAcceptDevice;

    invoke-direct {v3, p0}, Lcom/android/settings/nearby/NearbySettings$HandleAcceptDevice;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_reject_device"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleRejectDevice;

    invoke-direct {v3, p0}, Lcom/android/settings/nearby/NearbySettings$HandleRejectDevice;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_6b} :catch_6c

    :goto_6b
    return-void

    :catch_6c
    move-exception v0

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: initChangePreferenceHandler() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b
.end method

.method private initPreferences()V
    .registers 5

    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: initPreferences()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v2}, Lcom/android/settings/nearby/DownloadListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAccessControl:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mAccessControl:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_38

    :goto_37
    return-void

    :catch_38
    move-exception v0

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: initPreferences() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37
.end method

.method private refreshPreference(Landroid/preference/Preference;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v1, 0x1

    :goto_a
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_11
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private refreshPreferenceValues()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v2}, Lcom/android/settings/nearby/DownloadListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAccessControl:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mAccessControl:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_60

    :goto_37
    :try_start_37
    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v1

    if-nez v1, :cond_7d

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v1}, Lcom/android/settings/nearby/DownloadListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_59
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_5f} :catch_8a

    :cond_5f
    :goto_5f
    return-void

    :catch_60
    move-exception v0

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: refreshPreferenceValues() preference variable :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37

    :cond_7d
    :try_start_7d
    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_89} :catch_8a

    goto :goto_5f

    :catch_8a
    move-exception v0

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: refreshPreferenceValues() Storages :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f
.end method

.method private registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const-string v6, "AllshareSetting"

    const-string v7, "AllshareSetting: registerPreferenceChangeListener"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceGroup;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v2, :cond_13e

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_51

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v3}, Landroid/preference/Preference;->hasKey()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "allshare_onoff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    if-nez v5, :cond_54

    const-string v6, "AllshareSetting"

    const-string v7, "AllshareSetting: Preference Init OFF"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    const/4 v5, 0x0

    :cond_43
    :goto_43
    if-eqz v5, :cond_48

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_48
    instance-of v6, v3, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_51

    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/settings/nearby/NearbySettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_54
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "allshare_onoff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c7

    :try_start_6a
    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v6}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v6

    if-nez v6, :cond_8a

    const-string v6, "AllshareSetting"

    const-string v7, "AllshareSetting: Function Init OFF"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_43

    :cond_8a
    const-string v6, "AllshareSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AllshareSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v8}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_a8} :catch_a9

    goto :goto_43

    :catch_a9
    move-exception v0

    const-string v6, "AllshareSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AllshareSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_43

    :cond_c7
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "allshare_device_name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_112

    if-nez v5, :cond_112

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v6, :cond_100

    const-string v6, "AllshareSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AllshareSetting: Set Default Device Name :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_43

    :cond_100
    const v6, 0x7f0d0941

    invoke-virtual {p0, v6}, Lcom/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_43

    :cond_112
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "allshare_shared_contents"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    if-nez v5, :cond_43

    const-string v6, "AllshareSetting"

    const-string v7, "AllshareSetting: Share Contents Init"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "2"

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v5, v4

    goto/16 :goto_43

    :cond_13e
    return-void
.end method

.method private requestWifiSettingPopup()V
    .registers 5

    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bWifiPopupShown:Z

    if-nez v1, :cond_48

    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: requestWifiSettingPopup()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_c
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bWifiPopupShown:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0941

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0939

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0937

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/nearby/NearbySettings$3;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/nearby/NearbySettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbySettings$2;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_48} :catch_49

    :cond_48
    :goto_48
    return-void

    :catch_49
    move-exception v0

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: requestWifiSettingPopup() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method

.method private setBroadcastReceiver()V
    .registers 5

    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: setBroadcastReceiver()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.allshare.REFRESH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.allshare.UPDATE_LIST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.allshare.SERVER_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_97} :catch_98

    :cond_97
    :goto_97
    return-void

    :catch_98
    move-exception v0

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Exception on setBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97
.end method

.method private unregisterBroadcastReceiver()V
    .registers 5

    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: unregisterBroadcastReceiver()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Exception on unregisterBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method


# virtual methods
.method public isExternalStorageSdMounted()Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/android/settings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v3, Lcom/android/settings/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_17

    move-result v1

    :goto_16
    return v1

    :catch_17
    move-exception v0

    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: isExternalStorageSdMounted() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: onActivityCreated(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_18
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: onActivityCreated():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 18

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v13, "AllshareSetting"

    const-string v14, "AllshareSetting: onCreate"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v13

    const-string v14, "pref_allshare"

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const v13, 0x7f070008

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/nearby/NearbySettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    :try_start_27
    const-string v13, "allshare_onoff"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v13, "allshare_shared_contents"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/MultiSelectListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Landroid/preference/MultiSelectListPreference;->setWidgetLayoutResource(I)V

    const-string v13, "allshare_device_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/EditTextPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setWidgetLayoutResource(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v13

    const/16 v14, 0x2001

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    const v14, 0x7f0d093e

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setPositiveButtonText(I)V

    new-instance v13, Lcom/android/settings/nearby/EditTextWatcher;

    invoke-direct {v13}, Lcom/android/settings/nearby/EditTextWatcher;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/settings/nearby/EditTextWatcher;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_e9

    const/16 v13, 0x4000

    invoke-virtual {v7, v13}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/settings/nearby/EditTextWatcher;

    invoke-virtual {v7, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    instance-of v13, v4, Landroid/app/AlertDialog;

    if-eqz v13, :cond_e9

    const/4 v12, 0x0

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    :goto_c3
    if-ge v8, v10, :cond_d2

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_cf

    add-int/lit8 v12, v12, 0x1

    :cond_cf
    add-int/lit8 v8, v8, 0x1

    goto :goto_c3

    :cond_d2
    check-cast v4, Landroid/app/AlertDialog;

    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    if-lez v13, :cond_211

    if-eq v10, v12, :cond_211

    const/4 v13, 0x1

    :goto_e6
    invoke-virtual {v2, v13}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_e9
    const-string v13, "allshare_access_control"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mAccessControl:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mAccessControl:Landroid/preference/ListPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    const-string v13, "allshare_download_to"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/nearby/DownloadListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Lcom/android/settings/nearby/DownloadListPreference;->setWidgetLayoutResource(I)V

    const-string v13, "allshare_download_from"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    const-string v13, "allshare_accept_device"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/nearby/AcceptListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Lcom/android/settings/nearby/AcceptListPreference;->setWidgetLayoutResource(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    const v14, 0x7f0d093f

    invoke-virtual {v13, v14}, Lcom/android/settings/nearby/AcceptListPreference;->setPositiveButtonText(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/nearby/AcceptListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v13, "allshare_reject_device"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/nearby/RejectListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    const v14, 0x7f0400a3

    invoke-virtual {v13, v14}, Lcom/android/settings/nearby/RejectListPreference;->setWidgetLayoutResource(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    const v14, 0x7f0d093f

    invoke-virtual {v13, v14}, Lcom/android/settings/nearby/RejectListPreference;->setPositiveButtonText(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/nearby/RejectListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_187} :catch_214

    :goto_187
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->initChangePreferenceHandler()V

    :try_start_18a
    new-instance v9, Landroid/content/Intent;

    const-string v13, "com.sec.android.nearby.MediaServer.START"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    const/4 v15, 0x0

    invoke-virtual {v13, v9, v14, v15}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_1a4} :catch_232

    :goto_1a4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :try_start_1ac
    new-instance v13, Landroid/os/HandlerThread;

    const-string v14, "Preference Change Worker"

    invoke-direct {v13, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    new-instance v13, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1cf} :catch_250

    :goto_1cf
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->setBroadcastReceiver()V

    :try_start_1d2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v14, "storage"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageManager;

    sput-object v13, Lcom/android/settings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v13, Lcom/android/settings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v13}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v13

    sput-object v13, Lcom/android/settings/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1e8} :catch_26e

    :goto_1e8
    :try_start_1e8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v13, v1, Landroid/preference/PreferenceActivity;

    if-eqz v13, :cond_210

    move-object v0, v1

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v13

    if-nez v13, :cond_200

    invoke-virtual {v11}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v13

    if-nez v13, :cond_210

    :cond_200
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    const v14, 0x7f0d0941

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/nearby/NearbySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_210} :catch_28c

    :cond_210
    :goto_210
    return-void

    :cond_211
    const/4 v13, 0x0

    goto/16 :goto_e6

    :catch_214
    move-exception v5

    const-string v13, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AllshareSetting: onCreate() :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_187

    :catch_232
    move-exception v6

    const-string v13, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AllshareSetting: onCreate() bind service:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a4

    :catch_250
    move-exception v5

    const-string v13, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AllshareSetting: onCreate() Thread :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1cf

    :catch_26e
    move-exception v5

    const-string v13, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AllshareSetting: onCreate() storage :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1e8

    :catch_28c
    move-exception v5

    const-string v13, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AllshareSetting: onCreate() Title :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_210
.end method

.method public onDestroy()V
    .registers 6

    const-string v2, "AllshareSetting"

    const-string v3, "AllshareSetting: onDestroy"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.nearby.mediaserver.STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->unregisterBroadcastReceiver()V

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_28

    :cond_24
    :goto_24
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void

    :catch_28
    move-exception v0

    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: onDestroy() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 12

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: Preference Changed: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "allshare_onoff"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_282

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z

    if-ne v2, v1, :cond_61

    const-string v2, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: Duplicated on/off message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :goto_60
    return v1

    :cond_61
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const-string v2, "wifip2p"

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_1a1

    if-eqz v2, :cond_1a1

    if-eqz p2, :cond_1a1

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_1d8

    if-eqz v2, :cond_127

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_127

    if-eqz v6, :cond_101

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_101

    const-string v1, "AllshareSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: Wifi State : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", WifiDirect State : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_f1

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_f1
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->requestWifiSettingPopup()V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move v1, v4

    goto/16 :goto_60

    :cond_101
    if-nez v6, :cond_1d8

    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_117

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_117
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->requestWifiSettingPopup()V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move v1, v4

    goto/16 :goto_60

    :cond_127
    if-nez v2, :cond_1d8

    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Wifi State : netInfoWifi is null >> check p2p state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_17b

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17b

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting:  WifiDirect State : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_16b

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_16b
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->requestWifiSettingPopup()V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move v1, v4

    goto/16 :goto_60

    :cond_17b
    if-nez v6, :cond_1d8

    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_191

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_191
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->requestWifiSettingPopup()V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move v1, v4

    goto/16 :goto_60

    :cond_1a1
    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: Check Wi-Fi State or Function state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1d5

    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Set Enable Function"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1d5
    move v1, v4

    goto/16 :goto_60

    :cond_1d8
    :try_start_1d8
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v2, "pref_allshare"

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "allshare_welcome_popup"

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_23d

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_23d

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f070009

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0a030e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d0941

    invoke-virtual {p0, v7}, Lcom/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d0937

    new-instance v8, Lcom/android/settings/nearby/NearbySettings$7;

    invoke-direct {v8, p0, v1}, Lcom/android/settings/nearby/NearbySettings$7;-><init>(Lcom/android/settings/nearby/NearbySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v6, Lcom/android/settings/nearby/NearbySettings$6;

    invoke-direct {v6, p0}, Lcom/android/settings/nearby/NearbySettings$6;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_23d} :catch_265

    :cond_23d
    :goto_23d
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_242
    :goto_242
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v1, :cond_3a2

    :try_start_24c
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/nearby/NearbySettings$8;

    invoke-direct {v5, p0, v1, p1, p2}, Lcom/android/settings/nearby/NearbySettings$8;-><init>(Lcom/android/settings/nearby/NearbySettings;Landroid/preference/Preference$OnPreferenceChangeListener;Landroid/preference/Preference;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.allshare.REFRESH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_262
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_262} :catch_386

    move v1, v3

    goto/16 :goto_60

    :catch_265
    move-exception v1

    const-string v2, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: onCreate() Popup Start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23d

    :cond_282
    const-string v1, "allshare_device_name"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f6

    if-eqz p2, :cond_2f6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_29a

    const/16 v2, 0x37

    if-le v1, v2, :cond_2b4

    :cond_29a
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Device name length error "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0d093a

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v4

    goto/16 :goto_60

    :cond_2b4
    :try_start_2b4
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_242

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->getMediaServerName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Samsung Mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_242

    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Device name is same. return"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d5
    .catch Landroid/os/RemoteException; {:try_start_2b4 .. :try_end_2d5} :catch_2d8

    move v1, v4

    goto/16 :goto_60

    :catch_2d8
    move-exception v1

    const-string v2, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: mIMediaServer.getMediaServerName()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_242

    :cond_2f6
    const-string v1, "allshare_shared_contents"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30f

    if-eqz p2, :cond_30f

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_242

    :cond_30f
    const-string v1, "allshare_access_control"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_357

    if-eqz p2, :cond_357

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_338

    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Disable lists"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/AcceptListPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/RejectListPreference;->setEnabled(Z)V

    goto/16 :goto_242

    :cond_338
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_242

    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Enable lists"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/nearby/AcceptListPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/nearby/RejectListPreference;->setEnabled(Z)V

    goto/16 :goto_242

    :cond_357
    const-string v1, "allshare_download_to"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_242

    if-eqz p2, :cond_242

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: value: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    if-ne p2, v1, :cond_242

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v1

    if-nez v1, :cond_242

    move v1, v4

    goto/16 :goto_60

    :catch_386
    move-exception v1

    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: OnPreference run: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a2
    move v1, v4

    goto/16 :goto_60
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: onPreferenceClick(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1e
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_device_name"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    move-object v0, p1

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    check-cast p1, Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/settings/nearby/EditTextWatcher;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/EditTextWatcher;->setDialog(Landroid/app/Dialog;)V

    :cond_4a
    :goto_4a
    move v1, v2

    :goto_4b
    return v1

    :cond_4c
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_onoff"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    const-string v1, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: onPreferenceClick(): KEY_ALLSHARE_ONOFF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_76} :catch_77

    goto :goto_4a

    :catch_77
    move-exception v1

    const-string v2, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v3

    goto :goto_4b

    :cond_95
    :try_start_95
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_accept_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ad

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_reject_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    :cond_ad
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_accept_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ec

    const-string v1, "AllshareSetting"

    const-string v4, "AllshareSetting: onPreferenceClick(): KEY_ALLSHARE_ACCEPTED_DEVICE "

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v1}, Lcom/android/settings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_ec

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    if-eqz v5, :cond_ec

    new-instance v6, Lcom/android/settings/nearby/ListItemListener;

    invoke-direct {v6, v4}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v5, Lcom/android/settings/nearby/DeleteButtonListener;

    iget-object v7, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {v5, v6, v1, v7, v8}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_ec
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_reject_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "AllshareSetting"

    const-string v4, "AllshareSetting: onPreferenceClick(): KEY_ALLSHARE_REJECTED_DEVICE "

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    invoke-virtual {v1}, Lcom/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_4a

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    if-eqz v5, :cond_4a

    new-instance v6, Lcom/android/settings/nearby/ListItemListener;

    invoke-direct {v6, v4}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v5, Lcom/android/settings/nearby/DeleteButtonListener;

    iget-object v7, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v1, v7, v8}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_12b} :catch_77

    goto/16 :goto_4a
.end method

.method public onResume()V
    .registers 9

    const-string v4, "AllshareSetting"

    const-string v5, "AllshareSetting: onResume()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->initPreferences()V

    :try_start_d
    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v4}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v0

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eq v0, v4, :cond_45

    const-string v4, "AllshareSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: Change State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xbb9

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_45} :catch_5e

    :cond_45
    :goto_45
    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v4, :cond_5d

    :try_start_49
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.nearby.MediaServer.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5d} :catch_7b

    :cond_5d
    :goto_5d
    return-void

    :catch_5e
    move-exception v2

    const-string v4, "AllshareSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: onResume() change state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_45

    :catch_7b
    move-exception v1

    const-string v4, "AllshareSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: onResume() bind service:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5d
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "AllshareSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllshareSetting: onSaveInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
