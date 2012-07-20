.class public Lcom/android/settings/wifi/SelectApDialog;
.super Landroid/app/Activity;
.source "SelectApDialog.java"


# instance fields
.field mSelectAP:Lcom/android/settings/wifi/SelectAP;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SelectApDialog"

    const-string v1, "SelectApDialog, RESULT_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400aa

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SelectApDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/SelectApDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a01e3

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/SelectAP;

    iput-object v0, p0, Lcom/android/settings/wifi/SelectApDialog;->mSelectAP:Lcom/android/settings/wifi/SelectAP;

    const v0, 0x7f0d0a61

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SelectApDialog;->setTitle(I)V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SelectApDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    :cond_10
    return-void
.end method
