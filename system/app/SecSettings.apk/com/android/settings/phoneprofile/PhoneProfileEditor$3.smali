.class Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;
.super Ljava/lang/Object;
.source "PhoneProfileEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/phoneprofile/PhoneProfileEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$500(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$500(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$700(Lcom/android/settings/phoneprofile/PhoneProfileEditor;ILandroid/preference/Preference;I)V

    :cond_15
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$600(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$600(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$700(Lcom/android/settings/phoneprofile/PhoneProfileEditor;ILandroid/preference/Preference;I)V

    :cond_28
    return-void
.end method
