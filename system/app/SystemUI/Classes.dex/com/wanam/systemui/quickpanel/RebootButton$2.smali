.class Lcom/wanam/systemui/quickpanel/RebootButton$2;
.super Ljava/lang/Object;
.source "RebootButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanam/systemui/quickpanel/RebootButton;->reboot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanam/systemui/quickpanel/RebootButton;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/wanam/systemui/quickpanel/RebootButton;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/RebootButton$2;->this$0:Lcom/wanam/systemui/quickpanel/RebootButton;

    iput-object p2, p0, Lcom/wanam/systemui/quickpanel/RebootButton$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/RebootButton$2;->val$context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/RebootButton$2;->this$0:Lcom/wanam/systemui/quickpanel/RebootButton;

    #getter for: Lcom/wanam/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;
    invoke-static {v1}, Lcom/wanam/systemui/quickpanel/RebootButton;->access$000(Lcom/wanam/systemui/quickpanel/RebootButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
