.class Lcom/android/settings/HomeSettings$1;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HomeSettings;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HomeSettings;

.field final synthetic val$info:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/HomeSettings;Landroid/content/pm/ResolveInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/HomeSettings$1;->this$0:Lcom/android/settings/HomeSettings;

    iput-object p2, p0, Lcom/android/settings/HomeSettings$1;->val$info:Landroid/content/pm/ResolveInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/HomeSettings$1;->this$0:Lcom/android/settings/HomeSettings;

    iget-object v1, p0, Lcom/android/settings/HomeSettings$1;->val$info:Landroid/content/pm/ResolveInfo;

    #calls: Lcom/android/settings/HomeSettings;->changeHome(Landroid/content/pm/ResolveInfo;)V
    invoke-static {v0, v1}, Lcom/android/settings/HomeSettings;->access$000(Lcom/android/settings/HomeSettings;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method
