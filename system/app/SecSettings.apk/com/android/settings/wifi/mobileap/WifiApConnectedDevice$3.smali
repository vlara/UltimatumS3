.class Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;
.super Ljava/lang/Object;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$100(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$200(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$300(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$400(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$500(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/Long;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->show()V

    return-void
.end method
