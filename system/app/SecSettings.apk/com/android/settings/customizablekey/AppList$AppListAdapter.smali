.class public Lcom/android/settings/customizablekey/AppList$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/customizablekey/AppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
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
.field final synthetic this$0:Lcom/android/settings/customizablekey/AppList;


# direct methods
.method public constructor <init>(Lcom/android/settings/customizablekey/AppList;Landroid/content/Context;IILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->this$0:Lcom/android/settings/customizablekey/AppList;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    iget-object v3, p0, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->this$0:Lcom/android/settings/customizablekey/AppList;

    invoke-virtual {v3}, Lcom/android/settings/customizablekey/AppList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040061

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v3, 0x7f0a012f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0a0006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->this$0:Lcom/android/settings/customizablekey/AppList;

    #getter for: Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings/customizablekey/AppList;->access$000(Lcom/android/settings/customizablekey/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_47

    invoke-virtual {p0, p1}, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->this$0:Lcom/android/settings/customizablekey/AppList;

    #getter for: Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings/customizablekey/AppList;->access$000(Lcom/android/settings/customizablekey/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_47
    invoke-virtual {p0, p1}, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->this$0:Lcom/android/settings/customizablekey/AppList;

    #getter for: Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings/customizablekey/AppList;->access$000(Lcom/android/settings/customizablekey/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_6e

    invoke-virtual {p0, p1}, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->this$0:Lcom/android/settings/customizablekey/AppList;

    #getter for: Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings/customizablekey/AppList;->access$000(Lcom/android/settings/customizablekey/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6e
    return-object p2
.end method
