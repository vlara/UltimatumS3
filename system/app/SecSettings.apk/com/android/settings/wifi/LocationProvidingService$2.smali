.class Lcom/android/settings/wifi/LocationProvidingService$2;
.super Ljava/lang/Object;
.source "LocationProvidingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/LocationProvidingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/LocationProvidingService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/LocationProvidingService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/LocationProvidingService$2;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$2;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e0

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$2;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->loc:Landroid/location/Location;

    if-eqz v1, :cond_e0

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$2;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v2, p0, Lcom/android/settings/wifi/LocationProvidingService$2;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v2, v2, Lcom/android/settings/wifi/LocationProvidingService;->loc:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/settings/wifi/LocationProvidingService;->longtitude:D

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$2;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v2, p0, Lcom/android/settings/wifi/LocationProvidingService$2;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v2, v2, Lcom/android/settings/wifi/LocationProvidingService;->loc:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/settings/wifi/LocationProvidingService;->latitude:D

    const-string v1, "LocationProvidingService"

    const-string v2, "updateAddress"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$2;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    :try_start_3a
    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$2;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-wide v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->latitude:D

    iget-object v3, p0, Lcom/android/settings/wifi/LocationProvidingService$2;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-wide v3, v3, Lcom/android/settings/wifi/LocationProvidingService;->longtitude:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_d3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_56
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_b7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_56

    :cond_b7
    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_d3} :catch_e1

    :cond_d3
    :goto_d3
    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$2;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->addrHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wifi/LocationProvidingService$2;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    #getter for: Lcom/android/settings/wifi/LocationProvidingService;->CompareThread:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/wifi/LocationProvidingService;->access$100(Lcom/android/settings/wifi/LocationProvidingService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e0
    return-void

    :catch_e1
    move-exception v9

    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3
.end method
