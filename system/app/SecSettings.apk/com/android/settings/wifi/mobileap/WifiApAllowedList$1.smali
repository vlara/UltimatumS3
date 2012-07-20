.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;
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

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_15

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V
    invoke-static {v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V

    :goto_14
    return-void

    :cond_15
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0292

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_14
.end method
