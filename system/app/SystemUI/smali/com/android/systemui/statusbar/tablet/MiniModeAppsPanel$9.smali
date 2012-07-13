.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$9;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 793
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$9;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "e"

    .prologue
    .line 795
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 807
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 797
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->supportHapticFeedback:Z

    if-eqz v0, :cond_0

    .line 798
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 804
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$9;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->playTrayCloseSound()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2600(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    goto :goto_0

    .line 795
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
