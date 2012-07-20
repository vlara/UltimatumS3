.class Lcom/android/settings/CryptDecryptSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptDecryptSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptDecryptSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptDecryptSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptDecryptSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6e

    const-string v11, "level"

    invoke-virtual {p2, v11, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v11, "plugged"

    invoke-virtual {p2, v11, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v11, "invalid_charger"

    invoke-virtual {p2, v11, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v11, 0x50

    if-lt v2, v11, :cond_6f

    move v3, v9

    :goto_27
    if-eq v4, v9, :cond_2c

    const/4 v11, 0x2

    if-ne v4, v11, :cond_71

    :cond_2c
    if-nez v1, :cond_71

    move v5, v9

    :goto_2f
    iget-object v11, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    #getter for: Lcom/android/settings/CryptDecryptSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v11}, Lcom/android/settings/CryptDecryptSettings;->access$000(Lcom/android/settings/CryptDecryptSettings;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v7

    if-nez v7, :cond_73

    move v6, v9

    :goto_3c
    iget-object v11, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    #getter for: Lcom/android/settings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/settings/CryptDecryptSettings;->access$100(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v3, :cond_75

    if-eqz v5, :cond_75

    if-eqz v6, :cond_75

    :goto_48
    invoke-virtual {v11, v9}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    #getter for: Lcom/android/settings/CryptDecryptSettings;->mPowerWarning:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings/CryptDecryptSettings;->access$200(Lcom/android/settings/CryptDecryptSettings;)Landroid/view/View;

    move-result-object v11

    if-eqz v5, :cond_77

    move v9, v10

    :goto_54
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    #getter for: Lcom/android/settings/CryptDecryptSettings;->mBatteryWarning:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings/CryptDecryptSettings;->access$300(Lcom/android/settings/CryptDecryptSettings;)Landroid/view/View;

    move-result-object v11

    if-eqz v3, :cond_79

    move v9, v10

    :goto_60
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    #getter for: Lcom/android/settings/CryptDecryptSettings;->mSDcardOngoingWarning:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings/CryptDecryptSettings;->access$400(Lcom/android/settings/CryptDecryptSettings;)Landroid/view/View;

    move-result-object v9

    if-eqz v6, :cond_7b

    :goto_6b
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_6e
    return-void

    :cond_6f
    move v3, v8

    goto :goto_27

    :cond_71
    move v5, v8

    goto :goto_2f

    :cond_73
    move v6, v8

    goto :goto_3c

    :cond_75
    move v9, v8

    goto :goto_48

    :cond_77
    move v9, v8

    goto :goto_54

    :cond_79
    move v9, v8

    goto :goto_60

    :cond_7b
    move v10, v8

    goto :goto_6b
.end method
