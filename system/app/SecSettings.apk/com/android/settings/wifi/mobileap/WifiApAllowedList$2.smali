.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    return-void
.end method
