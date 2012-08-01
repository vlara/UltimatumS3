.class Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 117
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)I

    move-result v3

    if-ge v2, v3, :cond_a4

    .line 119
    :try_start_15
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2d

    .line 120
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_2d} :catch_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_2d} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_2d} :catch_48

    .line 117
    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 122
    :catch_30
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v3, "systemui/quicksettingpanel"

    const-string v4, "NoSuchMethodException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2d

    .line 125
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_3c
    move-exception v1

    .line 126
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "systemui/quicksettingpanel"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2d

    .line 128
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_48
    move-exception v1

    .line 129
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "systemui/quicksettingpanel"

    const-string v4, "InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2d

    .line 133
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v2           #i:I
    :cond_54
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 134
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5d
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)I

    move-result v3

    if-ge v2, v3, :cond_a4

    .line 136
    :try_start_65
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_7d

    .line 137
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catch Ljava/lang/IllegalAccessException; {:try_start_65 .. :try_end_7d} :catch_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_7d} :catch_8c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_65 .. :try_end_7d} :catch_98

    .line 134
    :cond_7d
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 139
    :catch_80
    move-exception v1

    .line 140
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v3, "systemui/quicksettingpanel"

    const-string v4, "IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_7d

    .line 142
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_8c
    move-exception v1

    .line 143
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "systemui/quicksettingpanel"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_7d

    .line 145
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_98
    move-exception v1

    .line 146
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "systemui/quicksettingpanel"

    const-string v4, "InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_7d

    .line 151
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v2           #i:I
    :cond_a4
    return-void
.end method
