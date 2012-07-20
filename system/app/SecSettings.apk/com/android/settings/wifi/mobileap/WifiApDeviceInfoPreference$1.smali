.class Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$000(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-lez v1, :cond_26

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog()V
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$100(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    :goto_25
    return-void

    :cond_26
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$200(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    goto :goto_25
.end method
