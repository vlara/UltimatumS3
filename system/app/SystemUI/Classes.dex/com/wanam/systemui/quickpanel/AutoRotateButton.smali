.class public Lcom/wanam/systemui/quickpanel/AutoRotateButton;
.super Lcom/wanam/systemui/quickpanel/PowerButton;
.source "AutoRotateButton.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wanam/systemui/quickpanel/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/wanam/systemui/quickpanel/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleAutoRotate"

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/AutoRotateButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getOrientationState(Landroid/content/Context;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/wanam/systemui/quickpanel/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .registers 2

    const v0, 0x30b0045

    return v0
.end method

.method protected handleLongClick()Z
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/AutoRotateButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .registers 5

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/AutoRotateButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wanam/systemui/quickpanel/AutoRotateButton;->getOrientationState(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_16
    return-void

    :cond_17
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_16
.end method

.method protected updateState()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/AutoRotateButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wanam/systemui/quickpanel/AutoRotateButton;->getOrientationState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_15

    const v0, 0x3020084

    iput v0, p0, Lcom/wanam/systemui/quickpanel/AutoRotateButton;->mIcon:I

    iput v1, p0, Lcom/wanam/systemui/quickpanel/AutoRotateButton;->mState:I

    :goto_14
    return-void

    :cond_15
    const v0, 0x3020083

    iput v0, p0, Lcom/wanam/systemui/quickpanel/AutoRotateButton;->mIcon:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/wanam/systemui/quickpanel/AutoRotateButton;->mState:I

    goto :goto_14
.end method
