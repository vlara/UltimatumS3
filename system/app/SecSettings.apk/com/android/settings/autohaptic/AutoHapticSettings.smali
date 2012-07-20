.class public Lcom/android/settings/autohaptic/AutoHapticSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutoHapticSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;,
        Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;,
        Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;
    }
.end annotation


# static fields
.field public static final REVERB_URI:Landroid/net/Uri;

.field private static mActuator:I

.field private static mActuatorChecked:I


# instance fields
.field private appCount:I

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoHapticDialog:Landroid/app/AlertDialog;

.field mIconResizer:Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;

.field private mIncludedApps:Landroid/preference/PreferenceCategory;

.field private mIntentReceiver:Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;

.field mNoPopupOnExcute:Z

.field private mReverbSharedPrefs:Landroid/content/SharedPreferences;

.field mText:Landroid/widget/TextView;

.field mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-string v0, "content://com.android.settings.reverb.params"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->REVERB_URI:Landroid/net/Uri;

    sput v1, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuator:I

    sput v1, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuatorChecked:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIntentReceiver:Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->appCount:I

    iput-boolean v1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mNoPopupOnExcute:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/autohaptic/AutoHapticSettings;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/autohaptic/AutoHapticSettings;)Landroid/content/pm/PackageManager;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/autohaptic/AutoHapticSettings;Landroid/content/pm/PackageInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/autohaptic/AutoHapticSettings;->filterAdd(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/autohaptic/AutoHapticSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->initAppList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/autohaptic/AutoHapticSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->refreshAppListUI()V

    return-void
.end method

.method private filterAdd(Landroid/content/pm/PackageInfo;)V
    .registers 12

    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    iget-object v3, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v3}, Lcom/android/settings/autohaptic/AutoHapticSettings;->isHapticThemePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.permission.VIBRATE"

    invoke-virtual {v8, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_43

    const/4 v5, 0x1

    :goto_24
    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v9, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;-><init>(Lcom/android/settings/autohaptic/AutoHapticSettings;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/content/pm/PackageInfo;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->appCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->appCount:I

    goto :goto_6

    :cond_43
    const/4 v5, 0x0

    goto :goto_24
.end method

.method public static getActuator()I
    .registers 6

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Lcom/immersion/Device;->newDevice(I)Lcom/immersion/Device;

    move-result-object v1

    if-eqz v1, :cond_1d

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/immersion/Device;->getCapabilityInt32(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/immersion/Device;->close()V

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const/4 v3, 0x2

    if-eq v0, v3, :cond_18

    const/4 v3, 0x4

    if-ne v0, v3, :cond_20

    :cond_18
    sput v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuator:I

    const/4 v3, 0x1

    sput v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuatorChecked:I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_48
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1d} :catch_28

    :cond_1d
    :goto_1d
    sget v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuator:I

    :goto_1f
    return v3

    :cond_20
    :try_start_20
    const-string v3, "AutoHapticSettings"

    const-string v4, "Error: REVERB_ACTUATOR_INDEX does not point to an ERM, LRA or PIEZO actuator."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_48
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_27} :catch_28

    goto :goto_1d

    :catch_28
    move-exception v2

    :try_start_29
    const-string v3, "AutoHapticSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_48

    sget v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuator:I

    goto :goto_1f

    :catchall_48
    move-exception v3

    sget v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuator:I

    goto :goto_1f
.end method

.method private getServicesWithProcessName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 12

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    iget-object v9, v0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v4, v0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_10

    :cond_2b
    if-eqz v4, :cond_31

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez v9, :cond_3e

    :cond_31
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v6, v9, [Ljava/lang/String;

    invoke-interface {v8, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    return-object v9

    :cond_3e
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_42
    if-ge v2, v3, :cond_31

    aget-object v7, v1, v2

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_42
.end method

.method private initAppList()V
    .registers 7

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->appCount:I

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v3}, Lcom/android/settings/autohaptic/AutoHapticSettings;->filterAdd(Landroid/content/pm/PackageInfo;)V

    goto :goto_15

    :cond_25
    iget v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->appCount:I

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2e
    return-void

    :cond_2f
    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e
.end method

.method public static isHapticThemePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 9

    const/16 v4, 0x8

    :try_start_2
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v4, :cond_44

    const/4 v2, 0x0

    :goto_b
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_44

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v4, v4, v2

    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v0, :cond_22

    const-string v4, "com.immersion.android.haptictheme."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1d} :catch_25

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    :goto_21
    return v4

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :catch_25
    move-exception v1

    const-string v4, "AutoHapticSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: Query "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const/4 v4, 0x0

    goto :goto_21
.end method

.method private refreshAppListUI()V
    .registers 5

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/autohaptic/AutoHapticSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/autohaptic/AutoHapticSettings$1;-><init>(Lcom/android/settings/autohaptic/AutoHapticSettings;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    const/4 v0, 0x0

    :goto_10
    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6c

    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    iget-object v2, v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    iget-object v2, v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIconResizer:Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    iget-object v2, v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    iget-boolean v2, v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mHasVibPerm:Z

    if-nez v2, :cond_6a

    const/4 v2, 0x1

    :goto_5f
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_6a
    const/4 v2, 0x0

    goto :goto_5f

    :cond_6c
    return-void
.end method

.method public static storeReverbSettings(Landroid/content/ContentResolver;III)V
    .registers 13

    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    sget v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuatorChecked:I

    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getActuator()I

    :cond_a
    if-nez p0, :cond_14

    const-string v3, "AutoHapticSettings"

    const-string v4, "Invalid content resolver, will not update Reverb settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    return-void

    :cond_14
    sget-object v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->REVERB_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_24

    const-string v3, "AutoHapticSettings"

    const-string v4, "Failed to acquire content provider client, will not update Reverb settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_24
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eq p2, v8, :cond_68

    const-string v3, "AutoHapticSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storeReverbSettings(), intensity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p2, v4, :cond_46

    const/4 p2, 0x1

    :cond_46
    const/16 v3, 0x9

    if-le p2, v3, :cond_4c

    const/16 p2, 0x9

    :cond_4c
    const-string v3, "strength"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "density"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "sharpness"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_68
    if-eq p1, v8, :cond_76

    const-string v6, "enable"

    if-lez p1, :cond_8f

    move v3, v4

    :goto_6f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_76
    if-eq p3, v8, :cond_83

    const-string v3, "mediaplayer"

    if-lez p3, :cond_91

    :goto_7c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_83
    :try_start_83
    sget-object v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->REVERB_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8a} :catch_93

    :goto_8a
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v2, 0x0

    goto :goto_13

    :cond_8f
    move v3, v5

    goto :goto_6f

    :cond_91
    move v4, v5

    goto :goto_7c

    :catch_93
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8a
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 10

    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_53

    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_53

    :cond_22
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0d09c2

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_53
    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 19

    const-string v12, "AutoHapticSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCheckChanged : desiredState : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v5}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    if-eqz v5, :cond_82

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->refreshAppListUI()V

    if-eqz v5, :cond_76

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "com.android.settings_reverb"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_76

    const-string v12, "DoNotShowDialog"

    const/4 v13, 0x0

    invoke-interface {v1, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_76

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mNoPopupOnExcute:Z

    if-nez v12, :cond_76

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->showGuideDialog()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v12, "com.ensight.android.radioalarm"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v12, "com.google.android.apps.books"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v12, "com.samsung.SMT"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v12, "com.google.android.tts"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_76
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    if-eqz v5, :cond_d4

    const/4 v12, 0x1

    :goto_7d
    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-static {v13, v12, v14, v15}, Lcom/android/settings/autohaptic/AutoHapticSettings;->storeReverbSettings(Landroid/content/ContentResolver;III)V

    :cond_82
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mNoPopupOnExcute:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    if-eqz v5, :cond_d6

    const/4 v12, 0x1

    :goto_8e
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static {v13, v12, v14, v15}, Lcom/android/settings/autohaptic/AutoHapticSettings;->storeReverbSettings(Landroid/content/ContentResolver;III)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v6, 0x0

    :goto_9c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v12

    if-ge v6, v12, :cond_f3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v6}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getServicesWithProcessName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_d8

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object v2, v11

    array-length v9, v2

    const/4 v7, 0x0

    :goto_ca
    if-ge v7, v9, :cond_f0

    aget-object v10, v2, v7

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v7, v7, 0x1

    goto :goto_ca

    :cond_d4
    const/4 v12, 0x0

    goto :goto_7d

    :cond_d6
    const/4 v12, 0x0

    goto :goto_8e

    :cond_d8
    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object v2, v11

    array-length v9, v2

    const/4 v7, 0x0

    :goto_e4
    if-ge v7, v9, :cond_f0

    aget-object v10, v2, v7

    const-string v12, "disabled"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v7, v7, 0x1

    goto :goto_e4

    :cond_f0
    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    :cond_f3
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f07000e

    invoke-virtual {p0, v3}, Lcom/android/settings/autohaptic/AutoHapticSettings;->addPreferencesFromResource(I)V

    const-string v3, "included_apps"

    invoke-virtual {p0, v3}, Lcom/android/settings/autohaptic/AutoHapticSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_reverb"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;

    invoke-virtual {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;-><init>(Lcom/android/settings/autohaptic/AutoHapticSettings;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIntentReceiver:Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;

    new-instance v3, Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;

    invoke-direct {v3, p0}, Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;-><init>(Lcom/android/settings/autohaptic/AutoHapticSettings;)V

    iput-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIconResizer:Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_reverb"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_51

    const-string v3, "DoNotShowDialog"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "enable"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v2, :cond_51

    if-eqz v0, :cond_51

    iput-boolean v5, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mNoPopupOnExcute:Z

    :cond_51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const/16 v4, 0x11

    const/4 v3, -0x1

    iput-object p2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mViewGroup:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    const v3, 0x7f0d04ea

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    const/high16 v3, 0x41c8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public onDestroyView()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 13

    instance-of v7, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_78

    move-object v3, p2

    check-cast v3, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_d

    iget-object v7, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v7, :cond_12

    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    :goto_11
    return v7

    :cond_12
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getServicesWithProcessName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_56

    const-string v7, "AutoHapticSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceTreeClick, item.getKey()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_4c
    if-ge v2, v4, :cond_6e

    aget-object v5, v0, v2

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_56
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "disabled"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_62
    if-ge v2, v4, :cond_6e

    aget-object v5, v0, v2

    const-string v7, "disabled"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :cond_6e
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v7, "AutoHapticSettings"

    const-string v8, "onPreferenceTreeClick(), Update Reverb settings"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_11
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable"

    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->initAppList()V

    invoke-direct {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->refreshAppListUI()V

    :cond_25
    return-void
.end method

.method public showGuideDialog()V
    .registers 8

    const/4 v6, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v6, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f04004b

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a0033

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d09c3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d09c2

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d04f0

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    iget-object v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/autohaptic/AutoHapticSettings$2;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/autohaptic/AutoHapticSettings$2;-><init>(Lcom/android/settings/autohaptic/AutoHapticSettings;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
