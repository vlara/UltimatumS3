.class public Lcom/wanam/systemui/quickpanel/GPSButton;
.super Lcom/wanam/systemui/quickpanel/PowerButton;
.source "GPSButton.java"


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

    sput-object v0, Lcom/wanam/systemui/quickpanel/GPSButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/wanam/systemui/quickpanel/GPSButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleGPS"

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/GPSButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
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

    sget-object v0, Lcom/wanam/systemui/quickpanel/GPSButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .registers 2

    const v0, 0x30b0047

    return v0
.end method

.method protected handleLongClick()Z
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/GPSButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .registers 6

    iget-object v3, p0, Lcom/wanam/systemui/quickpanel/GPSButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Lcom/wanam/systemui/quickpanel/GPSButton;->getGpsState(Landroid/content/Context;)Z

    move-result v1

    const-string v4, "gps"

    if-nez v1, :cond_17

    const/4 v3, 0x1

    :goto_13
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void

    :cond_17
    const/4 v3, 0x0

    goto :goto_13
.end method

.method protected updateState()V
    .registers 2

    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/GPSButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wanam/systemui/quickpanel/GPSButton;->getGpsState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    const v0, 0x302007f

    iput v0, p0, Lcom/wanam/systemui/quickpanel/GPSButton;->mIcon:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/wanam/systemui/quickpanel/GPSButton;->mState:I

    :goto_14
    return-void

    :cond_15
    const v0, 0x302007e

    iput v0, p0, Lcom/wanam/systemui/quickpanel/GPSButton;->mIcon:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/wanam/systemui/quickpanel/GPSButton;->mState:I

    goto :goto_14
.end method
