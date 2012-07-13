.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;
.super Landroid/os/Handler;
.source "TabletStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1096
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "m"

    .prologue
    .line 1098
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1360
    :cond_0
    :goto_0
    return-void

    .line 1102
    :sswitch_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-ltz v3, :cond_0

    .line 1103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v9

    .line 1105
    .local v9, N:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-nez v3, :cond_1

    .line 1106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    if-ltz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    if-ge v3, v9, :cond_1

    .line 1107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    add-int/lit8 v4, v9, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v5, v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v11

    .line 1108
    .local v11, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setBackgroundColor(I)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, -0x1

    iput v4, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    .line 1110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekKey:Landroid/os/IBinder;

    .line 1114
    .end local v11           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 1115
    .local v16, peekIndex:I
    move/from16 v0, v16

    if-ge v0, v9, :cond_0

    .line 1117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v11, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1121
    .restart local v11       #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_1
    new-instance v10, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    iget-object v4, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v5, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {v10, v3, v4, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 1125
    .local v10, copy:Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekRow:Landroid/view/ViewGroup;

    #calls: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    invoke-static {v3, v10, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    .line 1127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_2

    .line 1128
    iget-object v3, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    :cond_2
    iget-object v3, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const v4, 0x20ffffff

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setBackgroundColor(I)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekRow:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekRow:Landroid/view/ViewGroup;

    iget-object v4, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->setVisibility(I)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    move/from16 v0, v16

    iput v0, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    iput-object v4, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekKey:Landroid/os/IBinder;

    goto/16 :goto_0

    .line 1117
    .end local v10           #copy:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v11           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    add-int/lit8 v4, v9, -0x1

    sub-int v4, v4, v16

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v11

    goto :goto_1

    .line 1159
    .end local v9           #N:I
    .end local v16           #peekIndex:I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->setVisibility(I)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekRow:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v9

    .line 1163
    .restart local v9       #N:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    if-ltz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    if-ge v3, v9, :cond_4

    .line 1164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v11, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1168
    .restart local v11       #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_2
    iget-object v3, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setBackgroundColor(I)V

    .line 1171
    .end local v11           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, -0x1

    iput v4, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    .line 1172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekKey:Landroid/os/IBinder;

    goto/16 :goto_0

    .line 1164
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    add-int/lit8 v4, v9, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v5, v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v11

    goto :goto_2

    .line 1176
    .end local v9           #N:I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setQuickSettingsStartOffset()V

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->syncBrightness()V

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    goto/16 :goto_0

    .line 1194
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1201
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    goto/16 :goto_0

    .line 1207
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    goto/16 :goto_0

    .line 1213
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->openPanel()V

    goto/16 :goto_0

    .line 1217
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->closePanel(Z)V

    goto/16 :goto_0

    .line 1221
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->openPanel()V

    goto/16 :goto_0

    .line 1225
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->closePanel()V

    goto/16 :goto_0

    .line 1229
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$872(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I

    .line 1232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #calls: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    goto/16 :goto_0

    .line 1236
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$876(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I

    .line 1241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #calls: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    goto/16 :goto_0

    .line 1245
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v3, :cond_0

    .line 1246
    const-string v3, "TabletStatusBar"

    const-string v4, "opening mini mode apps panel"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    const/16 v4, 0x425

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1258
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1265
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarContainerView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    .line 1280
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v3, :cond_0

    .line 1281
    const-string v3, "TabletStatusBar"

    const-string v4, "closing mini mode apps panel"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1284
    .local v1, now:J
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 1285
    .local v12, ev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1295
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1303
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f0f0055

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 1304
    .local v15, miniAppPanelContainer:Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 1305
    .local v13, miniAppItemCount:I
    add-int/lit8 v3, v13, -0x1

    mul-int/lit8 v14, v3, 0x28

    .line 1307
    .local v14, miniAppItemHideAnimDelay:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    int-to-long v4, v14

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    int-to-long v4, v14

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarContainerView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    .line 1357
    .end local v1           #now:J
    .end local v12           #ev:Landroid/view/MotionEvent;
    .end local v13           #miniAppItemCount:I
    .end local v14           #miniAppItemHideAnimDelay:I
    .end local v15           #miniAppPanelContainer:Landroid/view/ViewGroup;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    goto/16 :goto_0

    .line 1297
    .restart local v1       #now:J
    .restart local v12       #ev:Landroid/view/MotionEvent;
    :catch_0
    move-exception v3

    goto/16 :goto_4

    .line 1296
    :catch_1
    move-exception v3

    goto/16 :goto_4

    .line 1260
    .end local v1           #now:J
    .end local v12           #ev:Landroid/view/MotionEvent;
    :catch_2
    move-exception v3

    goto/16 :goto_3

    .line 1259
    :catch_3
    move-exception v3

    goto/16 :goto_3

    .line 1098
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_1
        0x3fc -> :sswitch_4
        0x3fd -> :sswitch_5
        0x406 -> :sswitch_a
        0x407 -> :sswitch_b
        0x410 -> :sswitch_6
        0x411 -> :sswitch_7
        0x41a -> :sswitch_8
        0x41b -> :sswitch_9
        0x424 -> :sswitch_c
        0x425 -> :sswitch_d
        0x7d0 -> :sswitch_e
    .end sparse-switch
.end method
