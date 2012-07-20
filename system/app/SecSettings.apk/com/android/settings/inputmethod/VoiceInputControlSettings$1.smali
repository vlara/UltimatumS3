.class Lcom/android/settings/inputmethod/VoiceInputControlSettings$1;
.super Landroid/database/ContentObserver;
.source "VoiceInputControlSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/VoiceInputControlSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/VoiceInputControlSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/VoiceInputControlSettings;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings$1;->this$0:Lcom/android/settings/inputmethod/VoiceInputControlSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    const-string v0, "VoiceInputControlSettings"

    const-string v1, "onChange() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
