.class Lcom/android/settings/phoneprofile/PhoneProfileSettings$5;
.super Ljava/lang/Object;
.source "PhoneProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/phoneprofile/PhoneProfileSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$5;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$5;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    iget-object v0, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$5;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    iget-object v1, v1, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v1}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->setForceChecked(Z)V

    return-void
.end method
