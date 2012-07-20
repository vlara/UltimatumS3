.class Lcom/android/settings/nearby/NearbySettings$1;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-static {p2}, Lcom/android/settings/nearby/IMediaServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    #setter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v1, v2}, Lcom/android/settings/nearby/NearbySettings;->access$002(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/IMediaServer;)Lcom/android/settings/nearby/IMediaServer;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v1}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v1

    if-nez v1, :cond_1a

    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: mIMediaServer == null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v1}, Lcom/android/settings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v1}, Lcom/android/settings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v2}, Lcom/android/settings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    #calls: Lcom/android/settings/nearby/NearbySettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/nearby/NearbySettings;->access$100(Lcom/android/settings/nearby/NearbySettings;Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #calls: Lcom/android/settings/nearby/NearbySettings;->refreshPreferenceValues()V
    invoke-static {v1}, Lcom/android/settings/nearby/NearbySettings;->access$200(Lcom/android/settings/nearby/NearbySettings;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_19
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v0, v1}, Lcom/android/settings/nearby/NearbySettings;->access$002(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/IMediaServer;)Lcom/android/settings/nearby/IMediaServer;

    return-void
.end method
