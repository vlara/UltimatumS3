.class public final Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;
.super Landroid/app/Activity;
.source "WifiP2pDummyPickerActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400ec

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->setContentView(I)V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
