.class public Lcom/android/settings/IntelligentHelp;
.super Landroid/app/Activity;
.source "IntelligentHelp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "IntelligentScreen"

    const-string v1, "onCreate-help"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f040056

    invoke-virtual {p0, v0}, Lcom/android/settings/IntelligentHelp;->setContentView(I)V

    return-void
.end method
