.class Lcom/android/settings/BatteryInfo$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/BatteryInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    const-string v4, "plugged"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mLevel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/BatteryInfo;->access$100(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "level"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mScale:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/BatteryInfo;->access$200(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "scale"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mVoltage:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/BatteryInfo;->access$300(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "voltage"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f0d005a

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mTemperature:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/BatteryInfo;->access$500(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const-string v7, "temperature"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    #calls: Lcom/android/settings/BatteryInfo;->tenthsToFixedString(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settings/BatteryInfo;->access$400(Lcom/android/settings/BatteryInfo;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v7, 0x7f0d005c

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mTechnology:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/BatteryInfo;->access$600(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "technology"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mStatus:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/BatteryInfo;->access$700(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    invoke-virtual {v5}, Lcom/android/settings/BatteryInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    packed-switch v3, :pswitch_data_18a

    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/BatteryInfo;->access$800(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v6, 0x7f0d006c

    invoke-virtual {v5, v6}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d2
    const-string v4, "health"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_13b

    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v5, 0x7f0d006e

    invoke-virtual {v4, v5}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_e5
    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mHealth:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/BatteryInfo;->access$900(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ee
    return-void

    :pswitch_ef
    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/BatteryInfo;->access$800(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v6, 0x7f0d0068

    invoke-virtual {v5, v6}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d2

    :pswitch_102
    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/BatteryInfo;->access$800(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v6, 0x7f0d0069

    invoke-virtual {v5, v6}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d2

    :pswitch_115
    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/BatteryInfo;->access$800(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v6, 0x7f0d006a

    invoke-virtual {v5, v6}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d2

    :pswitch_128
    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    #getter for: Lcom/android/settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/BatteryInfo;->access$800(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v6, 0x7f0d006b

    invoke-virtual {v5, v6}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d2

    :cond_13b
    const/4 v4, 0x3

    if-ne v1, v4, :cond_148

    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v5, 0x7f0d006f

    invoke-virtual {v4, v5}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e5

    :cond_148
    const/4 v4, 0x4

    if-ne v1, v4, :cond_155

    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v5, 0x7f0d0070

    invoke-virtual {v4, v5}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e5

    :cond_155
    const/4 v4, 0x5

    if-ne v1, v4, :cond_162

    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v5, 0x7f0d0071

    invoke-virtual {v4, v5}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e5

    :cond_162
    const/4 v4, 0x6

    if-ne v1, v4, :cond_170

    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v5, 0x7f0d0072

    invoke-virtual {v4, v5}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e5

    :cond_170
    const/4 v4, 0x7

    if-ne v1, v4, :cond_17e

    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v5, 0x7f0d0073

    invoke-virtual {v4, v5}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e5

    :cond_17e
    iget-object v4, p0, Lcom/android/settings/BatteryInfo$2;->this$0:Lcom/android/settings/BatteryInfo;

    const v5, 0x7f0d006d

    invoke-virtual {v4, v5}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e5

    nop

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_102
        :pswitch_115
        :pswitch_128
    .end packed-switch
.end method
