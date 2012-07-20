.class Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;
.super Ljava/lang/Object;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->access$102(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;Z)Z

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->isAllDeviceChecked()Z
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z
    invoke-static {v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->access$102(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;Z)Z

    return v3
.end method
