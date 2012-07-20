.class public Lcom/android/settings/flipfont/TypefaceFinder;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public final mTypefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/flipfont/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v1}, Lcom/android/settings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    return-object v1

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .registers 10

    const/4 v3, 0x0

    :try_start_1
    const-string v4, "xml"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_2c

    move-result-object v3

    const/4 v1, 0x0

    :goto_8
    array-length v4, v3

    if-ge v1, v4, :cond_49

    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xml/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    aget-object v4, v3, v1

    invoke-virtual {p0, v4, v2, p2}, Lcom/android/settings/flipfont/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_29} :catch_2f

    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catch_2c
    move-exception v0

    const/4 v4, 0x0

    :goto_2e
    return v4

    :catch_2f
    move-exception v0

    const-string v4, "TypefaceFinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not possible to open, continue to next file, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_49
    const/4 v4, 0x1

    goto :goto_2e
.end method

.method public getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0740

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v13, "default"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v13, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    new-instance v14, Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;-><init>(Lcom/android/settings/flipfont/TypefaceFinder;)V

    invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v6, 0x0

    :goto_33
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_10a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v13}, Lcom/android/settings/flipfont/Typeface;->getSansName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_e3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v13}, Lcom/android/settings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v5

    const/16 v13, 0x2f

    invoke-virtual {v5, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    const/16 v13, 0x2e

    invoke-virtual {v5, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-gez v3, :cond_75

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    :cond_75
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v5, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v13, " "

    const-string v14, ""

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v13}, Lcom/android/settings/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v9

    :try_start_91
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fonts/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".ttf"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v13}, Lcom/android/settings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v13}, Lcom/android/settings/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_e3} :catch_e7

    :cond_e3
    :goto_e3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_33

    :catch_e7
    move-exception v2

    const-string v13, "FlipFont"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getSansEntries - Typeface.createFromAsset caused an exception for - fonts/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".ttf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e3

    :cond_10a
    return-void
.end method

.method public parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 13

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    new-instance v1, Lcom/android/settings/flipfont/TypefaceParser;

    invoke-direct {v1}, Lcom/android/settings/flipfont/TypefaceParser;-><init>()V

    invoke-interface {v5, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v1}, Lcom/android/settings/flipfont/TypefaceParser;->getParsedData()Lcom/android/settings/flipfont/Typeface;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/flipfont/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/android/settings/flipfont/Typeface;->setFontPackageName(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    const-string v6, "TypefaceFinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File parsing is not possible, omit this typeface, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method
