.class Lcom/android/settings/phoneprofile/PhoneProfileSettings$3;
.super Ljava/lang/Object;
.source "PhoneProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/phoneprofile/PhoneProfileSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/settings/phoneprofile/PhoneProfileSettings;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    iput-boolean p2, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$3;->val$value:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$3;->val$value:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    iget-object v0, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v0}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$3;->val$value:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    iget-object v0, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v0}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_1e
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    iget-boolean v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$3;->val$value:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->setAirplaneModeOn(Z)V

    goto :goto_f
.end method
