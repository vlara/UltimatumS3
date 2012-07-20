.class public Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirm;
.super Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;
.source "AutoPowerOnOffConfirm.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "AutoPowerConfirm"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    const-string v0, "AutoPowerConfirm"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->onStop()V

    return-void
.end method
