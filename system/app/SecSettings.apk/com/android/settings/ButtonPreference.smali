.class public Lcom/android/settings/ButtonPreference;
.super Landroid/preference/Preference;
.source "ButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private buttonText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/ButtonPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/ButtonPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0400e4

    invoke-virtual {p0, v0}, Lcom/android/settings/ButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/settings/ButtonPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private performClick()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    :cond_9
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f0a02d1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/android/settings/ButtonPreference;->buttonText:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/settings/ButtonPreference;->buttonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/ButtonPreference;->performClick()V

    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method
