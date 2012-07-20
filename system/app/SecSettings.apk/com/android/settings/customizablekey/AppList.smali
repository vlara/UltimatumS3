.class public Lcom/android/settings/customizablekey/AppList;
.super Landroid/app/ListActivity;
.source "AppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/customizablekey/AppList$AlphaComparator;,
        Lcom/android/settings/customizablekey/AppList$AppListAdapter;
    }
.end annotation


# instance fields
.field private mAppListAdapter:Lcom/android/settings/customizablekey/AppList$AppListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private pressed_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/customizablekey/AppList;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/customizablekey/AppList;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/customizablekey/AppList;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v0, "pressed_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/customizablekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/customizablekey/AppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x20

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    new-instance v0, Lcom/android/settings/customizablekey/AppList$AppListAdapter;

    const v3, 0x7f040061

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/customizablekey/AppList$AppListAdapter;-><init>(Lcom/android/settings/customizablekey/AppList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/customizablekey/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "CustomizableKeyAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " app selected : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CustomizableKeyAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " app title : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "selected_app"

    iget-object v3, p0, Lcom/android/settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "selected_app_title"

    iget-object v3, p0, Lcom/android/settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "short"

    iget-object v4, p0, Lcom/android/settings/customizablekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    invoke-virtual {p0}, Lcom/android/settings/customizablekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "short_press_app"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/customizablekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "short_press_app_title"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_d4
    :goto_d4
    invoke-virtual {p0}, Lcom/android/settings/customizablekey/AppList;->finish()V

    return-void

    :cond_d8
    const-string v3, "long"

    iget-object v4, p0, Lcom/android/settings/customizablekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    invoke-virtual {p0}, Lcom/android/settings/customizablekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "long_press_app"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/customizablekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "long_press_app_title"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d4
.end method
