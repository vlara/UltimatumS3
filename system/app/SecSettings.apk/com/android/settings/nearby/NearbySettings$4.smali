.class Lcom/android/settings/nearby/NearbySettings$4;
.super Landroid/content/BroadcastReceiver;
.source "NearbySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 30

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: BroadcastReceiver onReceive(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v23, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_32

    const-string v23, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_139

    :cond_32
    const-string v23, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    const-string v24, "wifip2p"

    #calls: Lcom/android/settings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static/range {v23 .. v24}, Lcom/android/settings/nearby/NearbySettings;->access$900(Lcom/android/settings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/p2p/WifiP2pManager;

    const/16 v23, 0xd

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v18

    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: intent: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " state: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v22, :cond_ed

    if-eqz v17, :cond_ed

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_ee

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_ee

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v23

    if-eqz v23, :cond_ed

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v24, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v24, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static/range {v24 .. v24}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v24

    #calls: Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V
    invoke-static/range {v23 .. v24}, Lcom/android/settings/nearby/NearbySettings;->access$1000(Lcom/android/settings/nearby/NearbySettings;Landroid/preference/Preference;)V

    :cond_ed
    :goto_ed
    return-void

    :cond_ee
    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: STATE WIFI:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", P2P:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_11c} :catch_11d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11c} :catch_14d

    goto :goto_ed

    :catch_11d
    move-exception v8

    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: NotFoundException on broadcast receiver: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    :cond_139
    :try_start_139
    const-string v23, "com.android.settings.allshare.REFRESH"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_169

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #calls: Lcom/android/settings/nearby/NearbySettings;->refreshPreferenceValues()V
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$200(Lcom/android/settings/nearby/NearbySettings;)V
    :try_end_14c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_139 .. :try_end_14c} :catch_11d
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_14c} :catch_14d

    goto :goto_ed

    :catch_14d
    move-exception v9

    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: Exception on broadcast receiver: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    :cond_169
    :try_start_169
    const-string v23, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_17f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.MEDIA_EJECT"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_191

    :cond_17f
    const-string v23, "AllshareSetting"

    const-string v24, "AllshareSetting: media mount changed"

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #calls: Lcom/android/settings/nearby/NearbySettings;->refreshPreferenceValues()V
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$200(Lcom/android/settings/nearby/NearbySettings;)V

    goto/16 :goto_ed

    :cond_191
    const-string v23, "com.android.settings.allshare.UPDATE_LIST"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_244

    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: com.android.settings.allshare.UPDATE_LIST "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "ACCEPTLIST"

    const/16 v26, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v23, "ACCEPTLIST"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    const-string v23, "INDEX"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v12

    if-eqz v13, :cond_228

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$1100(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v21

    :goto_1e5
    invoke-virtual/range {v21 .. v21}, Landroid/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    const/4 v11, 0x0

    :goto_1ef
    array-length v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_233

    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: Index: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget v25, v12, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    aget v25, v12, v11

    aget-object v25, v10, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget v23, v12, v11

    aget-object v23, v10, v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1ef

    :cond_228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$1200(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v21

    goto :goto_1e5

    :cond_233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_ed

    :cond_244
    const-string v23, "com.android.settings.allshare.SERVER_STATE_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_29e

    const-string v23, "AllshareSetting"

    const-string v24, "AllshareSetting: com.android.settings.allshare.SERVER_STATE_CHANGE"

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v23, "START"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$1300(Lcom/android/settings/nearby/NearbySettings;)Z

    move-result v23

    move/from16 v0, v23

    if-ne v0, v14, :cond_282

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_ed

    :cond_282
    const-string v23, "AllshareSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AllshareSetting: INVALID FUNCTION STATE: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ed

    :cond_29e
    const-string v23, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_ed

    const-string v23, "AllshareSetting"

    const-string v24, "AllshareSetting: REFRESH_DEVICE_LIST"

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v23, "LIST"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_320

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$1100(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/nearby/AcceptListPreference;->updateDialog()Z

    move-result v23

    if-eqz v23, :cond_ed

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$1100(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    check-cast v7, Landroid/app/AlertDialog;

    if-eqz v7, :cond_ed

    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v20

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v16

    if-eqz v16, :cond_ed

    new-instance v15, Lcom/android/settings/nearby/ListItemListener;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v6, Lcom/android/settings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v6, v15, v7, v0, v1}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_ed

    :cond_320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$1200(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/nearby/RejectListPreference;->updateDialog()Z

    move-result v23

    if-eqz v23, :cond_ed

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$1200(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    check-cast v7, Landroid/app/AlertDialog;

    if-eqz v7, :cond_ed

    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v20

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v16

    if-eqz v16, :cond_ed

    new-instance v15, Lcom/android/settings/nearby/ListItemListener;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v6, Lcom/android/settings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$4;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v6, v15, v7, v0, v1}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_37f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_169 .. :try_end_37f} :catch_11d
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_37f} :catch_14d

    goto/16 :goto_ed
.end method
