.class public Lcom/android/settings/UsageStats$UsageTimeComparator;
.super Ljava/lang/Object;
.source "UsageStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/os/PkgUsageStats;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/internal/os/PkgUsageStats;Lcom/android/internal/os/PkgUsageStats;)I
    .registers 11

    const-wide/16 v6, 0x0

    iget-wide v2, p1, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    iget-wide v4, p2, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    sub-long v0, v2, v4

    cmp-long v2, v0, v6

    if-nez v2, :cond_e

    const/4 v2, 0x0

    :goto_d
    return v2

    :cond_e
    cmp-long v2, v0, v6

    if-gez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_d

    :cond_14
    const/4 v2, -0x1

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/internal/os/PkgUsageStats;

    check-cast p2, Lcom/android/internal/os/PkgUsageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/UsageStats$UsageTimeComparator;->compare(Lcom/android/internal/os/PkgUsageStats;Lcom/android/internal/os/PkgUsageStats;)I

    move-result v0

    return v0
.end method
