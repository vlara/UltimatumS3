.class Lcom/android/settings/autohaptic/AutoHapticSettings$2;
.super Ljava/lang/Object;
.source "AutoHapticSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autohaptic/AutoHapticSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/autohaptic/AutoHapticSettings;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$2;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    iput-object p2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$2;->val$layout:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 8

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$2;->val$layout:Landroid/view/View;

    const v4, 0x7f0a00a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$2;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    invoke-virtual {v3}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_reverb"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "DoNotShowDialog"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2a
    return-void
.end method