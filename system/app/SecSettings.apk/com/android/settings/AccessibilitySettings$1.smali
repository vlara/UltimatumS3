.class Lcom/android/settings/AccessibilitySettings$1;
.super Landroid/os/Handler;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$1;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$1;->this$0:Lcom/android/settings/AccessibilitySettings;

    #calls: Lcom/android/settings/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$100(Lcom/android/settings/AccessibilitySettings;)V

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$1;->this$0:Lcom/android/settings/AccessibilitySettings;

    #calls: Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$200(Lcom/android/settings/AccessibilitySettings;)V

    return-void
.end method
