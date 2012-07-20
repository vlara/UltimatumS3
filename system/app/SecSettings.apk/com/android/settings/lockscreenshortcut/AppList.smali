.class public Lcom/android/settings/lockscreenshortcut/AppList;
.super Landroid/app/ListActivity;
.source "AppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;,
        Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;,
        Lcom/android/settings/lockscreenshortcut/AppList$ViewHolder;
    }
.end annotation


# instance fields
.field private mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

.field private mClickedViewIndex:I

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfSavedShortcut:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSetedShortcutList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    iput v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcutList:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/lockscreenshortcut/AppList;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/lockscreenshortcut/AppList;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 17

    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/AppList;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/AppList;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v0, "shortcut_app_list"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v0, "num_of_shortcut"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    const-string v0, "clicked_view_index"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    iget v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_37

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    :cond_37
    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    :goto_3a
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    if-ge v8, v0, :cond_52

    move v13, v9

    const/16 v0, 0x3b

    invoke-virtual {v14, v0, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcutList:[Ljava/lang/String;

    invoke-virtual {v14, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_52
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/AppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x20

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    new-instance v7, Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;

    invoke-direct {v7, p0}, Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;-><init>(Lcom/android/settings/lockscreenshortcut/AppList;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v8, 0x0

    :goto_75
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    if-ge v8, v0, :cond_9d

    const/4 v11, 0x0

    :goto_7a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_9a

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcutList:[Ljava/lang/String;

    aget-object v1, v0, v8

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v5, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_97
    add-int/lit8 v11, v11, 0x1

    goto :goto_7a

    :cond_9a
    add-int/lit8 v8, v8, 0x1

    goto :goto_75

    :cond_9d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    const/4 v8, 0x0

    :goto_a5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_c9

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_a5

    :cond_c9
    new-instance v0, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    const v3, 0x7f040061

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;-><init>(Lcom/android/settings/lockscreenshortcut/AppList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v12

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v12, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v12, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "AppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " shortcut selected : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "selected_app"

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "clicked_view_index"

    iget v2, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/lockscreenshortcut/AppList;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/AppList;->finish()V

    return-void
.end method
