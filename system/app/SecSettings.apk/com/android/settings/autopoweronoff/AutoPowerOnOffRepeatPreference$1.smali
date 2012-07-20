.class Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference$1;
.super Ljava/lang/Object;
.source "AutoPowerOnOffRepeatPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference$1;->this$0:Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    #getter for: Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mNewDaysOfWeek:Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    invoke-static {v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;->access$000(Lcom/android/settings/autopoweronoff/AutoPowerOnOffRepeatPreference;)Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->set(IZ)V

    return-void
.end method
