.class Lcom/android/settings/GSensorSettings$setHandler;
.super Landroid/os/Handler;
.source "GSensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/GSensorSettings$setHandler;-><init>(Lcom/android/settings/GSensorSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    const/4 v9, 0x0

    const/high16 v8, 0x4248

    const-wide/16 v6, 0x32

    const/4 v5, 0x1

    const/4 v4, 0x2

    new-array v1, v4, [F

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_f6

    :goto_13
    return-void

    :pswitch_14
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1200(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0d0756

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getPoint([F)[F

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    #calls: Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v2, v4}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    aget v2, v1, v9

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_X:I
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$300(Lcom/android/settings/GSensorSettings;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    sput v2, Lcom/android/settings/GSensorSettings;->ani_gap_x:F

    aget v2, v1, v5

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_Y:I
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    sput v2, Lcom/android/settings/GSensorSettings;->ani_gap_y:F

    const/16 v2, 0x32

    sput v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/settings/GSensorSettings;->ani_count:I

    invoke-virtual {v2, v3}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->setImage(I)V

    iput v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0, v5}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    goto :goto_13

    :pswitch_64
    sget v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    if-ltz v2, :cond_89

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/settings/GSensorSettings;->ani_count:I

    invoke-virtual {v2, v3}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->setImage(I)V

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->invalidate()V

    invoke-virtual {p0, v4}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    iput v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_13

    :cond_89
    invoke-virtual {p0, v4}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/16 v2, 0x32

    sput v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    goto/16 :goto_13

    :pswitch_98
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1400(Lcom/android/settings/GSensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->runGyroCalibration(I)I

    move-result v2

    sput v2, Lcom/android/settings/GSensorSettings;->file:I

    const-string v2, "GSensorSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animation end -- file ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/GSensorSettings;->file:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/settings/GSensorSettings;->access$1502(I)I

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    #calls: Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v2, v5}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1200(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0d0755

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/android/settings/GSensorSettings;->file:I

    if-lez v2, :cond_ef

    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #calls: Lcom/android/settings/GSensorSettings;->diplayCompleted()V
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1600(Lcom/android/settings/GSensorSettings;)V

    :goto_e4
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->invalidate()V

    goto/16 :goto_13

    :cond_ef
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #calls: Lcom/android/settings/GSensorSettings;->diplayError()V
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1700(Lcom/android/settings/GSensorSettings;)V

    goto :goto_e4

    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_14
        :pswitch_64
        :pswitch_98
    .end packed-switch
.end method
