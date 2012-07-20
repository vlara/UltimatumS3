.class public Lcom/android/settings/personalvibration/PersonalVibration;
.super Landroid/app/Activity;
.source "PersonalVibration.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;
    }
.end annotation


# instance fields
.field backView:Lcom/android/settings/personalvibration/BackgroundView;

.field buttonLayout:Landroid/widget/LinearLayout;

.field centerButton:Landroid/widget/Button;

.field centerText:Landroid/widget/TextView;

.field leftButton:Landroid/widget/Button;

.field mDialog:Landroid/app/AlertDialog;

.field private mEditPattern:Landroid/widget/TextView;

.field private mFromContact:Ljava/lang/Boolean;

.field mHandler:Landroid/os/Handler;

.field mOkBtn:Landroid/widget/Button;

.field patternLong:[J

.field rightButton:Landroid/widget/Button;

.field stopButton:Landroid/widget/Button;

.field stopButtonLayout:Landroid/widget/LinearLayout;

.field vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->patternLong:[J

    return-void
.end method

.method public static StringToLongArray(Ljava/lang/String;)[J
    .registers 8

    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "PersonalVibration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StringToLongArray, size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v2

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2c

    const-string v3, "PersonalVibration"

    const-string v4, "string is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_2b
    return-object v1

    :cond_2c
    array-length v3, v2

    new-array v1, v3, [J

    const/4 v0, 0x0

    :goto_30
    array-length v3, v2

    if-ge v0, v3, :cond_2b

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    const-string v3, "PersonalVibration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ret["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v5, v1, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_30
.end method

.method static synthetic access$100(Lcom/android/settings/personalvibration/PersonalVibration;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/personalvibration/PersonalVibration;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterTextChanged(), stage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v1, v2, :cond_33

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v1, v2, :cond_59

    :cond_33
    if-gtz v0, :cond_5a

    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ok btn is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_59
    :goto_59
    return-void

    :cond_5a
    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_59
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 16

    const/4 v13, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_60

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->patternLong:[J

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->patternLong:[J

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->patternLong:[J

    sget-object v2, Landroid/os/Vibrator$MagnitudeType;->CallMagnitude:Landroid/os/Vibrator$MagnitudeType;

    invoke-virtual {v0, v1, v13, v2}, Landroid/os/Vibrator;->vibrate([JILandroid/os/Vibrator$MagnitudeType;)V

    :cond_2b
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setRunPlayTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02021b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_45
    :goto_45
    return-void

    :cond_46
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_45

    :cond_60
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_74

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    goto :goto_45

    :cond_74
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_195

    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leftButton is clicked, backView state is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v3}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_17f

    const/4 v7, 0x0

    const/16 v9, 0x1a

    const-string v0, "PersonalVibration"

    const-string v1, "Save button was clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_c7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    :cond_c7
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalvibration/PersonalVibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f040071

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v0, 0x7f0a0152

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    const v1, 0x7f0d0926

    new-array v2, v11, [Ljava/lang/Object;

    add-int/lit8 v3, v7, -0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/personalvibration/PersonalVibration;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    new-array v1, v11, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0922

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/personalvibration/PersonalVibration$2;

    invoke-direct {v2, p0, v8}, Lcom/android/settings/personalvibration/PersonalVibration$2;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d077f

    new-instance v2, Lcom/android/settings/personalvibration/PersonalVibration$1;

    invoke-direct {v2, p0, v8}, Lcom/android/settings/personalvibration/PersonalVibration$1;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_45

    :cond_17f
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_45

    const v0, 0x7f0d0921

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_45

    :cond_195
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_45

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->stopRecording()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto/16 :goto_45
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    const-string v0, "PersonalVibration"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->stopRecording()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_13
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_23

    const-string v0, "PersonalVibration"

    const-string v1, "save dialog is displayed so calling addTextChangedListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_23
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "PersonalVibration"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f040072

    invoke-virtual {p0, v1}, Lcom/android/settings/personalvibration/PersonalVibration;->setContentView(I)V

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    const v1, 0x7f0a0153

    invoke-virtual {p0, v1}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/personalvibration/BackgroundView;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1, p0}, Lcom/android/settings/personalvibration/BackgroundView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0a014b

    invoke-virtual {p0, v1}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0154

    invoke-virtual {p0, v1}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a000e

    invoke-virtual {p0, v1}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    const v1, 0x7f0a0157

    invoke-virtual {p0, v1}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    const v1, 0x7f0a0156

    invoke-virtual {p0, v1}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    const v1, 0x7f0a0155

    invoke-virtual {p0, v1}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v1, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;Lcom/android/settings/personalvibration/PersonalVibration$1;)V

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    iget-object v2, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/settings/personalvibration/BackgroundView;->setHandler(Landroid/os/Handler;)V

    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a7

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/settings/personalvibration/PersonalVibration;->setRequestedOrientation(I)V

    :cond_a7
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFromContact : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_14
    :goto_14
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->stopRecording()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_14
.end method

.method protected onResume()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_19

    const-string v0, "PersonalVibration"

    const-string v1, "onResume() : stage is recording so stop recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->stopRecording()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_19
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return v1

    :pswitch_a
    iget-object v2, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v2

    if-eqz v2, :cond_9

    :pswitch_12
    iget-object v2, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v2, v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->runRecording()V

    goto :goto_9

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_a
        :pswitch_12
    .end packed-switch
.end method

.method runRecording()V
    .registers 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setRunRecordingTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->patternLong:[J

    return-void
.end method

.method stopRecording()V
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setStopTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
