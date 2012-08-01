.class public Lcom/wanam/systemui/quickpanel/ShutdownButton;
.super Lcom/wanam/systemui/quickpanel/PowerButton;
.source "ShutdownButton.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleShutdown"

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/ShutdownButton;->mType:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/wanam/systemui/quickpanel/ShutdownButton;->mState:I

    return-void
.end method

.method private animateCollapse(Landroid/content/Context;)V
    .registers 4

    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    return-void
.end method

.method private shutdown()V
    .registers 6

    iget-object v3, p0, Lcom/wanam/systemui/quickpanel/ShutdownButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wanam/systemui/quickpanel/ShutdownButton;->animateCollapse(Landroid/content/Context;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x30b0039

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x30b0051

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    new-instance v4, Lcom/wanam/systemui/quickpanel/ShutdownButton$1;

    invoke-direct {v4, p0, v1}, Lcom/wanam/systemui/quickpanel/ShutdownButton$1;-><init>(Lcom/wanam/systemui/quickpanel/ShutdownButton;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x104

    new-instance v4, Lcom/wanam/systemui/quickpanel/ShutdownButton$2;

    invoke-direct {v4, p0}, Lcom/wanam/systemui/quickpanel/ShutdownButton$2;-><init>(Lcom/wanam/systemui/quickpanel/ShutdownButton;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected getText()I
    .registers 2

    const v0, 0x30b004f

    return v0
.end method

.method protected handleLongClick()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .registers 1

    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/ShutdownButton;->shutdown()V

    return-void
.end method

.method protected updateState()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/wanam/systemui/quickpanel/ShutdownButton;->mState:I

    const v0, 0x302008f

    iput v0, p0, Lcom/wanam/systemui/quickpanel/ShutdownButton;->mIcon:I

    return-void
.end method
