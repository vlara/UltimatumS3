.class public Lcom/android/settings/nearby/EditTextWatcher;
.super Ljava/lang/Object;
.source "EditTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 10

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    instance-of v4, v4, Landroid/app/AlertDialog;

    if-eqz v4, :cond_6d

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v2, :cond_20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x20

    if-ne v4, v6, :cond_1d

    add-int/lit8 v3, v3, 0x1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_20
    iget-object v4, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    check-cast v4, Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_6e

    if-eq v2, v3, :cond_6e

    const/4 v4, 0x1

    :goto_32
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v4, 0x37

    if-le v2, v4, :cond_6d

    const-string v4, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EditTextWatcher: Device Name Limit is 55. text length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v4, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0d093a

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_6d
    return-void

    :cond_6e
    move v4, v5

    goto :goto_32
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    return-void
.end method
