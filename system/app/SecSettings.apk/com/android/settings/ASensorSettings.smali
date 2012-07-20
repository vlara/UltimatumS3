.class public Lcom/android/settings/ASensorSettings;
.super Landroid/app/Activity;
.source "ASensorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ASensorSettings$1;,
        Lcom/android/settings/ASensorSettings$setHandler;,
        Lcom/android/settings/ASensorSettings$ASensorSettingsView;,
        Lcom/android/settings/ASensorSettings$handlersensor;
    }
.end annotation


# static fields
.field private static BackgroundPaint:Landroid/graphics/Paint;

.field static ani_count:I

.field static ani_gap_x:F

.field static ani_gap_y:F

.field private static circlePaint:Landroid/graphics/Paint;

.field private static sampleCount:I

.field static sampleData_x:F

.field static sampleData_y:F


# instance fields
.field private CENTER_X:I

.field private CENTER_Y:I

.field private CIRCLE_RADIUS:I

.field private ICON_RADIUS:I

.field private btn_cal:Landroid/widget/Button;

.field private drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

.field private draw_layout:Landroid/widget/LinearLayout;

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mBackgroundRadian:I

.field mHandler:Lcom/android/settings/ASensorSettings$setHandler;

.field private mHorizontalLine:I

.field mSensorListner:Lcom/android/settings/ASensorSettings$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mVerticalLine:I

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_X:I

    const/16 v0, 0x172

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_Y:I

    iput v1, p0, Lcom/android/settings/ASensorSettings;->mHorizontalLine:I

    iput v1, p0, Lcom/android/settings/ASensorSettings;->mVerticalLine:I

    iput v1, p0, Lcom/android/settings/ASensorSettings;->mBackgroundRadian:I

    const/16 v0, 0x25

    iput v0, p0, Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I

    return-void
.end method

.method static synthetic access$1000()Landroid/graphics/Paint;
    .registers 1

    sget-object v0, Lcom/android/settings/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/ASensorSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/ASensorSettings;->mHorizontalLine:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/ASensorSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/ASensorSettings;->mVerticalLine:I

    return v0
.end method

.method static synthetic access$1300()Landroid/graphics/Paint;
    .registers 1

    sget-object v0, Lcom/android/settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/ASensorSettings;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/ASensorSettings;)Landroid/hardware/Sensor;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/ASensorSettings;)Landroid/hardware/SensorManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/ASensorSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/ASensorSettings;->diplayCompleted()V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    sget v0, Lcom/android/settings/ASensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1

    sput p0, Lcom/android/settings/ASensorSettings;->sampleCount:I

    return p0
.end method

.method static synthetic access$304()I
    .registers 1

    sget v0, Lcom/android/settings/ASensorSettings;->sampleCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/ASensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$308()I
    .registers 2

    sget v0, Lcom/android/settings/ASensorSettings;->sampleCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/settings/ASensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/ASensorSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_X:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/ASensorSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/ASensorSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_Y:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/ASensorSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/ASensorSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/ASensorSettings;->mBackgroundRadian:I

    return v0
.end method

.method private diplayCompleted()V
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x7f0d075e

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getIconRadius()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private init()V
    .registers 4

    const/4 v2, 0x1

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->text:Landroid/widget/TextView;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/android/settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/settings/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/settings/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/android/settings/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private writeToFile()V
    .registers 7

    const-string v4, "ASensorSettings"

    const-string v5, "Start calibration"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_8
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/sec/gsensorcal/calibration"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_14} :catch_1e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_2a

    const/16 v4, 0x31

    :try_start_16
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1c} :catch_37

    move-object v2, v3

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    :try_start_1f
    const-string v4, "ASensorSettings"

    const-string v5, "File not found!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_2a

    goto :goto_1d

    :catch_2a
    move-exception v0

    :goto_2b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_1d

    :catch_32
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d

    :catch_37
    move-exception v0

    move-object v2, v3

    goto :goto_2b
.end method


# virtual methods
.method public dpToPixel(I)F
    .registers 6

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    int-to-float v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v2, v3

    return v1
.end method

.method public getLcdHeight()I
    .registers 4

    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/settings/ASensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    return v1
.end method

.method public getLcdWidth()I
    .registers 4

    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/settings/ASensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    :goto_7
    return-void

    :pswitch_8
    invoke-direct {p0}, Lcom/android/settings/ASensorSettings;->writeToFile()V

    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$handlersensor;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mHandler:Lcom/android/settings/ASensorSettings$setHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/ASensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    nop

    :pswitch_data_2a
    .packed-switch 0x7f0a0027
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    const/16 v2, 0x32

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings;->getLcdWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_X:I

    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings;->getLcdHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings/ASensorSettings;->dpToPixel(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_Y:I

    iget v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_X:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/settings/ASensorSettings;->mHorizontalLine:I

    iget v0, p0, Lcom/android/settings/ASensorSettings;->CENTER_Y:I

    mul-int/lit8 v0, v0, 0x42

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/settings/ASensorSettings;->mVerticalLine:I

    invoke-virtual {p0, v2}, Lcom/android/settings/ASensorSettings;->dpToPixel(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/ASensorSettings;->mBackgroundRadian:I

    invoke-direct {p0}, Lcom/android/settings/ASensorSettings;->getIconRadius()I

    move-result v0

    iput v0, p0, Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I

    const/16 v0, 0x10b

    iput v0, p0, Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I

    new-instance v0, Lcom/android/settings/ASensorSettings$setHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/ASensorSettings$setHandler;-><init>(Lcom/android/settings/ASensorSettings;Lcom/android/settings/ASensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mHandler:Lcom/android/settings/ASensorSettings$setHandler;

    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->setContentView(I)V

    new-instance v0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;-><init>(Lcom/android/settings/ASensorSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/ASensorSettings;->init()V

    new-instance v0, Lcom/android/settings/ASensorSettings$handlersensor;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/ASensorSettings$handlersensor;-><init>(Lcom/android/settings/ASensorSettings;Lcom/android/settings/ASensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$handlersensor;

    return-void
.end method

.method protected onPause()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mHandler:Lcom/android/settings/ASensorSettings$setHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ASensorSettings$setHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mHandler:Lcom/android/settings/ASensorSettings$setHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/ASensorSettings$setHandler;->removeMessages(I)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sput v3, Lcom/android/settings/ASensorSettings;->sampleCount:I

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V

    :cond_10
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->text:Landroid/widget/TextView;

    const v1, 0x7f0d075c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1c
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$handlersensor;

    iget-object v2, p0, Lcom/android/settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method
