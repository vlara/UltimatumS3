.class Lcom/android/settings/phoneprofile/PhoneProfileEditor$2;
.super Landroid/os/Handler;
.source "PhoneProfileEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/phoneprofile/PhoneProfileEditor;
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

    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$2;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$2;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$500(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_14
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$2;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$600(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_6
        :pswitch_14
    .end packed-switch
.end method
