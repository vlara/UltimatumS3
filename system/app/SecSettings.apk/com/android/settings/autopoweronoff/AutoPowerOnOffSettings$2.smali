.class Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;
.super Ljava/lang/Object;
.source "AutoPowerOnOffSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method
