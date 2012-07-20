.class public final Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;
.super Landroid/app/DialogFragment;
.source "BluetoothVisibilityTimeoutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getDiscoverableEnabler()Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setDiscoverableTimeout(I)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d007b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090022

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeoutIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
