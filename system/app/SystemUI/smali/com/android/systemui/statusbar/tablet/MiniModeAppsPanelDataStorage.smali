.class public Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanelDataStorage;
.super Ljava/lang/Object;
.source "MiniModeAppsPanelDataStorage.java"


# static fields
.field private static final FILENAME:Ljava/lang/String; = "minimode"

.field public static final TAG:Ljava/lang/String; = "MiniModeAppsPanelDataStorage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/io/File;)[Ljava/lang/String;
    .locals 11
    .parameter "dir"

    .prologue
    .line 22
    new-instance v3, Ljava/io/File;

    const-string v9, "minimode"

    invoke-direct {v3, p0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .local v3, f:Ljava/io/File;
    const/4 v4, 0x0

    .line 24
    .local v4, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 26
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v8, strArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 30
    .end local v4           #fr:Ljava/io/FileReader;
    .local v5, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 33
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, s:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 34
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 36
    .end local v6           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 37
    .end local v5           #fr:Ljava/io/FileReader;
    .local v2, e:Ljava/lang/Exception;
    .restart local v4       #fr:Ljava/io/FileReader;
    :goto_1
    :try_start_3
    const-string v9, "MiniModeAppsPanelDataStorage"

    const-string v10, "minimode file does not exist."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 48
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 49
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 56
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_7

    .line 57
    const/4 v9, 0x0

    .line 62
    :goto_4
    return-object v9

    .line 41
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v6       #s:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 42
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 48
    :cond_3
    :goto_5
    if-eqz v5, :cond_4

    .line 49
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 53
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_3

    .line 44
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 45
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 51
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 52
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 54
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_3

    .line 44
    .end local v6           #s:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 51
    :catch_4
    move-exception v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 40
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 41
    :goto_6
    if-eqz v0, :cond_5

    .line 42
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 48
    :cond_5
    :goto_7
    if-eqz v4, :cond_6

    .line 49
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 53
    :cond_6
    :goto_8
    throw v9

    .line 44
    :catch_5
    move-exception v2

    .line 45
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 51
    .end local v2           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 52
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 60
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v7, v9, [Ljava/lang/String;

    .line 62
    .local v7, str:[Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    goto :goto_4

    .line 40
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v7           #str:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_6

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_6

    .line 36
    :catch_7
    move-exception v2

    goto :goto_1

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_1
.end method

.method public static store(Ljava/io/File;[Ljava/lang/String;)Z
    .locals 12
    .parameter "dir"
    .parameter "str"

    .prologue
    .line 66
    new-instance v4, Ljava/io/File;

    const-string v11, "minimode"

    invoke-direct {v4, p0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v4, f:Ljava/io/File;
    const/4 v5, 0x0

    .line 68
    .local v5, fw:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 70
    .local v1, bw:Ljava/io/BufferedWriter;
    const/4 v9, 0x1

    .line 73
    .local v9, returnValue:Z
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 74
    .end local v5           #fw:Ljava/io/FileWriter;
    .local v6, fw:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 76
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .local v2, bw:Ljava/io/BufferedWriter;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    :try_start_2
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v10, v0, v7

    .line 77
    .local v10, s:Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 76
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 85
    .end local v10           #s:Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 86
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 92
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 93
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 100
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v6           #fw:Ljava/io/FileWriter;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .restart local v5       #fw:Ljava/io/FileWriter;
    :cond_3
    :goto_2
    return v9

    .line 88
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    :catch_0
    move-exception v3

    .line 89
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 95
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 96
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 98
    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_2

    .line 80
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :catch_2
    move-exception v3

    .line 81
    .restart local v3       #e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    const/4 v9, 0x0

    .line 85
    if-eqz v1, :cond_4

    .line 86
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 92
    :cond_4
    :goto_4
    if-eqz v5, :cond_3

    .line 93
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 95
    :catch_3
    move-exception v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 88
    :catch_4
    move-exception v3

    .line 89
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 84
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 85
    :goto_5
    if-eqz v1, :cond_5

    .line 86
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 92
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 93
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 97
    :cond_6
    :goto_7
    throw v11

    .line 88
    :catch_5
    move-exception v3

    .line 89
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 95
    .end local v3           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v3

    .line 96
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 84
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_5

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catchall_2
    move-exception v11

    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_5

    .line 80
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_3

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_3
.end method
