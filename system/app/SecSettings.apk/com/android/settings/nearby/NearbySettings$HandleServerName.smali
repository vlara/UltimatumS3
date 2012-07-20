.class Lcom/android/settings/nearby/NearbySettings$HandleServerName;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleServerName"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/nearby/NearbySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings$HandleServerName;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/NearbySettings$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbySettings$HandleServerName;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$HandleServerName;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v3}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v3

    if-eqz v3, :cond_f

    if-eqz p2, :cond_f

    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_10

    :cond_f
    :goto_f
    return v2

    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$HandleServerName;->this$0:Lcom/android/settings/nearby/NearbySettings;

    check-cast p2, Ljava/lang/String;

    #calls: Lcom/android/settings/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$HandleServerName;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v3}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/settings/nearby/IMediaServer;->setMediaServerName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_21} :catch_23

    const/4 v2, 0x1

    goto :goto_f

    :catch_23
    move-exception v1

    const-string v3, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
