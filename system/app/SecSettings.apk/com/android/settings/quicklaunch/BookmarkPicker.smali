.class public Lcom/android/settings/quicklaunch/BookmarkPicker;
.super Landroid/app/ListActivity;
.source "BookmarkPicker.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# static fields
.field private static final sKeys:[Ljava/lang/String;

.field private static sLaunchIntent:Landroid/content/Intent;

.field private static final sResourceIds:[I

.field private static sShortcutIntent:Landroid/content/Intent;


# instance fields
.field private mDisplayMode:I

.field private mMyAdapter:Landroid/widget/SimpleAdapter;

.field private mResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TITLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RESOLVE_INFO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sKeys:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sResourceIds:[I

    return-void

    nop

    :array_18
    .array-data 0x4
        0xdt 0x0t 0xat 0x7ft
        0x3bt 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->fillResolveList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->fillAdapterList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->updateAdapterToUseNewLists(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/quicklaunch/BookmarkPicker;)Landroid/widget/SimpleAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mMyAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/quicklaunch/BookmarkPicker;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mMyAdapter:Landroid/widget/SimpleAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)Landroid/widget/SimpleAdapter;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->createResolveAdapter(Ljava/util/List;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mResolveList:Ljava/util/List;

    return-object p1
.end method

.method private createResolveAdapter(Ljava/util/List;)Landroid/widget/SimpleAdapter;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Landroid/widget/SimpleAdapter;"
        }
    .end annotation

    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f04001a

    sget-object v4, Lcom/android/settings/quicklaunch/BookmarkPicker;->sKeys:[Ljava/lang/String;

    sget-object v5, Lcom/android/settings/quicklaunch/BookmarkPicker;->sResourceIds:[I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v0, p0}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    return-object v0
.end method

.method private ensureIntents()V
    .registers 3

    sget-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sLaunchIntent:Landroid/content/Intent;

    if-nez v0, :cond_1c

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sLaunchIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sShortcutIntent:Landroid/content/Intent;

    :cond_1c
    return-void
.end method

.method private fillAdapterList(Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v3, :cond_29

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string v4, "TITLE"

    invoke-direct {p0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getResolveInfoTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "RESOLVE_INFO"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_29
    return-void
.end method

.method private fillResolveList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->ensureIntents()V

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    if-nez v1, :cond_19

    sget-object v1, Lcom/android/settings/quicklaunch/BookmarkPicker;->sLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    sget-object v1, Lcom/android/settings/quicklaunch/BookmarkPicker;->sShortcutIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_18
.end method

.method private finish(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v0, "com.android.settings.quicklaunch.TITLE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->finish()V

    return-void
.end method

.method private static getIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method private getResolveInfoTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_e
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private startShortcutActivity(Landroid/content/pm/ResolveInfo;)V
    .registers 4

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-static {p1, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateAdapterToUseNewLists(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/quicklaunch/BookmarkPicker$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/quicklaunch/BookmarkPicker$2;-><init>(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateListAndAdapter()V
    .registers 3

    new-instance v0, Lcom/android/settings/quicklaunch/BookmarkPicker$1;

    const-string v1, "data updater"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker$1;-><init>(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/quicklaunch/BookmarkPicker$1;->start()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    packed-switch p1, :pswitch_data_20

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_3

    :pswitch_b
    if-eqz p3, :cond_3

    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->finish(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_3

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->updateListAndAdapter()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0d055a

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108032e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v0, 0x7f0d055b

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080345

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v3
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v2, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p3, v2, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v2, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mResolveList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget v2, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    packed-switch v2, :pswitch_data_2e

    goto :goto_8

    :pswitch_17
    const-string v2, "android.intent.action.MAIN"

    invoke-static {v0, v2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getResolveInfoTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->finish(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_2a
    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->startShortcutActivity(Landroid/content/pm/ResolveInfo;)V

    goto :goto_8

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_2a
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_14

    :goto_9
    return v0

    :pswitch_a
    iput v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    :goto_c
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->updateListAndAdapter()V

    move v0, v1

    goto :goto_9

    :pswitch_11
    iput v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    goto :goto_c

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a
        :pswitch_11
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_b
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    if-eq v3, v1, :cond_17

    move v2, v1

    :cond_17
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v1

    :cond_1b
    move v0, v2

    goto :goto_b
.end method

.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a003b

    if-ne v1, v2, :cond_1c

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method
