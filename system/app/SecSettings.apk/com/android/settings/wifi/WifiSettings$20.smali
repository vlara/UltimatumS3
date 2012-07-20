.class Lcom/android/settings/wifi/WifiSettings$20;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->tm:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->cellLocation:Landroid/telephony/CellLocation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cellLocation:Landroid/telephony/CellLocation;

    if-eqz v3, :cond_40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cellLocation:Landroid/telephony/CellLocation;

    instance-of v3, v3, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_e6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v3, Lcom/android/settings/wifi/WifiSettings;->cellLocation:Landroid/telephony/CellLocation;

    move-object/from16 v24, v0

    check-cast v24, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v23

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->CID:Ljava/lang/String;

    :cond_40
    :goto_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->PROVIDER:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3500(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mlocationManager:Landroid/location/LocationManager;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiSettings;->access$3600(Lcom/android/settings/wifi/WifiSettings;)Landroid/location/LocationManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->PROVIDER:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiSettings;->access$3500(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->loc:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->loc:Landroid/location/Location;

    if-eqz v3, :cond_8c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiSettings;->loc:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/settings/wifi/WifiSettings;->longtitude:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiSettings;->loc:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/settings/wifi/WifiSettings;->latitude:D

    :cond_8c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->isNetworkAvailable()Z
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3700(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v3

    if-eqz v3, :cond_192

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-wide v5, v3, Lcom/android/settings/wifi/WifiSettings;->latitude:D

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_192

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-wide v5, v3, Lcom/android/settings/wifi/WifiSettings;->longtitude:D

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_192

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-wide v5, v5, Lcom/android/settings/wifi/WifiSettings;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->LATITUDE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-wide v5, v5, Lcom/android/settings/wifi/WifiSettings;->longtitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->LONGITUDE:Ljava/lang/String;

    new-instance v2, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_112

    :cond_e5
    :goto_e5
    return-void

    :cond_e6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cellLocation:Landroid/telephony/CellLocation;

    instance-of v3, v3, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v3, Lcom/android/settings/wifi/WifiSettings;->cellLocation:Landroid/telephony/CellLocation;

    move-object/from16 v24, v0

    check-cast v24, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v13

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v28

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->CID:Ljava/lang/String;

    goto/16 :goto_40

    :cond_112
    const-wide/16 v5, 0x1388

    :try_start_114
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    const-string v3, "WifiSettings"

    const-string v5, "Insert Thread is sleeping"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Ljava/lang/InterruptedException; {:try_start_114 .. :try_end_11e} :catch_2c9

    :try_start_11e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-wide v3, v3, Lcom/android/settings/wifi/WifiSettings;->latitude:D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-wide v5, v5, Lcom/android/settings/wifi/WifiSettings;->longtitude:D

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_192

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_192

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/Address;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->ADDRESS:Ljava/lang/String;
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_192} :catch_2aa
    .catch Ljava/lang/InterruptedException; {:try_start_11e .. :try_end_192} :catch_2c9

    :cond_192
    :goto_192
    const-string v3, "WifiSettings"

    const-string v5, "Insert Thread started"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3800(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_e5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3800(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3800(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3800(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3800(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$1900(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v3

    if-nez v3, :cond_1fd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1fd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->cr:Landroid/content/ContentResolver;

    :cond_1fd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cr:Landroid/content/ContentResolver;

    if-eqz v3, :cond_e5

    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "ssid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bssid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cellid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiSettings;->CID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "latitude"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiSettings;->LATITUDE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "longtitude"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiSettings;->LONGITUDE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->ADDRESS:Ljava/lang/String;

    if-eqz v3, :cond_254

    const-string v3, "address"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiSettings;->ADDRESS:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_254
    const-string v3, "provider"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->PROVIDER:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiSettings;->access$3500(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_2d6

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_278
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2d3

    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cf

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    sget-object v3, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cr:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    goto/16 :goto_e5

    :catch_2aa
    move-exception v18

    :try_start_2ab
    const-string v3, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c7
    .catch Ljava/lang/InterruptedException; {:try_start_2ab .. :try_end_2c7} :catch_2c9

    goto/16 :goto_192

    :catch_2c9
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_192

    :cond_2cf
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_278

    :cond_2d3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2d6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cr:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    const-string v3, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Row inserted at index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$20;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cr:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_e5

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_320
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_32a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_320

    :cond_32a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e5
.end method
