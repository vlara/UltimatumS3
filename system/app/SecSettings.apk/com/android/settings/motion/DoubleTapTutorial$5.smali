.class Lcom/android/settings/motion/DoubleTapTutorial$5;
.super Ljava/lang/Object;
.source "DoubleTapTutorial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/DoubleTapTutorial;->showRetryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/DoubleTapTutorial;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/DoubleTapTutorial;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/motion/DoubleTapTutorial$5;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial$5;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    invoke-virtual {v0}, Lcom/android/settings/motion/DoubleTapTutorial;->finish()V

    return-void
.end method
