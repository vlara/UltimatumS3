.class Lcom/android/settings/sleepmode/RepeatBtnGroup$1;
.super Ljava/lang/Object;
.source "RepeatBtnGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sleepmode/RepeatBtnGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sleepmode/RepeatBtnGroup;


# direct methods
.method constructor <init>(Lcom/android/settings/sleepmode/RepeatBtnGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup$1;->this$0:Lcom/android/settings/sleepmode/RepeatBtnGroup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup$1;->this$0:Lcom/android/settings/sleepmode/RepeatBtnGroup;

    iget-object v0, v0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mChangedListener:Lcom/android/settings/sleepmode/RepeatBtnGroup$OnChangedListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup$1;->this$0:Lcom/android/settings/sleepmode/RepeatBtnGroup;

    iget-object v0, v0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mChangedListener:Lcom/android/settings/sleepmode/RepeatBtnGroup$OnChangedListener;

    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup$1;->this$0:Lcom/android/settings/sleepmode/RepeatBtnGroup;

    invoke-interface {v0, v1}, Lcom/android/settings/sleepmode/RepeatBtnGroup$OnChangedListener;->onCheckChanged(Lcom/android/settings/sleepmode/RepeatBtnGroup;)V

    :cond_f
    return-void
.end method
