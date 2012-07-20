.class Lcom/android/settings/wifi/DeleteConnection$1$1;
.super Ljava/lang/Object;
.source "DeleteConnection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/DeleteConnection$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/DeleteConnection$1;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/DeleteConnection$1;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/settings/wifi/DeleteConnection$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    const/4 v8, 0x0

    const-string v5, "DeleteConnection"

    const-string v6, "aps_to_forget != null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_9
    iget-object v5, p0, Lcom/android/settings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/settings/wifi/DeleteConnection$1;

    iget-object v5, v5, Lcom/android/settings/wifi/DeleteConnection$1;->this$0:Lcom/android/settings/wifi/DeleteConnection;

    iget-object v5, v5, Lcom/android/settings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_6a

    iget-object v5, p0, Lcom/android/settings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/settings/wifi/DeleteConnection$1;

    iget-object v5, v5, Lcom/android/settings/wifi/DeleteConnection$1;->this$0:Lcom/android/settings/wifi/DeleteConnection;

    iget-object v5, v5, Lcom/android/settings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_67

    const-string v5, "DeleteConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forgotten AP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/settings/wifi/DeleteConnection$1;

    iget-object v7, v7, Lcom/android/settings/wifi/DeleteConnection$1;->this$0:Lcom/android/settings/wifi/DeleteConnection;

    iget-object v7, v7, Lcom/android/settings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/settings/wifi/DeleteConnection$1;

    iget-object v5, v5, Lcom/android/settings/wifi/DeleteConnection$1;->this$0:Lcom/android/settings/wifi/DeleteConnection;

    iget-object v5, v5, Lcom/android/settings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v5, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "profile"

    iget-object v6, p0, Lcom/android/settings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/settings/wifi/DeleteConnection$1;

    iget-object v6, v6, Lcom/android/settings/wifi/DeleteConnection$1;->this$0:Lcom/android/settings/wifi/DeleteConnection;

    iget-object v6, v6, Lcom/android/settings/wifi/DeleteConnection;->Null:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/settings/wifi/DeleteConnection$1;

    iget-object v5, v5, Lcom/android/settings/wifi/DeleteConnection$1;->this$0:Lcom/android/settings/wifi/DeleteConnection;

    iget-object v5, v5, Lcom/android/settings/wifi/DeleteConnection;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v5, v4, v0, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_6a
    iget-object v5, p0, Lcom/android/settings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/settings/wifi/DeleteConnection$1;

    iget-object v5, v5, Lcom/android/settings/wifi/DeleteConnection$1;->this$0:Lcom/android/settings/wifi/DeleteConnection;

    invoke-virtual {v5}, Lcom/android/settings/wifi/DeleteConnection;->finish()V

    return-void
.end method
