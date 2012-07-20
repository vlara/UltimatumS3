.class Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;
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
    name = "HandleAccessControl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/nearby/NearbySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v3}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v3

    if-eqz v3, :cond_10

    if-eqz p2, :cond_10

    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_12

    :cond_10
    move v1, v2

    :goto_11
    return v1

    :cond_12
    :try_start_12
    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v3}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/settings/nearby/IMediaServer;->setContentAccessAllowed(Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->bInitPreference:Z
    invoke-static {v3}, Lcom/android/settings/nearby/NearbySettings;->access$1600(Lcom/android/settings/nearby/NearbySettings;)Z

    move-result v3

    if-nez v3, :cond_5c

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0949

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_40} :catch_41

    goto :goto_11

    :catch_41
    move-exception v0

    const-string v1, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_11

    :cond_5c
    :try_start_5c
    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;->this$0:Lcom/android/settings/nearby/NearbySettings;

    const/4 v4, 0x0

    #setter for: Lcom/android/settings/nearby/NearbySettings;->bInitPreference:Z
    invoke-static {v3, v4}, Lcom/android/settings/nearby/NearbySettings;->access$1602(Lcom/android/settings/nearby/NearbySettings;Z)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_62} :catch_41

    goto :goto_11
.end method
