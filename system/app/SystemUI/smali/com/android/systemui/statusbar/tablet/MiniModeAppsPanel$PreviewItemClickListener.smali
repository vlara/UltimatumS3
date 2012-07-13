.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1411
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 1414
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1416
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1417
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 1419
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1420
    .local v1, i:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1422
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3302(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Z)Z

    .line 1423
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    const/4 v3, 0x0

    #setter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollLeft:Z
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3402(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Z)Z

    .line 1424
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1425
    return-void
.end method
