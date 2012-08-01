.class Lcom/wanam/systemui/quickpanel/ShutdownButton$2;
.super Ljava/lang/Object;
.source "ShutdownButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanam/systemui/quickpanel/ShutdownButton;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanam/systemui/quickpanel/ShutdownButton;


# direct methods
.method constructor <init>(Lcom/wanam/systemui/quickpanel/ShutdownButton;)V
    .registers 2

    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/ShutdownButton$2;->this$0:Lcom/wanam/systemui/quickpanel/ShutdownButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
