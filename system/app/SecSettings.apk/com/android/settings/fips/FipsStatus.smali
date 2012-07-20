.class public Lcom/android/settings/fips/FipsStatus;
.super Ljava/lang/Object;
.source "FipsStatus.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "secfips"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFipsStatus()I
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "rw.km_fips_status"

    const-string v11, "undefined"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/fips/FipsStatus;->nativeCheckKeyManagementModule()V

    const-string v10, "ro.secusefipsmode"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "false"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    const-string v9, "FipsStatus"

    const-string v10, "FIPS mode not enabled"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return v8

    :cond_24
    new-instance v4, Ljava/io/File;

    const-string v10, "/proc/sys/crypto"

    const-string v11, "fips_status"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_9d

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_e5

    const/4 v0, 0x0

    :try_start_3a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_d9
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_44} :catch_ad
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_44} :catch_c3

    :try_start_44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_4b} :catch_f3
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4b} :catch_f0

    move-result v10

    if-lez v10, :cond_97

    const/4 v6, 0x1

    :try_start_4f
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_ed
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_77
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_52} :catch_f3
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_f0

    move-result v10

    if-nez v10, :cond_75

    move v6, v8

    :goto_56
    :try_start_56
    const-string v8, "FipsStatus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FipsStatus: getFipsStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_56 .. :try_end_6e} :catchall_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_6e} :catch_f3
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_6e} :catch_f0

    if-eqz v1, :cond_73

    :try_start_70
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_92

    :cond_73
    :goto_73
    move v8, v6

    goto :goto_23

    :cond_75
    move v6, v9

    goto :goto_56

    :catch_77
    move-exception v2

    :try_start_78
    const-string v8, "FipsStatus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FipsStatus: exception while parsing status="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_78 .. :try_end_90} :catchall_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_90} :catch_f3
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_90} :catch_f0

    const/4 v6, 0x1

    goto :goto_56

    :catch_92
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_73

    :cond_97
    if-eqz v1, :cond_9c

    :try_start_99
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_a7

    :cond_9c
    move-object v0, v1

    :cond_9d
    :goto_9d
    const-string v8, "FipsStatus"

    const-string v10, "FipsStatus: getFipsStatus: returning with not in fip error"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    goto/16 :goto_23

    :catch_a7
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_9d

    :catch_ad
    move-exception v2

    :goto_ae
    :try_start_ae
    const-string v8, "FipsStatus"

    const-string v10, "FipsStatus: getFipsStatus: status file does not exist"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_ae .. :try_end_b8} :catchall_d9

    if-eqz v0, :cond_9d

    :try_start_ba
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_be

    goto :goto_9d

    :catch_be
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9d

    :catch_c3
    move-exception v2

    :goto_c4
    :try_start_c4
    const-string v8, "FipsStatus"

    const-string v10, "FipsStatus: getFipsStatus: exception while reading status file"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ce
    .catchall {:try_start_c4 .. :try_end_ce} :catchall_d9

    if-eqz v0, :cond_9d

    :try_start_d0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_9d

    :catch_d4
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9d

    :catchall_d9
    move-exception v8

    :goto_da
    if-eqz v0, :cond_df

    :try_start_dc
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_e0

    :cond_df
    :goto_df
    throw v8

    :catch_e0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_df

    :cond_e5
    const-string v8, "FipsStatus"

    const-string v10, "FipsStatus: getFipsStatus: unable to read status file"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    :catchall_ed
    move-exception v8

    move-object v0, v1

    goto :goto_da

    :catch_f0
    move-exception v2

    move-object v0, v1

    goto :goto_c4

    :catch_f3
    move-exception v2

    move-object v0, v1

    goto :goto_ae
.end method

.method private static native nativeCheckKeyManagementModule()V
.end method
