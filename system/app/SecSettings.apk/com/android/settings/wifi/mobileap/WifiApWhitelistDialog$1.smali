.class Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;
.super Ljava/lang/Object;
.source "WifiApWhitelistDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
