.class public Lcom/android/settings/LockScreenWallpaper;
.super Lcom/android/internal/app/AlertActivity;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LockScreenWallpaper$AlphaComparator;,
        Lcom/android/settings/LockScreenWallpaper$ViewHolder;,
        Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;
    }
.end annotation


# instance fields
.field private ItemName:[Ljava/lang/String;

.field private isTypeBoth:Z

.field private mDirectWallpaper:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private rList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    iput-boolean v1, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenWallpaper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockScreenWallpaper;)Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    const/4 v5, 0x1

    const-string v3, "com.sec.android.gallery3d"

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v3, :cond_21

    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.BothScreen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1d
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    :goto_20
    return-void

    :cond_21
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.LockScreen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1d

    :cond_29
    const-string v3, "com.android.wallpaper.livepicker"

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.wallpaper.livepicker"

    const-string v5, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_20

    :cond_4f
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v3, :cond_6e

    const-string v3, "SET_WALLPAPER_MODE"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_5e
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.wallpaperchooser"

    const-string v5, "com.sec.android.app.wallpaperchooser.WallpaperChooser"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_20

    :cond_6e
    const-string v3, "SET_WALLPAPER_MODE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockScreenWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "direct_wallpaper"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Direct"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDirectWallpaper : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "both"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_4d

    iget-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    if-eqz v3, :cond_4f

    :cond_4d
    iput-boolean v7, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    :cond_4f
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/settings/LockScreenWallpaper;)V

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0766

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v3, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;-><init>(Lcom/android/settings/LockScreenWallpaper;Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->setupAlert()V

    return-void
.end method
