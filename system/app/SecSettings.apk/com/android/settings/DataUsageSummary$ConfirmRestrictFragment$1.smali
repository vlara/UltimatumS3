.class Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    #calls: Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$3600(Lcom/android/settings/DataUsageSummary;Z)V

    :cond_e
    return-void
.end method
