.class public Lcom/android/settings/UsageStats$AppNameComparator;
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
    name = "AppNameComparator"
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


# instance fields
.field mAppLabelList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/UsageStats$AppNameComparator;->mAppLabelList:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/internal/os/PkgUsageStats;Lcom/android/internal/os/PkgUsageStats;)I
    .registers 7

    iget-object v2, p0, Lcom/android/settings/UsageStats$AppNameComparator;->mAppLabelList:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/UsageStats$AppNameComparator;->mAppLabelList:Ljava/util/Map;

    iget-object v3, p2, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/internal/os/PkgUsageStats;

    check-cast p2, Lcom/android/internal/os/PkgUsageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/UsageStats$AppNameComparator;->compare(Lcom/android/internal/os/PkgUsageStats;Lcom/android/internal/os/PkgUsageStats;)I

    move-result v0

    return v0
.end method