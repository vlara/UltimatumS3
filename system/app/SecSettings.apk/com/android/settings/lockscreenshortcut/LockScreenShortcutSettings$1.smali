.class Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;
.super Ljava/lang/Object;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z
    invoke-static {v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$000(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    const/4 v6, 0x1

    #setter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z
    invoke-static {v5, v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$002(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.lockscreenshortcut.AppList"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, ""

    const/4 v1, 0x0

    :goto_1e
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I
    invoke-static {v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v5

    if-ge v1, v5, :cond_5d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$200(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_5d
    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_5f
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I
    invoke-static {v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v5

    if-ge v0, v5, :cond_77

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$300(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    :cond_77
    const-string v5, "clicked_view_index"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "shortcut_app_list"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "num_of_shortcut"

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    const/16 v6, 0x65

    invoke-virtual {v5, v2, v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_8

    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f
.end method
