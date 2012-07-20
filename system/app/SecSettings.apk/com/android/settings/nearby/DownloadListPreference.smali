.class public Lcom/android/settings/nearby/DownloadListPreference;
.super Landroid/preference/ListPreference;
.source "DownloadListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isExtarnalMounted:Z

.field private mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const v2, 0x7f0d0934

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference;->context:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/settings/nearby/DownloadListPreference;->context:Landroid/content/Context;

    const-string v0, "allshare_download_to"

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/DownloadListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setTitle(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setDialogTitle(I)V

    const v0, 0x7f0d0937

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/DownloadListPreference;->setPositiveButtonText(I)V

    const v0, 0x7f0d0938

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/DownloadListPreference;->setNegativeButtonText(I)V

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 4

    const-string v0, "AllshareSetting"

    const-string v1, "DownloadListPreference: onPrepareDialogBuilder"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    iget-boolean v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_14
    return-void
.end method

.method public setIsExternalMounted(Z)V
    .registers 7

    const/4 v4, 0x0

    iput-boolean p1, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    invoke-virtual {p0}, Lcom/android/settings/nearby/DownloadListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadListPreference: Change dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-virtual {p0, v4}, Lcom/android/settings/nearby/DownloadListPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_31
    :goto_31
    return-void

    :cond_32
    iget-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadListPreference: Change mDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    invoke-virtual {p0, v4}, Lcom/android/settings/nearby/DownloadListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_31
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .registers 7

    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadListPreference: showDialog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    if-nez v2, :cond_25

    new-instance v2, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    iget-object v3, p0, Lcom/android/settings/nearby/DownloadListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;-><init>(Lcom/android/settings/nearby/DownloadListPreference;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    :cond_25
    iget-object v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    iget-object v2, v2, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    iget-object v2, v2, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mEntriesValues:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/nearby/DownloadListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    iget-boolean v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    if-nez v2, :cond_4e

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_4f

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    const-string v2, "AllshareSetting"

    const-string v3, "DownloadListPreference: listView is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_57
    const-string v2, "AllshareSetting"

    const-string v3, "DownloadListPreference: dialog is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method
