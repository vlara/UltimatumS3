.class Lcom/android/settings/wifi/WifiEnabler$2;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$2;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$2;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const/4 v1, 0x2

    #calls: Lcom/android/settings/wifi/WifiEnabler;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->access$400(Lcom/android/settings/wifi/WifiEnabler;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$2;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiEnabler;->access$500(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$2;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/wifi/WifiEnabler;->setWifiEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->access$600(Lcom/android/settings/wifi/WifiEnabler;Z)V

    return-void
.end method
