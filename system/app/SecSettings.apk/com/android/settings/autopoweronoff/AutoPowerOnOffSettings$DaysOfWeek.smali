.class final Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
.super Ljava/lang/Object;
.source "AutoPowerOnOffSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DaysOfWeek"
.end annotation


# static fields
.field private static DAY_MAP:[I


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->DAY_MAP:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    return-void
.end method

.method private isSet(I)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public getBooleanArray()[Z
    .registers 5

    const/4 v3, 0x7

    new-array v1, v3, [Z

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_f

    invoke-direct {p0, v0}, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    return-object v1
.end method

.method public getCoded()I
    .registers 2

    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    return v0
.end method

.method public set(IZ)V
    .registers 5

    const/4 v1, 0x1

    if-eqz p2, :cond_a

    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    goto :goto_9
.end method

.method public set(Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
    .registers 3

    iget v0, p1, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    iput v0, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    if-nez v6, :cond_1b

    if-eqz p2, :cond_18

    const v6, 0x7f0d09d1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_17
    return-object v6

    :cond_18
    const-string v6, ""

    goto :goto_17

    :cond_1b
    iget v6, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    const/16 v7, 0x7f

    if-ne v6, v7, :cond_2d

    const v6, 0x7f0d09d2

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_17

    :cond_2d
    const/4 v0, 0x0

    iget v2, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    :goto_30
    if-lez v2, :cond_3b

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v8, :cond_38

    add-int/lit8 v0, v0, 0x1

    :cond_38
    shr-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_3b
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    if-le v0, v8, :cond_6b

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    :goto_46
    const/4 v4, 0x0

    :goto_47
    const/4 v6, 0x7

    if-ge v4, v6, :cond_70

    iget v6, p0, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    shl-int v7, v8, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_68

    sget-object v6, Lcom/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->DAY_MAP:[I

    aget v6, v6, v4

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_68

    const v6, 0x7f0d09d3

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_6b
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    :cond_70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_17
.end method
