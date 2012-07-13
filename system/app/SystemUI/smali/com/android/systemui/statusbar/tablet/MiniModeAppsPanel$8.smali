.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$8;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$8;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/16 v1, 0x425

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$8;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 788
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$8;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 789
    return-void
.end method
