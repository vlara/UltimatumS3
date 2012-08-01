.class Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanam/systemui/quickpanel/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;


# direct methods
.method private constructor <init>(Lcom/wanam/systemui/quickpanel/PowerWidget;)V
    .registers 2

    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanam/systemui/quickpanel/PowerWidget;Lcom/wanam/systemui/quickpanel/PowerWidget$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/wanam/systemui/quickpanel/PowerWidget;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->setupWidget()V

    :goto_11
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->updateWidget()V

    return-void

    :cond_17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    #calls: Lcom/wanam/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V
    invoke-static {v0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->access$100(Lcom/wanam/systemui/quickpanel/PowerWidget;)V

    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->setupWidget()V

    goto :goto_11

    :cond_2e
    invoke-static {p1, p2}, Lcom/wanam/systemui/quickpanel/PowerButton;->handleOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_11
.end method
