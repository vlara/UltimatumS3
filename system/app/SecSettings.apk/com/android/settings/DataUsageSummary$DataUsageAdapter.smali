.class public Lcom/android/settings/DataUsageSummary$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/DataUsageSummary$AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/android/settings/net/UidDetailProvider;


# direct methods
.method public constructor <init>(Lcom/android/settings/net/UidDetailProvider;I)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings/net/UidDetailProvider;

    iput p2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    return-void
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;)V
    .registers 16

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    const/16 v8, 0x3e8

    invoke-direct {v6, v8}, Lcom/android/settings/DataUsageSummary$AppUsageItem;-><init>(I)V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_55

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v5

    :goto_18
    const/4 v1, 0x0

    :goto_19
    if-ge v1, v5, :cond_67

    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    iget v7, v0, Landroid/net/NetworkStats$Entry;->uid:I

    const/16 v8, 0x2710

    if-lt v7, v8, :cond_57

    const v8, 0x1869f

    if-gt v7, v8, :cond_57

    const/4 v2, 0x1

    :goto_2b
    if-nez v2, :cond_33

    const/4 v8, -0x4

    if-eq v7, v8, :cond_33

    const/4 v8, -0x5

    if-ne v7, v8, :cond_59

    :cond_33
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    if-nez v3, :cond_48

    new-instance v3, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    invoke-direct {v3, v7}, Lcom/android/settings/DataUsageSummary$AppUsageItem;-><init>(I)V

    invoke-virtual {v4, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    iget-wide v8, v3, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_55
    const/4 v5, 0x0

    goto :goto_18

    :cond_57
    const/4 v2, 0x0

    goto :goto_2b

    :cond_59
    iget-wide v8, v6, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    invoke-virtual {v6, v7}, Lcom/android/settings/DataUsageSummary$AppUsageItem;->addUid(I)V

    goto :goto_52

    :cond_67
    iget-wide v8, v6, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_74

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_92

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    iget-wide v8, v8, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    :goto_8c
    iput-wide v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->notifyDataSetChanged()V

    return-void

    :cond_92
    const-wide/16 v8, 0x0

    goto :goto_8c
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$AppUsageItem;->uids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const/4 v2, 0x0

    if-nez p2, :cond_1d

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040043

    invoke-virtual {v5, v6, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    if-lez v5, :cond_1d

    iget v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    iget v6, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v5, v2, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1d
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x102000d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-static {v5, v1, p2}, Lcom/android/settings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/settings/net/UidDetailProvider;Lcom/android/settings/DataUsageSummary$AppUsageItem;Landroid/view/View;)V

    iget-wide v5, v1, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5a

    iget-wide v5, v1, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    div-long/2addr v5, v7

    long-to-int v2, v5

    :cond_5a
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p2
.end method
