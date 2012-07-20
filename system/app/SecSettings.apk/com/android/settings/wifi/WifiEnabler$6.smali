.class Lcom/android/settings/wifi/WifiEnabler$6;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$6;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$6;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiEnabler;->access$700(Lcom/android/settings/wifi/WifiEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$6;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #calls: Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiEnabler;->access$800(Lcom/android/settings/wifi/WifiEnabler;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$6;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$6;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiEnabler;->access$900(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d02c0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
