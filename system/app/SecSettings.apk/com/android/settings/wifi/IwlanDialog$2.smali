.class Lcom/android/settings/wifi/IwlanDialog$2;
.super Ljava/lang/Object;
.source "IwlanDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/IwlanDialog;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/IwlanDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/IwlanDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/IwlanDialog$2;->this$0:Lcom/android/settings/wifi/IwlanDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
