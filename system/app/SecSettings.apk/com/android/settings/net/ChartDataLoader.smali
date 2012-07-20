.class public Lcom/android/settings/net/ChartDataLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/settings/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsService;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/net/ChartDataLoader;->mStatsService:Landroid/net/INetworkStatsService;

    iput-object p3, p0, Lcom/android/settings/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    return-void
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;[I)Landroid/os/Bundle;
    .registers 3

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/android/settings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;[II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;[II)Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "uids"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "fields"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/net/ChartDataLoader;->mStatsService:Landroid/net/INetworkStatsService;

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v6

    if-eqz p4, :cond_12

    invoke-virtual {p4, v6}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    :goto_11
    return-object p4

    :cond_12
    move-object p4, v6

    goto :goto_11
.end method

.method private loadInBackground(Landroid/net/NetworkTemplate;[II)Lcom/android/settings/net/ChartData;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v1, Lcom/android/settings/net/ChartData;

    invoke-direct {v1}, Lcom/android/settings/net/ChartData;-><init>()V

    iget-object v5, p0, Lcom/android/settings/net/ChartDataLoader;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v5, p1, p3}, Landroid/net/INetworkStatsService;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v1, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    if-eqz p2, :cond_4b

    iput-object v6, v1, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    iput-object v6, v1, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    move-object v0, p2

    array-length v3, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v3, :cond_30

    aget v4, v0, v2

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/android/settings/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v1, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    const/4 v5, 0x1

    iget-object v6, v1, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/android/settings/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v1, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_30
    new-instance v5, Landroid/net/NetworkStatsHistory;

    iget-object v6, v1, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v6}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v5, v1, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v5, v1, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v6, v1, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5, v6}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    iget-object v5, v1, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v6, v1, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5, v6}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    :cond_4b
    return-object v1
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settings/net/ChartData;
    .registers 7

    iget-object v4, p0, Lcom/android/settings/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v5, "template"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/settings/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v5, "uids"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v5, "fields"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :try_start_1a
    invoke-direct {p0, v2, v3, v1}, Lcom/android/settings/net/ChartDataLoader;->loadInBackground(Landroid/net/NetworkTemplate;[II)Lcom/android/settings/net/ChartData;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1f

    move-result-object v4

    return-object v4

    :catch_1f
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "problem reading network stats"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/net/ChartDataLoader;->loadInBackground()Lcom/android/settings/net/ChartData;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .registers 1

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/android/settings/net/ChartDataLoader;->cancelLoad()Z

    return-void
.end method

.method protected onStartLoading()V
    .registers 1

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    invoke-virtual {p0}, Lcom/android/settings/net/ChartDataLoader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    invoke-virtual {p0}, Lcom/android/settings/net/ChartDataLoader;->cancelLoad()Z

    return-void
.end method
