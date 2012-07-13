.class Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$5;
.super Ljava/lang/Object;
.source "AirplaneModeQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "unused"

    .prologue
    .line 185
    const-string v0, "systemui/quicksetting/QuickSettingButton"

    const-string v1, "onDismiss()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method
