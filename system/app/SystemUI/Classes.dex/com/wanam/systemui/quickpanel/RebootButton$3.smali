.class Lcom/wanam/systemui/quickpanel/RebootButton$3;
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


# direct methods
.method constructor <init>(Lcom/wanam/systemui/quickpanel/RebootButton;)V
    .registers 2

    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/RebootButton$3;->this$0:Lcom/wanam/systemui/quickpanel/RebootButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
