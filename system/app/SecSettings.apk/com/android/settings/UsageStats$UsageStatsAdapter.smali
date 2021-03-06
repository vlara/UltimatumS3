.class Lcom/android/settings/UsageStats$UsageStatsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsageStatsAdapter"
.end annotation


# instance fields
.field private mAppLabelComparator:Lcom/android/settings/UsageStats$AppNameComparator;

.field private mAppLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayOrder:I

.field private mLaunchCountComparator:Lcom/android/settings/UsageStats$LaunchCountComparator;

.field private mUsageStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/PkgUsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageTimeComparator:Lcom/android/settings/UsageStats$UsageTimeComparator;

.field final synthetic this$0:Lcom/android/settings/UsageStats;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStats;)V
    .registers 13

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStats;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mAppLabelMap:Ljava/util/HashMap;

    :try_start_16
    #getter for: Lcom/android/settings/UsageStats;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;
    invoke-static {p1}, Lcom/android/settings/UsageStats;->access$000(Lcom/android/settings/UsageStats;)Lcom/android/internal/app/IUsageStats;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_21

    move-result-object v7

    if-nez v7, :cond_2a

    :goto_20
    return-void

    :catch_21
    move-exception v2

    const-string v8, "UsageStatsActivity"

    const-string v9, "Failed initializing usage stats service"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_2a
    move-object v1, v7

    array-length v5, v1

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v5, :cond_57

    aget-object v6, v1, v3

    iget-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_36
    #getter for: Lcom/android/settings/UsageStats;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/settings/UsageStats;->access$100(Lcom/android/settings/UsageStats;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    #getter for: Lcom/android/settings/UsageStats;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/settings/UsageStats;->access$100(Lcom/android/settings/UsageStats;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_36 .. :try_end_48} :catch_53

    move-result-object v4

    :goto_49
    iget-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mAppLabelMap:Ljava/util/HashMap;

    iget-object v9, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :catch_53
    move-exception v2

    iget-object v4, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    goto :goto_49

    :cond_57
    new-instance v8, Lcom/android/settings/UsageStats$LaunchCountComparator;

    invoke-direct {v8}, Lcom/android/settings/UsageStats$LaunchCountComparator;-><init>()V

    iput-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mLaunchCountComparator:Lcom/android/settings/UsageStats$LaunchCountComparator;

    new-instance v8, Lcom/android/settings/UsageStats$UsageTimeComparator;

    invoke-direct {v8}, Lcom/android/settings/UsageStats$UsageTimeComparator;-><init>()V

    iput-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageTimeComparator:Lcom/android/settings/UsageStats$UsageTimeComparator;

    new-instance v8, Lcom/android/settings/UsageStats$AppNameComparator;

    iget-object v9, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mAppLabelMap:Ljava/util/HashMap;

    invoke-direct {v8, v9}, Lcom/android/settings/UsageStats$AppNameComparator;-><init>(Ljava/util/Map;)V

    iput-object v8, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mAppLabelComparator:Lcom/android/settings/UsageStats$AppNameComparator;

    invoke-direct {p0}, Lcom/android/settings/UsageStats$UsageStatsAdapter;->sortList()V

    goto :goto_20
.end method

.method private sortList()V
    .registers 3

    iget v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageTimeComparator:Lcom/android/settings/UsageStats$UsageTimeComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/UsageStats$UsageStatsAdapter;->notifyDataSetChanged()V

    return-void

    :cond_f
    iget v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mLaunchCountComparator:Lcom/android/settings/UsageStats$LaunchCountComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_b

    :cond_1c
    iget v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mAppLabelComparator:Lcom/android/settings/UsageStats$AppNameComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_b
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    if-nez p2, :cond_7c

    iget-object v3, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStats;

    #getter for: Lcom/android/settings/UsageStats;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/settings/UsageStats;->access$200(Lcom/android/settings/UsageStats;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400c5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/settings/UsageStats$AppViewHolder;

    invoke-direct {v0}, Lcom/android/settings/UsageStats$AppViewHolder;-><init>()V

    const v3, 0x7f0a0235

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/UsageStats$AppViewHolder;->pkgName:Landroid/widget/TextView;

    const v3, 0x7f0a0236

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/UsageStats$AppViewHolder;->launchCount:Landroid/widget/TextView;

    const v3, 0x7f0a0237

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/UsageStats$AppViewHolder;->usageTime:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_39
    iget-object v3, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/PkgUsageStats;

    if-eqz v2, :cond_83

    iget-object v3, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mAppLabelMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/settings/UsageStats$AppViewHolder;->pkgName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/settings/UsageStats$AppViewHolder;->launchCount:Landroid/widget/TextView;

    iget v4, v2, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/settings/UsageStats$AppViewHolder;->usageTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v2, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7b
    return-object p2

    :cond_7c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UsageStats$AppViewHolder;

    goto :goto_39

    :cond_83
    const-string v3, "UsageStatsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No usage stats info for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b
.end method

.method sortList(I)V
    .registers 3

    iget v0, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput p1, p0, Lcom/android/settings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    invoke-direct {p0}, Lcom/android/settings/UsageStats$UsageStatsAdapter;->sortList()V

    goto :goto_4
.end method
