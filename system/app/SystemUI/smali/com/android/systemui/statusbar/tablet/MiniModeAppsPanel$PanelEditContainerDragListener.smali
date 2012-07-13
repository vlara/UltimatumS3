.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelEditContainerDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1868
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "targetView"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1873
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 1876
    .local v0, action:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    invoke-static {v10, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/view/DragEvent;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1939
    :cond_0
    :goto_0
    return v8

    .line 1882
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v10}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    .line 1883
    .local v6, sourceView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 1887
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    if-eqz v10, :cond_0

    .line 1892
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1894
    .local v1, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1896
    :pswitch_0
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-ne v10, v11, :cond_0

    move v8, v9

    .line 1901
    goto :goto_0

    :pswitch_1
    move v8, v9

    .line 1909
    goto :goto_0

    .line 1912
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->isChosen()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1914
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1917
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    iget-object v10, v10, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v10, :cond_2

    .line 1918
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0f0062

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1919
    .local v4, previewIcon:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1920
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    iget-object v10, v10, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1921
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    iget-object v10, v10, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1925
    .end local v4           #previewIcon:Landroid/widget/ImageView;
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v10}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1926
    .local v3, i:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v10}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1927
    .local v5, previewWidth:I
    mul-int v7, v3, v5

    .line 1928
    .local v7, xOffsetAtLeft:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;
    invoke-static {v10}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/HorizontalScrollView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v5

    div-int/lit8 v2, v10, 0x2

    .line 1930
    .local v2, centerX:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;
    invoke-static {v10}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/HorizontalScrollView;

    move-result-object v10

    sub-int v11, v7, v2

    invoke-virtual {v10, v11, v8}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1932
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1933
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    move v8, v9

    .line 1934
    goto/16 :goto_0

    .line 1894
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
