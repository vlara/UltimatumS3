.class Lcom/android/settings/wifi/AddConnection$1;
.super Ljava/lang/Object;
.source "AddConnection.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AddConnection;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AddConnection;

.field final synthetic val$add_conn_name:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AddConnection;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/wifi/AddConnection$1;->this$0:Lcom/android/settings/wifi/AddConnection;

    iput-object p2, p0, Lcom/android/settings/wifi/AddConnection$1;->val$add_conn_name:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1f

    const/16 v2, 0x42

    if-ne p2, v2, :cond_1f

    iget-object v2, p0, Lcom/android/settings/wifi/AddConnection$1;->this$0:Lcom/android/settings/wifi/AddConnection;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/AddConnection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/wifi/AddConnection$1;->val$add_conn_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method
