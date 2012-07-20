.class Lcom/android/settings/CryptKeeper$8;
.super Landroid/os/CountDownTimer;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/CryptKeeper;->access$202(I)I

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f0a002a

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    #getter for: Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$400(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f0d07cc

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/CryptKeeper;->access$100()I

    move-result v2

    if-eqz v2, :cond_50

    invoke-static {}, Lcom/android/settings/CryptKeeper;->access$100()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_3a

    const v2, 0x7f0d069a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_36
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3a
    new-array v2, v5, [Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/settings/CryptKeeper;->access$100()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    :cond_50
    const v2, 0x7f0d0699

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_36
.end method

.method public onTick(J)V
    .registers 9

    const/4 v5, 0x0

    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    long-to-int v0, v3

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$202(I)I

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    const v4, 0x7f0a002a

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    #getter for: Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->access$400(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    const v4, 0x7f0d014d

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
