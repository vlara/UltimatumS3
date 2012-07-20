.class public Lcom/android/settings/flipfont/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TypefaceParser.java"


# instance fields
.field private in_droidname:Z

.field private in_file:Z

.field private in_filename:Z

.field private in_font:Z

.field private in_monospace:Z

.field private in_sans:Z

.field private in_serif:Z

.field private mFont:Lcom/android/settings/flipfont/Typeface;

.field private mFontFile:Lcom/android/settings/flipfont/TypefaceFile;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_font:Z

    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_file:Z

    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    iput-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    iput-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/TypefaceFile;->setFileName(Ljava/lang/String;)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/TypefaceFile;->setDroidName(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_font:Z

    :cond_b
    :goto_b
    return-void

    :cond_c
    const-string v0, "sans"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    goto :goto_b

    :cond_17
    const-string v0, "serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    goto :goto_b

    :cond_22
    const-string v0, "monospace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    goto :goto_b

    :cond_2d
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_file:Z

    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_49
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSerifFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_57
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mMonospaceFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_65
    const-string v0, "filename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    goto :goto_b

    :cond_70
    const-string v0, "droidname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    goto :goto_b
.end method

.method public getParsedData()Lcom/android/settings/flipfont/Typeface;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    return-object v0
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/android/settings/flipfont/Typeface;

    invoke-direct {v0}, Lcom/android/settings/flipfont/Typeface;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x1

    const-string v1, "font"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_font:Z

    const-string v1, "displayname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v1, v0}, Lcom/android/settings/flipfont/Typeface;->setName(Ljava/lang/String;)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    const-string v1, "sans"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    goto :goto_16

    :cond_22
    const-string v1, "serif"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    goto :goto_16

    :cond_2d
    const-string v1, "monospace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    goto :goto_16

    :cond_38
    const-string v1, "file"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_file:Z

    new-instance v1, Lcom/android/settings/flipfont/TypefaceFile;

    invoke-direct {v1}, Lcom/android/settings/flipfont/TypefaceFile;-><init>()V

    iput-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    goto :goto_16

    :cond_4a
    const-string v1, "filename"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    goto :goto_16

    :cond_55
    const-string v1, "droidname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    goto :goto_16
.end method
