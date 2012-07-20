.class public Lcom/sec/android/app/sysscope/service/SysScopeVerifier;
.super Ljava/lang/Object;
.source "SysScopeVerifier.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->mContext:Landroid/content/Context;

    return-void
.end method

.method private parseScopeApk(Ljava/lang/String;)Z
    .registers 16

    const/4 v10, 0x0

    :try_start_1
    const-string v11, "SHA-1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    check-cast v1, [Ljava/security/cert/Certificate;

    const/16 v11, 0x2000

    new-array v9, v11, [B

    new-instance v0, Ljava/util/jar/JarFile;

    const/4 v11, 0x1

    invoke-direct {v0, p1, v11}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    :cond_19
    :goto_19
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-nez v11, :cond_21

    const/4 v10, 0x1

    :goto_20
    return v10

    :cond_21
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/JarEntry;

    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_19

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v0, v7}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    const/4 v8, 0x0

    :goto_3a
    const/4 v11, 0x0

    array-length v12, v9

    invoke-virtual {v6, v9, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v11, -0x1

    if-ne v8, v11, :cond_9b

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "META-INF/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_19

    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AndroidManifest.xml"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "resources.arsc"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "classes.dex"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7f} :catch_80
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_7f} :catch_a0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_7f} :catch_bc

    goto :goto_19

    :catch_80
    move-exception v4

    const-string v11, "SysScopeVerifier"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_20

    :cond_9b
    const/4 v11, 0x0

    :try_start_9c
    invoke-virtual {v2, v9, v11, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_80
    .catch Ljava/lang/RuntimeException; {:try_start_9c .. :try_end_9f} :catch_a0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9c .. :try_end_9f} :catch_bc

    goto :goto_3a

    :catch_a0
    move-exception v4

    const-string v11, "SysScopeVerifier"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_20

    :catch_bc
    move-exception v4

    const-string v11, "SysScopeVerifier"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_20
.end method

.method private verifyWithPmKey()Z
    .registers 4

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "com.sec.android.app.sysscope"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method final verifySysScopeService()Z
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string v3, "/data/app/com.sec.android.app.sysscope-1.apk"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v0, "/data/app/com.sec.android.app.sysscope-1.apk"

    :goto_11
    invoke-direct {p0, v0}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->parseScopeApk(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "SysScopeVerifier"

    const-string v4, "parse error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return v2

    :cond_1f
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/app/com.sec.android.app.sysscope-2.apk"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2f

    const-string v0, "/data/app/com.sec.android.app.sysscope-2.apk"

    goto :goto_11

    :cond_2f
    const-string v0, "/system/app/SysScope.apk"

    goto :goto_11

    :cond_32
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->verifyWithPmKey()Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "SysScopeVerifier"

    const-string v4, "verifyWithPmKey error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_40
    const/4 v2, 0x1

    goto :goto_1e
.end method
