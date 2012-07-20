.class public Lcom/android/settings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    invoke-virtual {p0, p0}, Lcom/android/settings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    return-void
.end method


# virtual methods
.method public exchangeLocaleOrder()V
    .registers 14

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v5, v2, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    new-array v10, v2, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_23

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aput-object v11, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_23
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const-string v11, "CHN"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5e

    const-string v11, "CHM"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5e

    const-string v11, "CHU"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5e

    const-string v11, "CTC"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_139

    :cond_5e
    const/4 v11, 0x4

    new-array v9, v11, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    const/4 v11, 0x4

    new-array v8, v11, [I

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_66
    if-ge v3, v2, :cond_82

    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "zh_CN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_fc

    aget-object v11, v10, v3

    aput-object v11, v9, v7

    aput v3, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_82
    const/4 v3, 0x0

    :goto_83
    if-ge v3, v2, :cond_9f

    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "en_US"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_100

    aget-object v11, v10, v3

    aput-object v11, v9, v7

    aput v3, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_9f
    const/4 v3, 0x0

    :goto_a0
    if-ge v3, v2, :cond_bc

    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "en_GB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_103

    aget-object v11, v10, v3

    aput-object v11, v9, v7

    aput v3, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_bc
    const/4 v3, 0x0

    :goto_bd
    if-ge v3, v2, :cond_d9

    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko_KR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_106

    aget-object v11, v10, v3

    aput-object v11, v9, v7

    aput v3, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_d9
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v11, v5, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v7

    const/4 v3, 0x0

    :goto_e0
    if-ge v3, v2, :cond_139

    const/4 v11, 0x4

    if-ne v7, v11, :cond_109

    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_f9

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_f9

    const/4 v11, 0x2

    aget v11, v8, v11

    if-eq v11, v3, :cond_f9

    const/4 v11, 0x3

    aget v11, v8, v11

    if-ne v11, v3, :cond_11b

    :cond_f9
    :goto_f9
    add-int/lit8 v3, v3, 0x1

    goto :goto_e0

    :cond_fc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_66

    :cond_100
    add-int/lit8 v3, v3, 0x1

    goto :goto_83

    :cond_103
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    :cond_106
    add-int/lit8 v3, v3, 0x1

    goto :goto_bd

    :cond_109
    const/4 v11, 0x3

    if-ne v7, v11, :cond_122

    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_f9

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_f9

    const/4 v11, 0x2

    aget v11, v8, v11

    if-eq v11, v3, :cond_f9

    :cond_11b
    aget-object v11, v10, v3

    aput-object v11, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f9

    :cond_122
    const/4 v11, 0x2

    if-ne v7, v11, :cond_130

    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_f9

    const/4 v11, 0x1

    aget v11, v8, v11

    if-ne v11, v3, :cond_11b

    goto :goto_f9

    :cond_130
    const/4 v11, 0x1

    if-ne v7, v11, :cond_11b

    const/4 v11, 0x0

    aget v11, v8, v11

    if-ne v11, v3, :cond_11b

    goto :goto_f9

    :cond_139
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v11, 0x1090083

    const v12, 0x1020181

    invoke-direct {v1, v6, v11, v12, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_8
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    invoke-static {p1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/internal/app/LocalePicker;->onResume()V

    const-string v0, "CHN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "CHU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3b
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->exchangeLocaleOrder()V

    :cond_3e
    return-void
.end method
