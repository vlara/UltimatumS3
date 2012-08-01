.class Lcom/wanam/systemui/quickpanel/PowerButton$2;
.super Ljava/lang/Object;
.source "PowerButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanam/systemui/quickpanel/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanam/systemui/quickpanel/PowerButton;


# direct methods
.method constructor <init>(Lcom/wanam/systemui/quickpanel/PowerButton;)V
    .registers 2

    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/PowerButton$2;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wanam/systemui/quickpanel/PowerButton;

    invoke-virtual {v3}, Lcom/wanam/systemui/quickpanel/PowerButton;->toggleState()V

    :cond_33
    invoke-static {}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$200()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-static {}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$200()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_40
    return-void
.end method
