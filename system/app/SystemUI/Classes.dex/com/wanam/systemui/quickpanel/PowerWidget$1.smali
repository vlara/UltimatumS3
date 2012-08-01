.class Lcom/wanam/systemui/quickpanel/PowerWidget$1;
.super Ljava/lang/Object;
.source "PowerWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanam/systemui/quickpanel/PowerWidget;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;


# direct methods
.method constructor <init>(Lcom/wanam/systemui/quickpanel/PowerWidget;)V
    .registers 2

    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    #getter for: Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->access$200(Lcom/wanam/systemui/quickpanel/PowerWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_hide_onchange"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerWidget;

    #calls: Lcom/wanam/systemui/quickpanel/PowerWidget;->animateCollapse()V
    invoke-static {v0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->access$300(Lcom/wanam/systemui/quickpanel/PowerWidget;)V

    :cond_19
    return-void
.end method
