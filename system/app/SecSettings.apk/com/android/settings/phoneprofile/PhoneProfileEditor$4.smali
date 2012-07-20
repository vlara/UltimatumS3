.class Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;
.super Ljava/lang/Object;
.source "PhoneProfileEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/phoneprofile/PhoneProfileEditor;->showErrorMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I
    invoke-static {v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$100(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_22

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I
    invoke-static {v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$100(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    invoke-virtual {v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_22
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    invoke-virtual {v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    return-void
.end method
