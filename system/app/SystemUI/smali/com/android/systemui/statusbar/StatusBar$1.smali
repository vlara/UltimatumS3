.class Lcom/android/systemui/statusbar/StatusBar$1;
.super Landroid/os/Handler;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/StatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/StatusBar;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/systemui/statusbar/StatusBar;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBar;->access$000(Lcom/android/systemui/statusbar/StatusBar;I)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
