.class public Lcom/android/settings/wifi/LocationProvidingService;
.super Landroid/app/Service;
.source "LocationProvidingService.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final S:[Ljava/lang/String;


# instance fields
.field public CID:Ljava/lang/String;

.field private CompareThread:Ljava/lang/Runnable;

.field final Null:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private UpdateAddress:Ljava/lang/Runnable;

.field private UpdateWifi:Ljava/lang/Runnable;

.field addrHandler:Landroid/os/Handler;

.field private cellAvailable:Z

.field final deltaDistance:I

.field final deltaMinutes:I

.field final deltaTime:I

.field details:Ljava/lang/CharSequence;

.field latitude:D

.field lm:Landroid/location/LocationManager;

.field loc:Landroid/location/Location;

.field private locAvailable:Z

.field locat:Landroid/location/Location;

.field longtitude:D

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field notificationManager:Landroid/app/NotificationManager;

.field results:I

.field title:Ljava/lang/CharSequence;

.field tm:Landroid/telephony/TelephonyManager;

.field wifiHandler:Landroid/os/Handler;

.field wm:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Out of Service"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Temporarily Unavailable"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Available"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/LocationProvidingService;->S:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "LocationProvidingService"

    iput-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->Null:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->deltaMinutes:I

    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->deltaTime:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->deltaDistance:I

    new-instance v0, Lcom/android/settings/wifi/LocationProvidingService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/LocationProvidingService$1;-><init>(Lcom/android/settings/wifi/LocationProvidingService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/wifi/LocationProvidingService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/LocationProvidingService$2;-><init>(Lcom/android/settings/wifi/LocationProvidingService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->UpdateAddress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/wifi/LocationProvidingService$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/LocationProvidingService$3;-><init>(Lcom/android/settings/wifi/LocationProvidingService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->CompareThread:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/wifi/LocationProvidingService$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/LocationProvidingService$4;-><init>(Lcom/android/settings/wifi/LocationProvidingService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->UpdateWifi:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/LocationProvidingService;Landroid/telephony/CellLocation;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/LocationProvidingService;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/LocationProvidingService;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->CompareThread:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/LocationProvidingService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->cellAvailable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/LocationProvidingService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/wifi/LocationProvidingService;->cellAvailable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/LocationProvidingService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->locAvailable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/LocationProvidingService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/wifi/LocationProvidingService;->locAvailable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/LocationProvidingService;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->UpdateWifi:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .registers 14

    const/4 v11, 0x0

    instance-of v8, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v8, :cond_44

    move-object v4, p1

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/LocationProvidingService;->CID:Ljava/lang/String;

    const-string v8, "LocationProvidingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GsmCellLocation CID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/LocationProvidingService;->CID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/LocationProvidingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_auto_connection"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_43

    iget-object v8, p0, Lcom/android/settings/wifi/LocationProvidingService;->addrHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/wifi/LocationProvidingService;->CompareThread:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_43
    :goto_43
    return-void

    :cond_44
    instance-of v8, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v8, :cond_43

    move-object v4, p1

    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v7

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v6

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/LocationProvidingService;->CID:Ljava/lang/String;

    const-string v8, "LocationProvidingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CdmaCellLocation BID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/LocationProvidingService;->CID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/LocationProvidingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_auto_connection"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_43

    iget-object v8, p0, Lcom/android/settings/wifi/LocationProvidingService;->addrHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/wifi/LocationProvidingService;->CompareThread:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_43
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "LocationProvidingService"

    const-string v1, "Service created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/LocationProvidingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->tm:Landroid/telephony/TelephonyManager;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/LocationProvidingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->wm:Landroid/net/wifi/WifiManager;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/LocationProvidingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/LocationProvidingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->notificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->addrHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->wifiHandler:Landroid/os/Handler;

    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->locat:Landroid/location/Location;

    return-void
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "LocationProvidingService"

    const-string v1, "Service destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6

    iput-object p1, p0, Lcom/android/settings/wifi/LocationProvidingService;->loc:Landroid/location/Location;

    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLocationChanged - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/LocationProvidingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_connection"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_35

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService;->UpdateAddress:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_35
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 8

    const-wide/32 v2, 0x1d4c0

    const/high16 v4, 0x3f80

    const-string v0, "LocationProvidingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProviderDisabled, provider: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_37
    :goto_37
    return-void

    :cond_38
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_37
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 8

    const-wide/32 v2, 0x1d4c0

    const/high16 v4, 0x3f80

    const-string v0, "LocationProvidingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProviderEnabled, provider: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_2d
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 9

    const-wide/32 v2, 0x1d4c0

    const/high16 v4, 0x3f80

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const-string v0, "LocationProvidingService"

    const-string v1, "Service started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7

    const-string v0, "LocationProvidingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged, Provider= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/wifi/LocationProvidingService;->S:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
