.class Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ToggleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$000(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    :goto_1
    return v2

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$000(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$000(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$000(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
