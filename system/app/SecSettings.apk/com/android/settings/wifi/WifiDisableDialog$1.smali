.class Lcom/android/settings/wifi/WifiDisableDialog$1;
.super Ljava/lang/Object;
.source "WifiDisableDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDisableDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDisableDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDisableDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WifiDisableDialog$1;->this$0:Lcom/android/settings/wifi/WifiDisableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    const v8, 0x7f020203

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDisableDialog$1;->this$0:Lcom/android/settings/wifi/WifiDisableDialog;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiDisableDialog;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v1, "Wi-Fi Disabled"

    const-string v0, "Wi-Fi is automatically disabled"

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDisableDialog$1;->this$0:Lcom/android/settings/wifi/WifiDisableDialog;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDisableDialog$1;->this$0:Lcom/android/settings/wifi/WifiDisableDialog;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.wifi.LAUNCH_AUTO_CONNECTION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x3000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDisableDialog$1;->this$0:Lcom/android/settings/wifi/WifiDisableDialog;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiDisableDialog;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDisableDialog$1;->this$0:Lcom/android/settings/wifi/WifiDisableDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDisableDialog;->finish()V

    return-void
.end method
