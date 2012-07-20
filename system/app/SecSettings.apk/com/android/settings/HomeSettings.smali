.class public Lcom/android/settings/HomeSettings;
.super Landroid/app/ListFragment;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HomeSettings$HomeAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/HomeSettings$HomeAdapter;

.field private mCurrentHome:I

.field private mHomeApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/HomeSettings;Landroid/content/pm/ResolveInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/HomeSettings;->changeHome(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/HomeSettings;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/HomeSettings;->mHomeApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/HomeSettings;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/HomeSettings;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/HomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/HomeSettings;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:I

    return p1
.end method

.method private changeHome(Landroid/content/pm/ResolveInfo;)V
    .registers 11

    const-string v6, "HomeSettings"

    const-string v7, "change home"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Landroid/content/ComponentName;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_31
    iget-object v6, p0, Lcom/android/settings/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_66

    iget-object v6, p0, Lcom/android/settings/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v0, v4

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings/HomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63

    iget-object v6, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_66
    iget-object v6, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget v7, p1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-virtual {v6, v1, v7, v0, v5}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x80

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/settings/HomeSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private isPreffered(Ljava/lang/String;)Z
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 14

    const-string v2, "HomeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iget-object v2, p0, Lcom/android/settings/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget v2, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:I

    if-ne p3, v2, :cond_34

    :goto_33
    return-void

    :cond_34
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0a3a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/HomeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0a39

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/HomeSettings$1;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/HomeSettings$1;-><init>(Lcom/android/settings/HomeSettings;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_33
.end method

.method public onResume()V
    .registers 6

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    const v2, 0x10040

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HomeSettings;->mHomeApps:Ljava/util/List;

    new-instance v1, Lcom/android/settings/HomeSettings$HomeAdapter;

    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070024

    iget-object v4, p0, Lcom/android/settings/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/HomeSettings$HomeAdapter;-><init>(Lcom/android/settings/HomeSettings;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/HomeSettings;->mAdapter:Lcom/android/settings/HomeSettings$HomeAdapter;

    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mAdapter:Lcom/android/settings/HomeSettings$HomeAdapter;

    invoke-virtual {p0, v1}, Lcom/android/settings/HomeSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
