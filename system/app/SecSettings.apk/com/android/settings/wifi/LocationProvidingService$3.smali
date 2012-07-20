.class Lcom/android/settings/wifi/LocationProvidingService$3;
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

    iput-object p1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const-string v1, "LocationProvidingService"

    const-string v2, "Compare Thread started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings/wifi/LocationProvidingService;->cellAvailable:Z
    invoke-static {v1, v2}, Lcom/android/settings/wifi/LocationProvidingService;->access$202(Lcom/android/settings/wifi/LocationProvidingService;Z)Z

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings/wifi/LocationProvidingService;->locAvailable:Z
    invoke-static {v1, v2}, Lcom/android/settings/wifi/LocationProvidingService;->access$302(Lcom/android/settings/wifi/LocationProvidingService;Z)Z

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    invoke-virtual {v1}, Lcom/android/settings/wifi/LocationProvidingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->loc:Landroid/location/Location;

    if-eqz v1, :cond_10a

    sget-object v1, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_10a

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2e
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_107

    const/4 v1, 0x7

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_102

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_102

    const/16 v1, 0x8

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_102

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    const/16 v1, 0x8

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "latitude in database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "longitude in database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->locat:Landroid/location/Location;

    invoke-virtual {v1, v9, v10}, Landroid/location/Location;->setLatitude(D)V

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->locat:Landroid/location/Location;

    invoke-virtual {v1, v11, v12}, Landroid/location/Location;->setLongitude(D)V

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v2, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v2, v2, Lcom/android/settings/wifi/LocationProvidingService;->loc:Landroid/location/Location;

    iget-object v3, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v3, v3, Lcom/android/settings/wifi/LocationProvidingService;->locat:Landroid/location/Location;

    invoke-virtual {v2, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/android/settings/wifi/LocationProvidingService;->results:I

    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget v3, v3, Lcom/android/settings/wifi/LocationProvidingService;->results:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->results:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_102

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings/wifi/LocationProvidingService;->locAvailable:Z
    invoke-static {v1, v2}, Lcom/android/settings/wifi/LocationProvidingService;->access$302(Lcom/android/settings/wifi/LocationProvidingService;Z)Z

    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is location Available in database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    #getter for: Lcom/android/settings/wifi/LocationProvidingService;->locAvailable:Z
    invoke-static {v3}, Lcom/android/settings/wifi/LocationProvidingService;->access$300(Lcom/android/settings/wifi/LocationProvidingService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->wifiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    #getter for: Lcom/android/settings/wifi/LocationProvidingService;->UpdateWifi:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/wifi/LocationProvidingService;->access$400(Lcom/android/settings/wifi/LocationProvidingService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_101
    :goto_101
    return-void

    :cond_102
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2e

    :cond_107
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_10a
    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->CID:Ljava/lang/String;

    if-eqz v1, :cond_174

    sget-object v1, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_174

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_11f
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_171

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->CID:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16d

    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16d

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings/wifi/LocationProvidingService;->cellAvailable:Z
    invoke-static {v1, v2}, Lcom/android/settings/wifi/LocationProvidingService;->access$202(Lcom/android/settings/wifi/LocationProvidingService;Z)Z

    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is Cell Available in database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    #getter for: Lcom/android/settings/wifi/LocationProvidingService;->cellAvailable:Z
    invoke-static {v3}, Lcom/android/settings/wifi/LocationProvidingService;->access$200(Lcom/android/settings/wifi/LocationProvidingService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->wifiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    #getter for: Lcom/android/settings/wifi/LocationProvidingService;->UpdateWifi:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/wifi/LocationProvidingService;->access$400(Lcom/android/settings/wifi/LocationProvidingService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_101

    :cond_16d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_11f

    :cond_171
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_174
    sget-object v1, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_101

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_183
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1a3

    const/4 v1, 0x7

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19f

    iget-object v1, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/settings/wifi/LocationProvidingService;->wifiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wifi/LocationProvidingService$3;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    #getter for: Lcom/android/settings/wifi/LocationProvidingService;->UpdateWifi:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/wifi/LocationProvidingService;->access$400(Lcom/android/settings/wifi/LocationProvidingService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_101

    :cond_19f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_183

    :cond_1a3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_101
.end method
