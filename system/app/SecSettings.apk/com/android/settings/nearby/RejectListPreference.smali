.class public Lcom/android/settings/nearby/RejectListPreference;
.super Landroid/preference/MultiSelectListPreference;
.source "RejectListPreference.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final TAGClass:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const-string v0, "AllshareSetting"

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->TAG:Ljava/lang/String;

    const-string v0, "RejectListPreference: "

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->TAGClass:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    iput-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v0, 0x7f0d093f

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/RejectListPreference;->setPositiveButtonText(I)V

    const v0, 0x7f0d0938

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/RejectListPreference;->setNegativeButtonText(I)V

    new-instance v0, Lcom/android/settings/nearby/AccessDeviceList;

    invoke-direct {v0, p1}, Lcom/android/settings/nearby/AccessDeviceList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    invoke-virtual {v0}, Lcom/android/settings/nearby/AccessDeviceList;->loadPreference()V

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 4

    const-string v0, "AllshareSetting"

    const-string v1, "RejectListPreference: onPrepareDialogBuilder"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .registers 6

    const-string v1, "AllshareSetting"

    const-string v2, "RejectListPreference: showDialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    if-nez v1, :cond_14

    new-instance v1, Lcom/android/settings/nearby/AccessDeviceList;

    iget-object v2, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/nearby/AccessDeviceList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    :cond_14
    iget-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings/nearby/AccessDeviceList;->loadPreference()V

    iget-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings/nearby/AccessDeviceList;->getRejectSize()I

    move-result v1

    if-nez v1, :cond_55

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v3, 0x7f0d094a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v3, 0x7f0d0948

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0937

    new-instance v3, Lcom/android/settings/nearby/RejectListPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/nearby/RejectListPreference$1;-><init>(Lcom/android/settings/nearby/RejectListPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    :goto_54
    return-void

    :cond_55
    iget-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings/nearby/AccessDeviceList;->getRejectEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/RejectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings/nearby/AccessDeviceList;->getRejectEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/RejectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    goto :goto_54
.end method

.method public updateDialog()Z
    .registers 3

    const-string v0, "AllshareSetting"

    const-string v1, "RejectListPreference: updateDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "AllshareSetting"

    const-string v1, "RejectListPreference: refresh popup"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/RejectListPreference;->showDialog(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method
