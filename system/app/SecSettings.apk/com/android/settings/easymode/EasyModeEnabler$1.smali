.class Lcom/android/settings/easymode/EasyModeEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "EasyModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/easymode/EasyModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/easymode/EasyModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/easymode/EasyModeEnabler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeEnabler$1;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.settings.EASYMODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "EasyModeEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.settings.EASYMODE_CHANGED, easy_mode state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v6, :cond_3c

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler$1;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/easymode/EasyModeEnabler;->access$000(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeEnabler$1;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/easymode/EasyModeEnabler;->access$000(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3b
.end method
