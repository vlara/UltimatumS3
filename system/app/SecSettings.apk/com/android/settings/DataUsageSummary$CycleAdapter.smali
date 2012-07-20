.class public Lcom/android/settings/DataUsageSummary$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/android/settings/DataUsageSummary$CycleChangeItem;

.field private mChangePossible:Z

.field private mChangeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const v0, 0x1090008

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setDropDownViewResource(I)V

    new-instance v0, Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/android/settings/DataUsageSummary$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    return-void
.end method

.method private updateChange()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->remove(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/settings/DataUsageSummary$CycleItem;)I
    .registers 6

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_1e

    invoke-virtual {p0, v1}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DataUsageSummary$CycleItem;

    instance-of v3, v2, Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    if-eqz v3, :cond_17

    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_17
    invoke-virtual {v2, p1}, Lcom/android/settings/DataUsageSummary$CycleItem;->compareTo(Lcom/android/settings/DataUsageSummary$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_14

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public setChangePossible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->updateChange()V

    return-void
.end method

.method public setChangeVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->updateChange()V

    return-void
.end method
