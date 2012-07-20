.class Lcom/android/settings/wifi/WifiSettings$18;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    if-eqz v13, :cond_109

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_109

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_109

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_109

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MangeNetwork dialog bttn clicked: button = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_a9

    const-string v13, "WifiSettings"

    const-string v14, "COnnect button clicked  in manage network dialog"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v13

    const v14, 0x7fffffff

    if-ne v13, v14, :cond_81

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    :cond_80
    :goto_80
    return-void

    :cond_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$1200(Lcom/android/settings/wifi/WifiSettings;I)V

    goto :goto_80

    :cond_a9
    const/4 v13, -0x3

    move/from16 v0, p2

    if-ne v0, v13, :cond_c6

    const-string v13, "WifiSettings"

    const-string v14, "Neutral edit  button clicked  in manage network dialog"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    const/4 v15, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_80

    :cond_c6
    const/4 v13, -0x2

    move/from16 v0, p2

    if-ne v0, v13, :cond_80

    const-string v13, "WifiSettings"

    const-string v14, "Remove button clicked  in manage network dialog"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_100

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    :cond_100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2800(Lcom/android/settings/wifi/WifiSettings;)V

    goto/16 :goto_80

    :cond_109
    const/4 v13, -0x2

    move/from16 v0, p2

    if-ne v0, v13, :cond_15f

    sget v13, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_15f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_15f

    const-string v13, "WifiSettings"

    const-string v14, "negative forget button in connected network dialog in manage network dialog"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_154

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    :cond_154
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2800(Lcom/android/settings/wifi/WifiSettings;)V

    const-string v13, " "

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    :cond_15f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    if-eqz v13, :cond_1f5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1f5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    if-eqz v13, :cond_1f5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_1f5

    const/4 v2, 0x1

    :goto_195
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_1f7

    if-eqz v2, :cond_1f7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_1f7

    sget v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    if-nez v13, :cond_1f7

    const-string v13, "WifiSettings"

    const-string v14, "forget button in connected network dialog in normal wifi settings"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "WifiSettings"

    const-string v14, "button == WifiNewDialog.BUTTON_FORGET"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_1e8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    :cond_1e8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2800(Lcom/android/settings/wifi/WifiSettings;)V

    const-string v13, " "

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    goto/16 :goto_80

    :cond_1f5
    const/4 v2, 0x0

    goto :goto_195

    :cond_1f7
    const/4 v13, -0x3

    move/from16 v0, p2

    if-ne v0, v13, :cond_226

    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_226

    const-string v13, "WifiSettings"

    const-string v14, "button == WifiNewDialog.BUTTON_VIEW"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "WifiSettings"

    const-string v14, "View button in connected netork dialog in normal wifi settings"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V
    invoke-static/range {v13 .. v16}, Lcom/android/settings/wifi/WifiSettings;->access$2900(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    goto/16 :goto_80

    :cond_226
    const/4 v13, -0x3

    move/from16 v0, p2

    if-eq v0, v13, :cond_230

    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_531

    :cond_230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    if-eqz v13, :cond_531

    sget v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    if-nez v13, :cond_531

    const-string v13, "WifiSettings"

    const-string v14, "button == WifiNewDialog.BUTTON_SUBMIT/BUTTON_CONNECT"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiNewDialog;->chosenNetworkSetupMethod()I

    move-result v9

    if-eqz v9, :cond_290

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput v9, v13, Lcom/android/settings/wifi/WifiSettings;->mNetworkSetup:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v14, 0x1

    #setter for: Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$702(Lcom/android/settings/wifi/WifiSettings;Z)Z

    const/4 v13, 0x3

    if-eq v9, v13, :cond_277

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v14, 0x0

    #calls: Lcom/android/settings/wifi/WifiSettings;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)V

    :cond_277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/wifi/WifiNewDialog;->getWpsConfig()Landroid/net/wifi/WpsInfo;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;)V

    goto/16 :goto_80

    :cond_290
    sget-object v11, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiNewDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const-string v12, ""

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/TextView;

    if-eqz v13, :cond_2c0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->changedssid:Ljava/lang/String;

    :cond_2c0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    if-eqz v13, :cond_325

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v13, v14, :cond_323

    const/4 v7, 0x1

    :goto_2e1
    sget-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v1, :cond_327

    const-string v13, "WifiSettings"

    const-string v14, " config null "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    if-eqz v13, :cond_80

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    #calls: Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$3000(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v13

    if-nez v13, :cond_80

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$1200(Lcom/android/settings/wifi/WifiSettings;I)V

    goto/16 :goto_80

    :cond_323
    const/4 v7, 0x0

    goto :goto_2e1

    :cond_325
    const/4 v7, 0x1

    goto :goto_2e1

    :cond_327
    iget v13, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_44f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    if-eqz v13, :cond_80

    const-string v13, "WifiSettings"

    const-string v14, " mSelectedAccessPoint != null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_36b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    :cond_36b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2800(Lcom/android/settings/wifi/WifiSettings;)V

    const/4 v13, -0x1

    move/from16 v0, p2

    if-eq v0, v13, :cond_387

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_3e3

    :cond_387
    const-string v13, "WifiSettings"

    const-string v14, " Uzzal EDIT--> CONNECT clicked."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v13, v1}, Lcom/android/settings/wifi/WifiSettings;->access$3100(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_3d1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveNetwork():newNetId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    const/4 v13, -0x1

    if-eq v10, v13, :cond_3d1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V
    invoke-static {v13, v10}, Lcom/android/settings/wifi/WifiSettings;->access$1200(Lcom/android/settings/wifi/WifiSettings;I)V

    :cond_3d1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget v14, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$1200(Lcom/android/settings/wifi/WifiSettings;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2800(Lcom/android/settings/wifi/WifiSettings;)V

    goto/16 :goto_80

    :cond_3e3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v14, 0x7f0d0217

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v5, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v13, v1}, Lcom/android/settings/wifi/WifiSettings;->access$3100(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_446

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveNetwork():newNetId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    :cond_446
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2800(Lcom/android/settings/wifi/WifiSettings;)V

    goto/16 :goto_80

    :cond_44f
    const-string v13, "WifiSettings"

    const-string v14, "new network"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    invoke-static {v13, v1}, Lcom/android/settings/wifi/WifiSettings;->access$3200(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    const/4 v13, -0x1

    if-ne v8, v13, :cond_476

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0d0218

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_80

    :cond_476
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v8, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_49a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v13, v1}, Lcom/android/settings/wifi/WifiSettings;->access$3000(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v13

    if-eqz v13, :cond_51d

    :cond_49a
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_4e6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2800(Lcom/android/settings/wifi/WifiSettings;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V
    invoke-static {v13, v8}, Lcom/android/settings/wifi/WifiSettings;->access$1200(Lcom/android/settings/wifi/WifiSettings;I)V

    new-instance v4, Landroid/content/Intent;

    const-string v13, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "wifi_state"

    const/4 v14, 0x3

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v14}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    #calls: Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v13, v14, v4}, Lcom/android/settings/wifi/WifiSettings;->access$000(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2800(Lcom/android/settings/wifi/WifiSettings;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$3300(Lcom/android/settings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_80

    :cond_4e6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v14, 0x7f0d0217

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v5, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_80

    :cond_51d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V
    invoke-static {v13, v8}, Lcom/android/settings/wifi/WifiSettings;->access$1200(Lcom/android/settings/wifi/WifiSettings;I)V

    sget-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    const-string v13, "WifiSettings"

    const-string v14, "Uzzal else "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_80

    :cond_531
    const/4 v13, -0x3

    move/from16 v0, p2

    if-ne v0, v13, :cond_5ab

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    if-eqz v13, :cond_5ab

    const-string v13, "WifiSettings"

    const-string v14, "onClick() BUTTON_CONNECTED_EDIT neutral edit button in unconnected network dialog in manage networks"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    if-eqz v13, :cond_5a3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v13, :cond_5a3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "password is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    const/4 v15, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    const/4 v13, 0x0

    sput v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_80

    :cond_5a3
    const-string v13, "WifiSettings"

    const-string v14, "   mNewDialog.mPasswordView is null 1 "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58b

    :cond_5ab
    const/4 v13, -0x2

    move/from16 v0, p2

    if-ne v0, v13, :cond_61d

    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_61d

    const-string v13, "WifiSettings"

    const-string v14, "button == WifiNewDialog.BUTTON_EDIT"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    if-eqz v13, :cond_615

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v13, :cond_615

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "password is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_600
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    const/4 v15, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    goto/16 :goto_80

    :cond_615
    const-string v13, "WifiSettings"

    const-string v14, "  mNewDialog.mPasswordView is null  "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_600

    :cond_61d
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_646

    sget v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_646

    const-string v13, "WifiSettings"

    const-string v14, "button == WifiNewDialog.BUTTON_EDIT NW"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    const/4 v15, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    const/4 v13, 0x0

    sput v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_80

    :cond_646
    const-string v13, "WifiSettings"

    const-string v14, "button == WifiNewDialog.BUTTON_NEGATIVE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    sput v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_80
.end method
