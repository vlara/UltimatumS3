.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComponentDescriptionComparatorByLabel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 438
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .local v0, cd1:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    move-object v1, p2

    .line 439
    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 441
    .local v1, cd2:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, label1:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, label2:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 447
    :cond_0
    const/4 v4, 0x0

    .line 449
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method
