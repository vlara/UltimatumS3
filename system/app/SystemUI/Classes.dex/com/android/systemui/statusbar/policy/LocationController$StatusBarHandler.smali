.class Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;
.super Landroid/os/Handler;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/LocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/LocationController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/LocationController;)V
    .registers 2
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/LocationController$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/LocationController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 304
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 315
    :cond_5
    :goto_5
    return-void

    .line 307
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    #getter for: Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->access$100(Lcom/android/systemui/statusbar/policy/LocationController;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    #getter for: Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->access$100(Lcom/android/systemui/statusbar/policy/LocationController;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    #getter for: Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->access$100(Lcom/android/systemui/statusbar/policy/LocationController;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->access$102(Lcom/android/systemui/statusbar/policy/LocationController;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    goto :goto_5

    .line 304
    nop

    :pswitch_data_28
    .packed-switch 0x40
        :pswitch_6
    .end packed-switch
.end method
