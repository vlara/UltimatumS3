.class public Lcom/android/settings/wifi/WifiConnectionPreference;
.super Landroid/preference/Preference;
.source "WifiConnectionPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mProtectFromCheckedChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectable:Z

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mProtectFromCheckedChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectable:Z

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mProtectFromCheckedChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectable:Z

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const v0, 0x7f0400dc

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x1010001

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_38

    instance-of v4, v3, Landroid/widget/RadioButton;

    if-eqz v4, :cond_38

    move-object v1, v3

    check-cast v1, Landroid/widget/RadioButton;

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectable:Z

    if-eqz v4, :cond_39

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sput-object v1, Lcom/android/settings/wifi/WifiConnectionPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    :cond_2f
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mProtectFromCheckedChange:Z

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mProtectFromCheckedChange:Z

    :cond_38
    :goto_38
    return-object v2

    :cond_39
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_38
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    if-eqz p2, :cond_20

    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_12
    sput-object p1, Lcom/android/settings/wifi/WifiConnectionPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_20
    sput-object v1, Lcom/android/settings/wifi/WifiConnectionPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    sput-object v1, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_5
.end method

.method public setChecked()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public setSelectable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectable:Z

    return-void
.end method
