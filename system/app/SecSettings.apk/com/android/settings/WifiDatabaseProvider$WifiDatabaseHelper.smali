.class Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WifiDatabaseProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WifiDatabaseProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiDatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "WifiLocation.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public deleteAll()I
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "mapping"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteEntry(J)I
    .registers 7

    invoke-virtual {p0}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "mapping"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getAllEntries()Landroid/database/Cursor;
    .registers 10

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "mapping"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "ssid"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "cellid"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "bssid"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "latitude"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "address"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "provider"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "profile"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "longtitude"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_46

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_46
    return-object v8
.end method

.method public getEntry(J)Landroid/database/Cursor;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "mapping"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "ssid"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "cellid"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "bssid"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "latitude"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "address"

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string v6, "provider"

    aput-object v6, v3, v4

    const/4 v4, 0x7

    const-string v6, "profile"

    aput-object v6, v3, v4

    const/16 v4, 0x8

    const-string v6, "longtitude"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_59

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_59
    return-object v10
.end method

.method public insertEntry(Landroid/content/ContentValues;)J
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "mapping"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE mapping (_id INTEGER PRIMARY KEY AUTOINCREMENT, ssid TEXT, cellid TEXT, bssid TEXT, latitude TEXT, address TEXT, provider TEXT, profile TEXT, longtitude TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    const-string v0, "DROP TABLE IF EXISTS mapping"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public updateEntry(JLandroid/content/ContentValues;)I
    .registers 8

    invoke-virtual {p0}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "mapping"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
