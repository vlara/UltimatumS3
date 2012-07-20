.class public Lcom/android/settings/WifiDatabaseProvider;
.super Landroid/content/ContentProvider;
.source "WifiDatabaseProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private db:Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "content://com.android.settings.WifiDatabaseProvider/wifi_location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/WifiDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/settings/WifiDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings.WifiDatabaseProvider"

    const-string v2, "wifi_location"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/settings/WifiDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings.WifiDatabaseProvider"

    const-string v2, "wifi_location/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10

    sget-object v3, Lcom/android/settings/WifiDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_4c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_22
    iget-object v3, p0, Lcom/android/settings/WifiDatabaseProvider;->db:Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;->deleteAll()I

    move-result v0

    :goto_28
    invoke-virtual {p0}, Lcom/android/settings/WifiDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0

    :pswitch_35
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/settings/WifiDatabaseProvider;->db:Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;->deleteEntry(J)I

    move-result v0

    goto :goto_28

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_35
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9

    iget-object v3, p0, Lcom/android/settings/WifiDatabaseProvider;->db:Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {v3, p2}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;->insertEntry(Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1f

    sget-object v3, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/WifiDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object v2

    :cond_1f
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreate()Z
    .registers 3

    new-instance v0, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/settings/WifiDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/WifiDatabaseProvider;->db:Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    sget-object v3, Lcom/android/settings/WifiDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_3a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown URI"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_11
    iget-object v3, p0, Lcom/android/settings/WifiDatabaseProvider;->db:Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;->getAllEntries()Landroid/database/Cursor;

    move-result-object v0

    :goto_17
    invoke-virtual {p0}, Lcom/android/settings/WifiDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0

    :pswitch_23
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/settings/WifiDatabaseProvider;->db:Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;->getEntry(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_17

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_23
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11

    sget-object v3, Lcom/android/settings/WifiDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_46

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_22
    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p0}, Lcom/android/settings/WifiDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0

    :pswitch_30
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/settings/WifiDatabaseProvider;->db:Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {v3, v1, v2, p2}, Lcom/android/settings/WifiDatabaseProvider$WifiDatabaseHelper;->updateEntry(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_23

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_22
        :pswitch_30
    .end packed-switch
.end method
