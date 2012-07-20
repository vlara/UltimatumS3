.class Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccessibilityTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilityTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDefaultHoverListener:Landroid/view/View$OnHoverListener;

.field private mHoverListener:Landroid/view/View$OnHoverListener;

.field private final mIconSize:I

.field protected final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->mIconSize:I

    iput p3, p0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->mTextViewResourceId:I

    new-instance v0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter$1;-><init>(Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->mDefaultHoverListener:Landroid/view/View$OnHoverListener;

    invoke-direct {p0}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->loadAllApps()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;)Landroid/view/View$OnHoverListener;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->mHoverListener:Landroid/view/View$OnHoverListener;

    return-object v0
.end method

.method private loadAllApps()V
    .registers 6

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public getLabel(I)Ljava/lang/CharSequence;
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->mDefaultHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v6, p0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->mTextViewResourceId:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->mIconSize:I

    iget v7, p0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->mIconSize:I

    invoke-virtual {v1, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v4, v2, v1}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->populateView(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-object v5
.end method

.method protected populateView(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0, p3, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->mHoverListener:Landroid/view/View$OnHoverListener;

    return-void
.end method
