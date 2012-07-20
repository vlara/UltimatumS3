.class Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;
.super Landroid/os/Handler;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4a

    :goto_5
    return-void

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v0, "total_size"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v0, "avail_size"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updateApproximate(JJ)V

    goto :goto_5

    :pswitch_1c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v0, "total_size"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v0, "avail_size"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "apps_used"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "downloads_size"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v0, "misc_size"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v0, "media_sizes"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v11

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual/range {v0 .. v11}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updateExact(JJJJJ[J)V

    goto :goto_5

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1c
    .end packed-switch
.end method
