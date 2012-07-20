.class public Lcom/android/settings/net/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUidDetailCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/net/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public declared-synchronized clearCache()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUidDetail(IZ)Lcom/android/settings/net/UidDetail;
    .registers 17

    monitor-enter p0

    :try_start_1
    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/net/UidDetail;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_68

    if-eqz v1, :cond_e

    move-object v3, v1

    :goto_c
    monitor-exit p0

    return-object v3

    :cond_e
    if-nez p2, :cond_12

    const/4 v3, 0x0

    goto :goto_c

    :cond_12
    :try_start_12
    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v3, Lcom/android/settings/net/UidDetail;

    invoke-direct {v3}, Lcom/android/settings/net/UidDetail;-><init>()V

    invoke-virtual {v10, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    sparse-switch p1, :sswitch_data_fa

    invoke-virtual {v10, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b7

    array-length v6, v9
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_68

    :goto_39
    const/4 v12, 0x1

    if-ne v6, v12, :cond_b9

    const/4 v12, 0x0

    :try_start_3d
    aget-object v12, v9, v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_54
    .catchall {:try_start_3d .. :try_end_54} :catchall_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_54} :catch_f6

    :cond_54
    :goto_54
    :try_start_54
    iget-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_62

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    :cond_62
    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_68

    goto :goto_c

    :catchall_68
    move-exception v12

    monitor-exit p0

    throw v12

    :sswitch_6b
    const v12, 0x7f0d05e8

    :try_start_6e
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c

    :sswitch_80
    const v12, 0x7f0d06ee

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_c

    :sswitch_96
    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v12, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_b5
    .catchall {:try_start_6e .. :try_end_b5} :catchall_68

    goto/16 :goto_c

    :cond_b7
    const/4 v6, 0x0

    goto :goto_39

    :cond_b9
    const/4 v12, 0x1

    if-le v6, v12, :cond_54

    :try_start_bc
    new-array v12, v6, [Ljava/lang/CharSequence;

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    const/4 v4, 0x0

    :goto_c1
    if-ge v4, v6, :cond_54

    aget-object v8, v9, v4

    const/4 v12, 0x0

    invoke-virtual {v10, v8, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v10, v8, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v12, v3, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4

    iget v12, v7, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v12, :cond_f3

    iget v12, v7, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v8, v12, v13}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_f3
    .catchall {:try_start_bc .. :try_end_f3} :catchall_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bc .. :try_end_f3} :catch_f6

    :cond_f3
    add-int/lit8 v4, v4, 0x1

    goto :goto_c1

    :catch_f6
    move-exception v12

    goto/16 :goto_54

    nop

    :sswitch_data_fa
    .sparse-switch
        -0x5 -> :sswitch_96
        -0x4 -> :sswitch_80
        0x3e8 -> :sswitch_6b
    .end sparse-switch
.end method
