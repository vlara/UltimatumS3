.class Lcom/android/settings/wfd/WfdPickerActivity$9;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->createWfdTerminateDialog()Landroid/app/AlertDialog;
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

    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$9;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const-string v0, "WfdPickerActivity"

    const-string v1, "createWfdTerminateDialog ok is clicked.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
