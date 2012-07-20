.class public Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;
.super Landroid/preference/Preference;
.source "PhoneProfileCheckPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mChecked:Z

.field private static mCurrentChecked:Landroid/widget/CompoundButton;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mProtectFromCheckedChange:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mChecked:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const v0, 0x7f040073

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x1010002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_27

    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_27

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-boolean v0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mChecked:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    :cond_27
    return-object v1
.end method

.method public isChecked()Z
    .registers 2

    sget-boolean v0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mChecked:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    const-string v0, "PhoneProfileCheckPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_2b

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_2a
.end method

.method public setChecked(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mChecked:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_9
    return-void
.end method

.method public setForceChecked(Z)V
    .registers 4

    sput-boolean p1, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mChecked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mCheckBox:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->mProtectFromCheckedChange:Z

    return-void
.end method
