.class Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarHelpView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHelpView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    #getter for: Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mHelpViewOkButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 65
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    #getter for: Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mButtonHelpText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    #getter for: Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mNotificationHelpText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 68
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    #getter for: Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mHelpViewOkButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0800bf

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    #getter for: Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mButtonHelpText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f08009e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    #getter for: Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mNotificationHelpText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 72
    :cond_0
    return-void
.end method