.class Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog()V
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

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$200(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    return-void
.end method
