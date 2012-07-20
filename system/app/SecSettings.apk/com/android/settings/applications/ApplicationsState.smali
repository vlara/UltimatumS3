.class public Lcom/android/settings/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settings/applications/ApplicationsState$MainHandler;,
        Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settings/applications/ApplicationsState$AppEntry;,
        Lcom/android/settings/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settings/applications/ApplicationsState$AppFilter;,
        Lcom/android/settings/applications/ApplicationsState$Callbacks;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SD_CARD_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field static sInstance:Lcom/android/settings/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurId:J

.field final mEntriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

.field final mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .registers 6

    const-wide/16 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iput-wide v1, p0, Lcom/android/settings/applications/ApplicationsState;->mCurId:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5b
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_64
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_62} :catch_67

    :goto_62
    :try_start_62
    monitor-exit v1

    return-void

    :catchall_64
    move-exception v0

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_64

    throw v0

    :catch_67
    move-exception v0

    goto :goto_62
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;
    .registers 3

    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->sInstance:Lcom/android/settings/applications/ApplicationsState;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->sInstance:Lcom/android/settings/applications/ApplicationsState;

    :cond_e
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->sInstance:Lcom/android/settings/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .registers 6

    if-eqz p1, :cond_e

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    :goto_d
    return-wide v0

    :cond_e
    const-wide/16 v0, -0x2

    goto :goto_d
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .registers 6

    if-eqz p1, :cond_8

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    :goto_7
    return-wide v0

    :cond_8
    const-wide/16 v0, -0x2

    goto :goto_7
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3} :catch_14

    :try_start_3
    iget-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_9

    monitor-exit v2

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_16

    monitor-exit v2

    goto :goto_8

    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    :try_start_13
    throw v1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_14} :catch_14

    :catch_14
    move-exception v1

    goto :goto_8

    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_32
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    :cond_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_11

    goto :goto_8
.end method

.method ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V
    .registers 4

    iget-object v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    monitor-enter p1

    :try_start_6
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    monitor-exit p1

    goto :goto_4

    :catchall_f
    move-exception v0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v0
.end method

.method getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .registers 7

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_2a

    const/4 v1, 0x0

    :goto_e
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2a

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    :cond_2a
    monitor-exit v4

    return-object v0

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v3
.end method

.method getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .registers 8

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_27

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/applications/ApplicationsState;->mCurId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/settings/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/settings/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    :goto_26
    return-object v0

    :cond_27
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_26

    iput-object p1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_26
.end method

.method handleRebuildList()V
    .registers 12

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    :try_start_3
    iget-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildRequested:Z

    if-nez v8, :cond_9

    monitor-exit v9

    :goto_8
    return-void

    :cond_9
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildComparator:Ljava/util/Comparator;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildRequested:Z

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildComparator:Ljava/util/Comparator;

    monitor-exit v9
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_58

    const/4 v8, -0x2

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    if-eqz v3, :cond_20

    invoke-interface {v3}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->init()V

    :cond_20
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_23
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v9
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_5b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_61

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_45

    invoke-interface {v3, v6}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_55

    :cond_45
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_48
    invoke-virtual {p0, v6}, Lcom/android/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v9
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_5e

    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :catchall_58
    move-exception v8

    :try_start_59
    monitor-exit v9
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v8

    :catchall_5b
    move-exception v8

    :try_start_5c
    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v8

    :catchall_5e
    move-exception v8

    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v8

    :cond_61
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    :try_start_67
    iget-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildRequested:Z

    if-nez v8, :cond_76

    iget-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildAsync:Z

    if-nez v8, :cond_7d

    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    :cond_76
    :goto_76
    monitor-exit v9
    :try_end_77
    .catchall {:try_start_67 .. :try_end_77} :catchall_93

    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_8

    :cond_7d
    :try_start_7d
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_76

    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v4}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v7}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_76

    :catchall_93
    move-exception v8

    monitor-exit v9
    :try_end_95
    .catchall {:try_start_7d .. :try_end_95} :catchall_93

    throw v8
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;)I
    .registers 4

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method invalidatePackage(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method pause()V
    .registers 3

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v0
.end method

.method rebuild(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v5

    const/4 v4, 0x1

    :try_start_4
    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildRequested:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildAsync:Z

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildComparator:Ljava/util/Comparator;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xfa

    add-long v2, v6, v8

    :goto_27
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    if-nez v4, :cond_33

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3a

    :cond_33
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildAsync:Z

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    monitor-exit v5
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_44

    return-object v4

    :cond_3a
    :try_start_3a
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    sub-long v6, v2, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_44
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_41} :catch_42

    goto :goto_27

    :catch_42
    move-exception v4

    goto :goto_27

    :catchall_44
    move-exception v4

    :try_start_45
    monitor-exit v5
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v4
.end method

.method removePackage(Ljava/lang/String;)V
    .registers 7

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_31

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_1d

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1d
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    :cond_31
    monitor-exit v3

    return-void

    :catchall_33
    move-exception v2

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v2
.end method

.method requestSize(Ljava/lang/String;)V
    .registers 6

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    :cond_16
    monitor-exit v2

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method resume(Lcom/android/settings/applications/ApplicationsState$Callbacks;)V
    .registers 8

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_3
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v3, :cond_19

    new-instance v3, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$1;)V

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v3}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    :cond_19
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2200

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    if-nez v3, :cond_2e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    :cond_2e
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_46
    const/4 v1, 0x0

    :goto_47
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_93

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_81

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_81

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_67
    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_6a
    const/4 v1, 0x0

    :goto_6b
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_46

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_81
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v5, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_67

    iput-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_67

    :catchall_90
    move-exception v3

    monitor-exit v4
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_90

    throw v3

    :cond_93
    const/4 v3, 0x0

    :try_start_94
    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_a5

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_a5
    monitor-exit v4
    :try_end_a6
    .catchall {:try_start_94 .. :try_end_a6} :catchall_90

    return-void
.end method

.method sumCacheSizes()J
    .registers 8

    const-wide/16 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_5
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_d
    if-ltz v0, :cond_1d

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v3, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    add-long/2addr v1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1d
    monitor-exit v4

    return-wide v1

    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v3
.end method
