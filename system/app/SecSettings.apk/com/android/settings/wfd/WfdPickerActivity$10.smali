.class Lcom/android/settings/wfd/WfdPickerActivity$10;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->createErrorHandlingDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/16 v2, 0xd

    const-string v0, "WfdPickerActivity"

    const-string v1, "createErrorHandlingDialog ok is clicked.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3200(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v0

    if-eq v0, v2, :cond_19

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3200(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1e

    :cond_19
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2600(Lcom/android/settings/wfd/WfdPickerActivity;)V

    :cond_1e
    return-void
.end method
