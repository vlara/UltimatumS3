.class Lcom/android/settings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_97

    const-string v12, "level"

    invoke-virtual {p2, v12, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v12, "plugged"

    invoke-virtual {p2, v12, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v12, "invalid_charger"

    invoke-virtual {p2, v12, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v12, 0x50

    if-lt v3, v12, :cond_98

    move v4, v10

    :goto_27
    if-eq v5, v10, :cond_2c

    const/4 v12, 0x2

    if-ne v5, v12, :cond_9a

    :cond_2c
    if-nez v2, :cond_9a

    move v6, v10

    :goto_2f
    iget-object v12, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v8

    if-nez v8, :cond_9c

    move v7, v10

    :goto_3c
    iget-object v12, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v12

    if-eqz v4, :cond_9e

    if-eqz v6, :cond_9e

    if-eqz v7, :cond_9e

    :goto_48
    invoke-virtual {v12, v10}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$200(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v12

    if-eqz v6, :cond_a0

    move v10, v11

    :goto_54
    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$300(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v12

    if-eqz v4, :cond_a2

    move v10, v11

    :goto_60
    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$400(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v12

    if-eqz v7, :cond_a4

    move v10, v11

    :goto_6c
    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v10}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v12, "device_policy"

    invoke-virtual {v10, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_97

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword()Z

    move-result v10

    if-eqz v10, :cond_a6

    iget-object v9, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_97
    :goto_97
    return-void

    :cond_98
    move v4, v9

    goto :goto_27

    :cond_9a
    move v6, v9

    goto :goto_2f

    :cond_9c
    move v7, v9

    goto :goto_3c

    :cond_9e
    move v10, v9

    goto :goto_48

    :cond_a0
    move v10, v9

    goto :goto_54

    :cond_a2
    move v10, v9

    goto :goto_60

    :cond_a4
    move v10, v9

    goto :goto_6c

    :cond_a6
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_97
.end method
