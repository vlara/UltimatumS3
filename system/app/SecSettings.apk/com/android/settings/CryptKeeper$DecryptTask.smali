.class Lcom/android/settings/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    #calls: Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$000(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    if-nez v1, :cond_15

    const-string v2, "CryptKeeper"

    const-string v3, "Unable to get decrypt state properly"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    :try_start_16
    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_21

    move-result-object v2

    goto :goto_14

    :catch_21
    move-exception v0

    const-string v2, "CryptKeeper"

    const-string v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_14
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 8

    const/16 v3, 0x1e

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "CryptKeeper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failedAttempts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$102(I)I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const-class v2, Lcom/android/settings/CryptKeeper$Blank;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1}, Lcom/android/settings/CryptKeeper;->finish()V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    :goto_3c
    return-void

    :cond_3d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_50

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3c

    :cond_50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_6b

    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->access$202(I)I

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {}, Lcom/android/settings/CryptKeeper;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->setLockoutAttemptDeadline(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    #calls: Lcom/android/settings/CryptKeeper;->handleAttemptLockout(J)V
    invoke-static {v2, v0, v1}, Lcom/android/settings/CryptKeeper;->access$300(Lcom/android/settings/CryptKeeper;J)V

    goto :goto_3c

    :cond_6b
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f0d07cc

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_9a

    const v1, 0x7f0d069a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_8d
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    #getter for: Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$400(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_3c

    :cond_9a
    new-array v2, v5, [Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/settings/CryptKeeper;->access$100()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
