.class Lcom/android/systemui/power/PowerUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, action:Ljava/lang/String;
    const-string v13, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 163
    .local v4, oldBatteryLevel:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "level"

    const/16 v15, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v13, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 165
    .local v6, oldBatteryStatus:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "status"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v13, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 168
    .local v3, oldBatteryHealth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "health"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v9, v13, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 171
    .local v9, oldPlugType:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "plugged"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v8, v13, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 173
    .local v8, oldInvalidCharger:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "invalid_charger"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v5, v13, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 175
    .local v5, oldBatteryOnline:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v14}, Lcom/android/systemui/power/PowerUI;->getBatteryOnline()I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v13, :cond_7

    const/4 v11, 0x1

    .line 178
    .local v11, plugged:Z
    :goto_0
    if-eqz v9, :cond_8

    const/4 v10, 0x1

    .line 180
    .local v10, oldPlugged:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v13, v4}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v7

    .line 181
    .local v7, oldBucket:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v2

    .line 224
    .local v2, bucket:I
    if-nez v11, :cond_9

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_9

    if-gez v2, :cond_9

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 249
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq v6, v13, :cond_3

    .line 250
    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v13, v14, :cond_e

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->notifyFullBatteryNotification()V

    .line 256
    :cond_1
    :goto_3
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v13, v14, :cond_11

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    if-nez v13, :cond_10

    .line 258
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v14, "power"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 259
    .local v12, powerManager:Landroid/os/PowerManager;
    if-nez v12, :cond_f

    .line 260
    const-string v13, "PowerUI"

    const-string v14, "onReceive : fail to get PowerManager reference"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v12           #powerManager:Landroid/os/PowerManager;
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->showNotChargeDialog()V

    .line 283
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq v9, v13, :cond_5

    .line 284
    if-eqz v9, :cond_4

    const/4 v13, -0x1

    if-ne v13, v9, :cond_5

    .line 285
    :cond_4
    if-nez v9, :cond_5

    .line 286
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/systemui/power/PowerUI;->playSound(Landroid/net/Uri;)V

    .line 291
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v5, v13, :cond_6

    .line 292
    const/16 v13, 0xa

    if-eq v13, v5, :cond_12

    const/16 v13, 0xa

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v13, v14, :cond_12

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->showWirelessChargeDialog()V

    .line 301
    .end local v2           #bucket:I
    .end local v3           #oldBatteryHealth:I
    .end local v4           #oldBatteryLevel:I
    .end local v5           #oldBatteryOnline:I
    .end local v6           #oldBatteryStatus:I
    .end local v7           #oldBucket:I
    .end local v8           #oldInvalidCharger:I
    .end local v9           #oldPlugType:I
    .end local v10           #oldPlugged:Z
    .end local v11           #plugged:Z
    :cond_6
    :goto_6
    return-void

    .line 177
    .restart local v3       #oldBatteryHealth:I
    .restart local v4       #oldBatteryLevel:I
    .restart local v5       #oldBatteryOnline:I
    .restart local v6       #oldBatteryStatus:I
    .restart local v8       #oldInvalidCharger:I
    .restart local v9       #oldPlugType:I
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 178
    .restart local v11       #plugged:Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 229
    .restart local v2       #bucket:I
    .restart local v7       #oldBucket:I
    .restart local v10       #oldPlugged:Z
    :cond_9
    if-ge v2, v7, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_b

    if-gez v2, :cond_b

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->isOverCurrent()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_2

    .line 234
    :cond_a
    if-nez v11, :cond_0

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_2

    .line 237
    :cond_b
    if-le v2, v7, :cond_c

    if-lez v2, :cond_c

    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_2

    .line 239
    :cond_c
    if-eqz v11, :cond_0

    if-nez v10, :cond_0

    if-gez v2, :cond_0

    .line 242
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->isOverCurrent()Z

    move-result v13

    if-nez v13, :cond_d

    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_2

    .line 244
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_2

    .line 252
    :cond_e
    const/4 v13, 0x5

    if-ne v13, v6, :cond_1

    .line 253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->cancelFullBatteryNotification()V

    goto/16 :goto_3

    .line 262
    .restart local v12       #powerManager:Landroid/os/PowerManager;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v14, 0x6

    const-string v15, "PowerUI"

    invoke-virtual {v12, v14, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    iput-object v14, v13, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 263
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v14, 0x1

    const-string v15, "PowerUI"

    invoke-virtual {v12, v14, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    iput-object v14, v13, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_4

    .line 268
    .end local v12           #powerManager:Landroid/os/PowerManager;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_4

    .line 273
    :cond_11
    const/4 v13, 0x4

    if-ne v13, v6, :cond_3

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->dismissNotChargeDialog()V

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v13, :cond_3

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5

    .line 294
    :cond_12
    const/16 v13, 0xa

    if-ne v13, v5, :cond_6

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->dismissWirelessChargeDialog()V

    goto/16 :goto_6

    .line 299
    .end local v2           #bucket:I
    .end local v3           #oldBatteryHealth:I
    .end local v4           #oldBatteryLevel:I
    .end local v5           #oldBatteryOnline:I
    .end local v6           #oldBatteryStatus:I
    .end local v7           #oldBucket:I
    .end local v8           #oldInvalidCharger:I
    .end local v9           #oldPlugType:I
    .end local v10           #oldPlugged:Z
    .end local v11           #plugged:Z
    :cond_13
    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unknown intent: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method
