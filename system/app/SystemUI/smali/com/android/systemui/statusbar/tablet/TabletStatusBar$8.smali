.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1978
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "e"

    .prologue
    .line 1981
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1993
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1984
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->supportHapticFeedback:Z

    if-eqz v0, :cond_0

    .line 1986
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 1981
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
