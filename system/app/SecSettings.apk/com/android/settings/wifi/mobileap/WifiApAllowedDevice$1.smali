.class Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$1;
.super Ljava/lang/Object;
.source "WifiApAllowedDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->showDialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;)V

    return-void
.end method
