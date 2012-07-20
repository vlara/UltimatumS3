.class Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;
.super Landroid/os/Handler;
.source "PersonalVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalvibration/PersonalVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalvibration/PersonalVibration;


# direct methods
.method private constructor <init>(Lcom/android/settings/personalvibration/PersonalVibration;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/personalvibration/PersonalVibration;Lcom/android/settings/personalvibration/PersonalVibration$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7c

    :goto_8
    return-void

    :pswitch_9
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 111"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_8

    :pswitch_34
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 112"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/PersonalVibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8

    :pswitch_6d
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 112"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    :pswitch_data_7c
    .packed-switch 0x6f
        :pswitch_9
        :pswitch_34
        :pswitch_6d
    .end packed-switch
.end method
