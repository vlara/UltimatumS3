.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrayIconOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1476
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 1479
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1483
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1548
    :cond_0
    :goto_0
    return v8

    .line 1487
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1488
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1489
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1495
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1505
    :cond_1
    if-eqz p1, :cond_0

    .line 1507
    move-object v3, p1

    .line 1508
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0f0050

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1510
    .local v0, appIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 1514
    :pswitch_2
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1516
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1518
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    iput-boolean v8, v4, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    goto :goto_0

    .line 1524
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    if-eqz v4, :cond_0

    .line 1526
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1528
    .local v1, componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1531
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v4

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$2700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v7}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/minimode/manager/MiniModeAppManager;->move(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    .line 1539
    .end local v1           #componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :pswitch_4
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1541
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    iput-boolean v8, v4, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    goto/16 :goto_0

    .line 1483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1510
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method