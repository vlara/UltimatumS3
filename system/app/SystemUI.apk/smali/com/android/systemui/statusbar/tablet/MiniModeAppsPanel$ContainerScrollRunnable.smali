.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerScrollRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3302(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0
.end method