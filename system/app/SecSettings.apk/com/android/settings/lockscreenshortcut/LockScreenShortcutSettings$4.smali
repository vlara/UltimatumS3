.class Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$4;
.super Ljava/lang/Object;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


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

    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$4;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 6

    const v2, 0x7f020299

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    :goto_d
    :pswitch_d
    const/4 v1, 0x1

    return v1

    :pswitch_f
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$4;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #calls: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->changeShortCut(Landroid/widget/ImageView;)V
    invoke-static {v1, v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$900(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/widget/ImageView;)V

    goto :goto_d

    :pswitch_18
    const v1, 0x7f0201ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    :pswitch_1f
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    nop

    :pswitch_data_24
    .packed-switch 0x3
        :pswitch_f
        :pswitch_d
        :pswitch_18
        :pswitch_1f
    .end packed-switch
.end method
