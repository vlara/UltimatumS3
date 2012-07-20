.class Lcom/android/settings/accounts/ManageAccountsSettings$2;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    #getter for: Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$000(Lcom/android/settings/accounts/ManageAccountsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-ne v1, v0, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    #getter for: Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$000(Lcom/android/settings/accounts/ManageAccountsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    const/4 v1, 0x0

    goto :goto_13
.end method
