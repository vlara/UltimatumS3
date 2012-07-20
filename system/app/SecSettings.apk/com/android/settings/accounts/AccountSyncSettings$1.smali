.class Lcom/android/settings/accounts/AccountSyncSettings$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_10

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_10
    const-string v1, "AccountSettings"

    const-string v2, "Activity is finished!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void

    :cond_18
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accounts/AccountSyncSettings$1$1;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/AccountSyncSettings$1$1;-><init>(Lcom/android/settings/accounts/AccountSyncSettings$1;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_17
.end method
