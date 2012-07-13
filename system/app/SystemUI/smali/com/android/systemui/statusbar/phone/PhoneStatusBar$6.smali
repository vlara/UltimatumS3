.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 2906
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final mini(II)I
    .locals 0
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2908
    if-le p2, p1, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    .line 2911
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v10

    .line 2914
    :try_start_0
    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 2917
    .local v3, mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 2918
    const-string v9, "STATUSBAR-PhoneStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : Notification pkg [ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v12, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    iget-object v12, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v12, v12, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ticker [ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v12, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    iget-object v12, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v12, v12, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v12, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2914
    .end local v2           #i:I
    .end local v3           #mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    goto :goto_0

    .line 2922
    .restart local v2       #i:I
    .restart local v3       #mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v4

    .line 2924
    .local v4, numChildren:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v9}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    .line 2925
    .local v7, scrollTop:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v9}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    add-int v6, v7, v9

    .line 2926
    .local v6, scrollBottom:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2929
    .local v8, snapshot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v5, 0x0

    .line 2930
    .local v5, plusNotificationArea:I
    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v9, :cond_4

    .line 2932
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_2

    .line 2933
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v9

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v5, v9

    .line 2934
    const-string v9, "STATUSBAR-PhoneStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " mMiniConPile.getHeight() =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;
    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_3

    .line 2937
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v11

    add-int/2addr v9, v11

    add-int/2addr v5, v9

    .line 2938
    const-string v9, "STATUSBAR-PhoneStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " mOngoingNotifications.getHeight() =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v13, v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v13, v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    :cond_3
    if-eqz v4, :cond_4

    .line 2942
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v9

    add-int/2addr v5, v9

    .line 2943
    const-string v9, "STATUSBAR-PhoneStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " mLatestNotificationTitle.getHeight() =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    :cond_4
    const-string v9, "STATUSBAR-PhoneStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " scrollTop =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " scrollBottom = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " plusNotificationArea = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_6

    .line 2951
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2952
    .local v1, child:Landroid/view/View;
    const-string v9, "STATUSBAR-PhoneStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " child.getTop() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v5

    if-le v9, v7, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v9, v5

    if-ge v9, v6, :cond_5

    .line 2955
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2950
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2958
    .end local v1           #child:Landroid/view/View;
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2959
    .local v0, N:I
    const-string v9, "STATUSBAR-PhoneStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " snapshot.size() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    new-instance v9, Ljava/lang/Thread;

    new-instance v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;

    invoke-direct {v11, p0, v3, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Ljava/util/ArrayList;)V

    invoke-direct {v9, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 3013
    monitor-exit v10

    .line 3014
    return-void

    .line 3013
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .end local v4           #numChildren:I
    .end local v5           #plusNotificationArea:I
    .end local v6           #scrollBottom:I
    .end local v7           #scrollTop:I
    .end local v8           #snapshot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method
