.class Lcom/android/settings/wfd/WfdPickerActivity$8;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->createWfdTerminateDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v3, 0x0

    const-string v1, "WfdPickerActivity"

    const-string v2, "createWfdTerminateDialog ok is clicked.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3300(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/wfd/WfdSwitchEnabler;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3300(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/wfd/WfdSwitchEnabler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings/wfd/WfdSwitchEnabler;->setP2PDisable(Z)V

    :cond_19
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v2, 0x2

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V
    invoke-static {v1, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->access$900(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCastScanStopMenu:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3400(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v1, "WfdPickerActivity"

    const-string v2, "createWfdTerminateDialog set mEndConnectionFlag true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3500(Lcom/android/settings/wfd/WfdPickerActivity;)V

    return-void
.end method
