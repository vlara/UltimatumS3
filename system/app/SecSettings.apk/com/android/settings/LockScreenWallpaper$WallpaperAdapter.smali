.class public Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/LockScreenWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/settings/LockScreenWallpaper;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z
    invoke-static {v0}, Lcom/android/settings/LockScreenWallpaper;->access$000(Lcom/android/settings/LockScreenWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x2

    goto :goto_9
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/16 v6, 0x8

    if-nez p2, :cond_105

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900a6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;

    invoke-direct {v1}, Lcom/android/settings/LockScreenWallpaper$ViewHolder;-><init>()V

    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x1020015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->mContext:Landroid/content/Context;

    const v5, 0x1030042

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_49
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_4c
    move v0, p1

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$000(Lcom/android/settings/LockScreenWallpaper;)Z

    move-result v3

    if-eqz v3, :cond_10d

    const/4 v2, 0x0

    :goto_56
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a5

    const-string v4, "com.sec.android.gallery3d"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_aa

    const-string v4, "com.sec.android.app.wallpaperchooser"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_aa

    const-string v4, "com.android.wallpaper.livepicker"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_101

    :cond_aa
    if-nez v0, :cond_ff

    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$300(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$300(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$400(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v3, v4, p1

    :cond_ff
    add-int/lit8 v0, v0, -0x1

    :cond_101
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_56

    :cond_105
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;

    goto/16 :goto_4c

    :cond_10d
    const/4 v2, 0x0

    :goto_10e
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a5

    const-string v4, "com.sec.android.gallery3d"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14a

    const-string v4, "com.sec.android.app.wallpaperchooser"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a1

    :cond_14a
    if-nez v0, :cond_19f

    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$300(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$300(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$400(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v3, v4, p1

    :cond_19f
    add-int/lit8 v0, v0, -0x1

    :cond_1a1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10e

    :cond_1a5
    return-object p2
.end method
