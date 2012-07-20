.class Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;
.super Landroid/telephony/PhoneStateListener;
.source "WifiApSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsRoaming:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$502(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)Z

    return-void
.end method
