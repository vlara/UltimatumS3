.class Lcom/android/settings/DebugIntentSender$1;
.super Ljava/lang/Object;
.source "DebugIntentSender.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DebugIntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DebugIntentSender;


# direct methods
.method constructor <init>(Lcom/android/settings/DebugIntentSender;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/DebugIntentSender$1;->this$0:Lcom/android/settings/DebugIntentSender;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    iget-object v5, p0, Lcom/android/settings/DebugIntentSender$1;->this$0:Lcom/android/settings/DebugIntentSender;

    #getter for: Lcom/android/settings/DebugIntentSender;->mSendBroadcastButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DebugIntentSender;->access$000(Lcom/android/settings/DebugIntentSender;)Landroid/widget/Button;

    move-result-object v5

    if-eq p1, v5, :cond_10

    iget-object v5, p0, Lcom/android/settings/DebugIntentSender$1;->this$0:Lcom/android/settings/DebugIntentSender;

    #getter for: Lcom/android/settings/DebugIntentSender;->mStartActivityButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DebugIntentSender;->access$100(Lcom/android/settings/DebugIntentSender;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_7c

    :cond_10
    iget-object v5, p0, Lcom/android/settings/DebugIntentSender$1;->this$0:Lcom/android/settings/DebugIntentSender;

    #getter for: Lcom/android/settings/DebugIntentSender;->mIntentField:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/settings/DebugIntentSender;->access$200(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/DebugIntentSender$1;->this$0:Lcom/android/settings/DebugIntentSender;

    #getter for: Lcom/android/settings/DebugIntentSender;->mDataField:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/settings/DebugIntentSender;->access$300(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/DebugIntentSender$1;->this$0:Lcom/android/settings/DebugIntentSender;

    #getter for: Lcom/android/settings/DebugIntentSender;->mAccountField:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/settings/DebugIntentSender;->access$400(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/DebugIntentSender$1;->this$0:Lcom/android/settings/DebugIntentSender;

    #getter for: Lcom/android/settings/DebugIntentSender;->mResourceField:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/settings/DebugIntentSender;->access$500(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5a

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_5a
    const-string v5, "account"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "resource"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/DebugIntentSender$1;->this$0:Lcom/android/settings/DebugIntentSender;

    #getter for: Lcom/android/settings/DebugIntentSender;->mSendBroadcastButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DebugIntentSender;->access$000(Lcom/android/settings/DebugIntentSender;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_7d

    iget-object v5, p0, Lcom/android/settings/DebugIntentSender$1;->this$0:Lcom/android/settings/DebugIntentSender;

    invoke-virtual {v5, v1}, Lcom/android/settings/DebugIntentSender;->sendBroadcast(Landroid/content/Intent;)V

    :goto_71
    iget-object v5, p0, Lcom/android/settings/DebugIntentSender$1;->this$0:Lcom/android/settings/DebugIntentSender;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/DebugIntentSender;->setResult(I)V

    iget-object v5, p0, Lcom/android/settings/DebugIntentSender$1;->this$0:Lcom/android/settings/DebugIntentSender;

    invoke-virtual {v5}, Lcom/android/settings/DebugIntentSender;->finish()V

    :cond_7c
    return-void

    :cond_7d
    iget-object v5, p0, Lcom/android/settings/DebugIntentSender$1;->this$0:Lcom/android/settings/DebugIntentSender;

    invoke-virtual {v5, v1}, Lcom/android/settings/DebugIntentSender;->startActivity(Landroid/content/Intent;)V

    goto :goto_71
.end method
