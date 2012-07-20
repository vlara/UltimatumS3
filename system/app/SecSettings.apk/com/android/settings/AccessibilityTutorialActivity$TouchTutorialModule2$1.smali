.class Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2$1;
.super Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;
.source "AccessibilityTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;-><init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;Landroid/content/Context;II)V
    .registers 5

    iput-object p1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2$1;->this$0:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule2;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method protected populateView(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p3, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
