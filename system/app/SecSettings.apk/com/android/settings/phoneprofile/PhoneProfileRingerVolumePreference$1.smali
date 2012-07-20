.class Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$1;
.super Landroid/os/Handler;
.source "PhoneProfileRingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$1;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$1;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;

    #calls: Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->updateSlidersAndMutedStates()V
    invoke-static {v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->access$000(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)V

    return-void
.end method
