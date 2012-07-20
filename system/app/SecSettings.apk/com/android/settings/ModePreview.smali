.class public Lcom/android/settings/ModePreview;
.super Landroid/app/Activity;
.source "ModePreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ModePreview;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ModePreview;->mListView:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f04006d

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreview;->setContentView(I)V

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Lcom/android/settings/ModePreview;->mModeItem:[Ljava/lang/String;

    sget-object v3, Lcom/android/settings/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d07af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v3, Lcom/android/settings/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d07b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    sget-object v3, Lcom/android/settings/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d07b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    sget-object v3, Lcom/android/settings/ModePreview;->mModeItem:[Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/android/settings/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d07b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const v3, 0x7f0a00aa

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/ModePreview;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/ModePreview;->mListView:Landroid/widget/ListView;

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f04006e

    sget-object v6, Lcom/android/settings/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/settings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v3, p0, Lcom/android/settings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_mode_setting"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v3, p0, Lcom/android/settings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/android/settings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setOverScrollMode(I)V

    const v3, 0x7f0a012c

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/ModePreview$1;

    invoke-direct {v3, p0}, Lcom/android/settings/ModePreview$1;-><init>(Lcom/android/settings/ModePreview;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a012d

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/ModePreview$2;

    invoke-direct {v3, p0}, Lcom/android/settings/ModePreview$2;-><init>(Lcom/android/settings/ModePreview;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_ba

    const v3, 0x7f0a014b

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_ba
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/ModePreview;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0d010e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0d042e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "PreviewMode"

    const-string v2, "could not persist mode setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v1, 0x4

    if-ne p1, v1, :cond_11

    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_16

    :cond_11
    :goto_11
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :catch_16
    move-exception v0

    const-string v1, "PreviewMode"

    const-string v2, "could not change mode setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_3c

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_c
    return v1

    :pswitch_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/settings/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_setting"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_1f

    :goto_1b
    invoke-virtual {p0}, Lcom/android/settings/ModePreview;->finish()V

    goto :goto_c

    :catch_1f
    move-exception v0

    const-string v2, "PreviewMode"

    const-string v3, "could not change mode setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :pswitch_28
    invoke-virtual {p0}, Lcom/android/settings/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_setting"

    iget-object v4, p0, Lcom/android/settings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/ModePreview;->finish()V

    goto :goto_c

    nop

    :pswitch_data_3c
    .packed-switch 0x7f0a033f
        :pswitch_d
        :pswitch_28
    .end packed-switch
.end method
