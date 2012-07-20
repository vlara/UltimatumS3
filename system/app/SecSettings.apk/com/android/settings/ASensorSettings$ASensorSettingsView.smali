.class Lcom/android/settings/ASensorSettings$ASensorSettingsView;
.super Landroid/view/View;
.source "ASensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ASensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ASensorSettingsView"
.end annotation


# instance fields
.field image:Landroid/graphics/drawable/Drawable;

.field mRadius:I

.field mState:I

.field sx:I

.field sy:I

.field final synthetic this$0:Lcom/android/settings/ASensorSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/ASensorSettings;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->sx:I

    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->sy:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .registers 2

    iput p1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mState:I

    return-void
.end method


# virtual methods
.method public getPoint([F)[F
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->sx:I

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, v3

    iget v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->sy:I

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, v4

    const-string v0, "ASensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRect position[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position[1]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    const-wide/high16 v8, 0x4000

    const/4 v6, 0x0

    :goto_3
    const/4 v0, 0x3

    if-ge v6, v0, :cond_1c

    add-int/lit8 v0, v6, 0x1

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mBackgroundRadian:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$900(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    mul-int v7, v0, v1

    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-virtual {v0}, Lcom/android/settings/ASensorSettings;->getLcdWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    if-le v7, v0, :cond_dd

    :cond_1c
    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mHorizontalLine:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$1100(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mHorizontalLine:I
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$1100(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    int-to-float v4, v0

    invoke-static {}, Lcom/android/settings/ASensorSettings;->access$1000()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mVerticalLine:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1200(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mVerticalLine:I
    invoke-static {v4}, Lcom/android/settings/ASensorSettings;->access$1200(Lcom/android/settings/ASensorSettings;)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    invoke-static {}, Lcom/android/settings/ASensorSettings;->access$1000()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f7

    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    :goto_92
    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->sx:I

    iget v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->sy:I

    iget v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->sx:I

    iget-object v4, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v4}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->sy:I

    iget-object v5, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v5}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const-string v0, "ASensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw sx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->sx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->sy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_dd
    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v7

    invoke-static {}, Lcom/android/settings/ASensorSettings;->access$1000()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_f7
    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/android/settings/ASensorSettings;->ani_gap_x:F

    sget v1, Lcom/android/settings/ASensorSettings;->ani_count:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget v2, Lcom/android/settings/ASensorSettings;->ani_gap_y:F

    sget v3, Lcom/android/settings/ASensorSettings;->ani_count:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mRadius:I

    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mRadius:I

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/settings/ASensorSettings;->ani_count:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {}, Lcom/android/settings/ASensorSettings;->access$1300()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const-string v0, "ASensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw mRadius "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92
.end method

.method public setPoint(FF)V
    .registers 10

    const-wide/high16 v5, 0x4000

    const-string v1, "ASensorSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRect x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v1, p1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$800(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_53

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$800(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float p1, v1, v0

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$800(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    div-float p2, v1, v0

    :cond_53
    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->sx:I

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->sy:I

    return-void
.end method
