.class public Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;
.super Landroid/preference/Preference;
.source "SingleSpellCheckerPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

.field private mPrefAll:Landroid/view/View;

.field private mPrefLeftButton:Landroid/view/View;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRes:Landroid/content/res/Resources;

.field private mSelected:Z

.field private mSettingsButton:Landroid/view/View;

.field private mSettingsIntent:Landroid/content/Intent;

.field private final mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

.field private mSubtypeButton:Landroid/widget/ImageView;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private final mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/content/Intent;Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    const v1, 0x7f040093

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->setLayoutResource(I)V

    iput-object p3, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    iput-boolean v3, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_43
    return-void

    :cond_44
    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    goto :goto_43
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onLeftButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onSubtypeButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onSettingsButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method private enableButtons(Z)V
    .registers 5

    const/16 v2, 0x8

    const v1, 0x3ecccccd

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-gtz v0, :cond_3b

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_12

    :cond_3b
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    if-nez p1, :cond_23

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_23
.end method

.method private onLeftButtonClicked(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->onPreferenceClick(Landroid/preference/Preference;)Z

    return-void
.end method

.method private onSettingsButtonClicked(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->startActivity(Landroid/content/Intent;)V

    :cond_f
    return-void
.end method

.method private onSubtypeButtonClicked(Landroid/view/View;)V
    .registers 14

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    :cond_12
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d0533

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    new-array v4, v8, [Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0d0567

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v11

    const/4 v3, 0x0

    :goto_39
    if-ge v3, v6, :cond_60

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v8, v3, 0x1

    aput-object v5, v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_60
    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8, v11}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    if-eqz v2, :cond_7a

    const/4 v3, 0x0

    :goto_6a
    if-ge v3, v6, :cond_7a

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8e

    add-int/lit8 v1, v3, 0x1

    :cond_7a
    new-instance v8, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$4;

    invoke-direct {v8, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$4;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v4, v1, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a
.end method

.method private updateSelectedState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->enableButtons(Z)V

    :cond_c
    return-void
.end method


# virtual methods
.method public getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    const v0, 0x7f0a0195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRadioButton:Landroid/widget/RadioButton;

    const v0, 0x7f0a0194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTitleText:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSummaryText:Landroid/widget/TextView;

    const v0, 0x7f0a0198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$3;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->updateSelectedState(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->updateSelectedState(Z)V

    return-void
.end method
