.class public Lcom/android/settings/encryption/EncryptionPreferenceManager;
.super Ljava/lang/Object;
.source "EncryptionPreferenceManager.java"


# static fields
.field private static final DIR_ENCRYPTION:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isExternalSDRemovable()Z
    .registers 8

    iget-object v5, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mContext:Landroid/content/Context;

    const-string v6, "storage"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    const/4 v0, 0x0

    :goto_f
    array-length v5, v3

    if-ge v0, v5, :cond_2d

    aget-object v2, v3, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2a

    const-string v5, "sd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v5, 0x1

    :goto_29
    return v5

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2d
    const/4 v5, 0x0

    goto :goto_29
.end method


# virtual methods
.method public isSDcardEncryptionPossible()Z
    .registers 2

    sget-boolean v0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->DIR_ENCRYPTION:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isExternalSDRemovable()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
