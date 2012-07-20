.class public Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockscreenshortcut/AppList;
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
.field final synthetic this$0:Lcom/android/settings/lockscreenshortcut/AppList;


# direct methods
.method public constructor <init>(Lcom/android/settings/lockscreenshortcut/AppList;Landroid/content/Context;IILjava/util/List;)V
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

    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/AppList;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/AppList;

    invoke-virtual {v2}, Lcom/android/settings/lockscreenshortcut/AppList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    if-nez p2, :cond_89

    const v2, 0x7f040061

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/settings/lockscreenshortcut/AppList$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/lockscreenshortcut/AppList$ViewHolder;-><init>()V

    const v2, 0x7f0a012f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/lockscreenshortcut/AppList$ViewHolder;->text:Landroid/widget/TextView;

    const v2, 0x7f0a0006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings/lockscreenshortcut/AppList$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2e
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/AppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/lockscreenshortcut/AppList;->access$000(Lcom/android/settings/lockscreenshortcut/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_57

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/AppList$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/AppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings/lockscreenshortcut/AppList;->access$000(Lcom/android/settings/lockscreenshortcut/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_57
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/AppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/settings/lockscreenshortcut/AppList;->access$100(Lcom/android/settings/lockscreenshortcut/AppList;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_88

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/AppList$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/AppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/settings/lockscreenshortcut/AppList;->access$100(Lcom/android/settings/lockscreenshortcut/AppList;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_88
    return-object p2

    :cond_89
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/lockscreenshortcut/AppList$ViewHolder;

    goto :goto_2e
.end method
