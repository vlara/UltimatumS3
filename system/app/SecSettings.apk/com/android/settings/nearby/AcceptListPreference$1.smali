.class Lcom/android/settings/nearby/AcceptListPreference$1;
.super Ljava/lang/Object;
.source "AcceptListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nearby/AcceptListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/AcceptListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/AcceptListPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/nearby/AcceptListPreference$1;->this$0:Lcom/android/settings/nearby/AcceptListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const-string v0, "AllshareSetting"

    const-string v1, "AcceptListPreference: No List Items: OK"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
