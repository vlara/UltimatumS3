.class public Lcom/android/settings/phoneprofile/PhoneProfilePreference;
.super Landroid/preference/Preference;
.source "PhoneProfilePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
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

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mProtectFromCheckedChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mSelectable:Z

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mProtectFromCheckedChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mSelectable:Z

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mProtectFromCheckedChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mSelectable:Z

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x1010003

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_38

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_38

    move-object v1, v4

    check-cast v1, Landroid/widget/RadioButton;

    iget-boolean v5, p0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mSelectable:Z

    if-eqz v5, :cond_48

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sput-object v1, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    :cond_2f
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mProtectFromCheckedChange:Z

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mProtectFromCheckedChange:Z

    :cond_38
    :goto_38
    const/high16 v5, 0x101

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_47

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_47

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_47
    return-object v3

    :cond_48
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_38
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7

    const/4 v3, 0x0

    const-string v0, "PhoneProfilePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

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

    iget-boolean v0, p0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_2c

    :goto_2b
    return-void

    :cond_2c
    if-eqz p2, :cond_46

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_38

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_38
    sput-object p1, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_46
    sput-object v3, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    sput-object v3, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_2b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    if-eqz p1, :cond_52

    const/high16 v0, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_52

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string v1, "PhoneProfilePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick  getKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_profile_edit_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "state"

    const-string v3, "edit"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_52
    return-void
.end method

.method public setChecked()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public setSelectable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/phoneprofile/PhoneProfilePreference;->mSelectable:Z

    return-void
.end method
