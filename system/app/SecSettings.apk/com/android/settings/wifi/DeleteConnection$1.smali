.class Lcom/android/settings/wifi/DeleteConnection$1;
.super Ljava/lang/Object;
.source "DeleteConnection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/DeleteConnection;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/DeleteConnection;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/DeleteConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/DeleteConnection$1;->this$0:Lcom/android/settings/wifi/DeleteConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/wifi/DeleteConnection$1;->this$0:Lcom/android/settings/wifi/DeleteConnection;

    iget-object v0, v0, Lcom/android/settings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/settings/wifi/DeleteConnection$1;->this$0:Lcom/android/settings/wifi/DeleteConnection;

    iget-object v0, v0, Lcom/android/settings/wifi/DeleteConnection;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d069c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0a6e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/wifi/DeleteConnection$1$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/DeleteConnection$1$2;-><init>(Lcom/android/settings/wifi/DeleteConnection$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/wifi/DeleteConnection$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/DeleteConnection$1$1;-><init>(Lcom/android/settings/wifi/DeleteConnection$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/DeleteConnection$1;->this$0:Lcom/android/settings/wifi/DeleteConnection;

    iget-object v0, v0, Lcom/android/settings/wifi/DeleteConnection;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_35
    return-void
.end method
