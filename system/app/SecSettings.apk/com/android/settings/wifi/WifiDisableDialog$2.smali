.class Lcom/android/settings/wifi/WifiDisableDialog$2;
.super Ljava/lang/Object;
.source "WifiDisableDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDisableDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDisableDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDisableDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WifiDisableDialog$2;->this$0:Lcom/android/settings/wifi/WifiDisableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDisableDialog$2;->this$0:Lcom/android/settings/wifi/WifiDisableDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDisableDialog;->finish()V

    return-void
.end method
