.class Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;
.super Landroid/os/Handler;
.source "AccessibilityTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverTargetHandler"
.end annotation


# instance fields
.field private mInsideTarget:Z

.field final synthetic this$0:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;


# direct methods
.method private constructor <init>(Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->mInsideTarget:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;Lcom/android/settings/AccessibilityTutorialActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;-><init>(Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;)V

    return-void
.end method


# virtual methods
.method public enteredTarget()V
    .registers 5

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->mInsideTarget:Z

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;

    #getter for: Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mHandler:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;
    invoke-static {v0}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->access$300(Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;)Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public exitedTarget()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->mInsideTarget:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    :goto_7
    return-void

    :pswitch_8
    iget-boolean v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->mInsideTarget:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;

    const v1, 0x7f0d0721

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;

    #getter for: Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetName:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->access$400(Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    goto :goto_7

    :cond_1f
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;

    const v1, 0x7f0d0722

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;

    #getter for: Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetName:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->access$400(Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->this$0:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->setFlag(IZ)V

    goto :goto_7

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
