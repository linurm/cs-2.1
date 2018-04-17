.class public final Lcom/heyzap/common/vast/processor/VASTProcessor;
.super Ljava/lang/Object;
.source "VASTProcessor.java"


# static fields
.field private static final IS_VALIDATION_ON:Z = false

.field private static final MAX_VAST_LEVELS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VASTProcessor"


# instance fields
.field private mediaPicker:Lcom/heyzap/common/vast/processor/VASTMediaPicker;

.field private mergedVastDocs:Ljava/lang/StringBuilder;

.field private vastModel:Lcom/heyzap/common/vast/model/VASTModel;


# direct methods
.method public constructor <init>(Lcom/heyzap/common/vast/processor/VASTMediaPicker;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/heyzap/common/vast/processor/VASTProcessor;->mergedVastDocs:Ljava/lang/StringBuilder;

    .line 48
    iput-object p1, p0, Lcom/heyzap/common/vast/processor/VASTProcessor;->mediaPicker:Lcom/heyzap/common/vast/processor/VASTMediaPicker;

    .line 49
    return-void
.end method

.method private createDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 3

    .prologue
    .line 156
    const-string v0, "VASTProcessor"

    const-string v1, "About to create doc from InputStream"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->normalize()V

    .line 161
    const-string v1, "VASTProcessor"

    const-string v2, "Doc successfully created."

    invoke-static {v1, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v1, "VASTProcessor"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private merge(Lorg/w3c/dom/Document;)V
    .locals 2

    .prologue
    .line 170
    const-string v0, "VASTProcessor"

    const-string v1, "About to merge doc into main doc."

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "VAST"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 174
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/heyzap/common/vast/util/XmlTools;->xmlDocumentToString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/heyzap/common/vast/processor/VASTProcessor;->mergedVastDocs:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v0, "VASTProcessor"

    const-string v1, "Merge successful."

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private processUri(Ljava/io/InputStream;I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 104
    const-string v1, "VASTProcessor"

    const-string v2, "processUri"

    invoke-static {v1, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x5

    if-lt p2, v1, :cond_1

    .line 107
    const-string v0, "VAST wrapping exceeded max limit of 5."

    .line 109
    const-string v1, "VASTProcessor"

    invoke-static {v1, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x6

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    invoke-direct {p0, p1}, Lcom/heyzap/common/vast/processor/VASTProcessor;->createDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 114
    if-nez v1, :cond_2

    .line 115
    const/4 v0, 0x3

    goto :goto_0

    .line 124
    :cond_2
    invoke-direct {p0, v1}, Lcom/heyzap/common/vast/processor/VASTProcessor;->merge(Lorg/w3c/dom/Document;)V

    .line 127
    sget-object v2, Lcom/heyzap/common/vast/model/VASTDocElement;->vastAdTagURI:Lcom/heyzap/common/vast/model/VASTDocElement;

    invoke-virtual {v2}, Lcom/heyzap/common/vast/model/VASTDocElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const-string v2, "VASTProcessor"

    const-string v3, "Doc is a wrapper. "

    invoke-static {v2, v3}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/heyzap/common/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "VASTProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrapper URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 146
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0}, Lcom/heyzap/common/vast/processor/VASTProcessor;->processUri(Ljava/io/InputStream;I)I

    move-result v0

    .line 148
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    .line 143
    const-string v1, "VASTProcessor"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private validateAgainstSchema(Lorg/w3c/dom/Document;)Z
    .locals 2

    .prologue
    .line 183
    const-string v0, "VASTProcessor"

    const-string v1, "About to validate doc against schema."

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-class v0, Lcom/heyzap/common/vast/processor/VASTProcessor;

    const-string v1, "assets/vast_2_0_1_schema.xsd"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 186
    invoke-static {p1}, Lcom/heyzap/common/vast/util/XmlTools;->xmlDocumentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/XmlValidation;->validate(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v1

    .line 189
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return v1

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private wrapMergedVastDocWithVasts()Lorg/w3c/dom/Document;
    .locals 4

    .prologue
    .line 91
    const-string v0, "VASTProcessor"

    const-string v1, "wrapmergedVastDocWithVasts"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/heyzap/common/vast/processor/VASTProcessor;->mergedVastDocs:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string v2, "<VASTS>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p0, Lcom/heyzap/common/vast/processor/VASTProcessor;->mergedVastDocs:Ljava/lang/StringBuilder;

    const-string v1, "</VASTS>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v0, p0, Lcom/heyzap/common/vast/processor/VASTProcessor;->mergedVastDocs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "VASTProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Merged VAST doc:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heyzap/common/vast/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {v0}, Lcom/heyzap/common/vast/util/XmlTools;->stringToDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 99
    return-object v0
.end method


# virtual methods
.method public getModel()Lcom/heyzap/common/vast/model/VASTModel;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/heyzap/common/vast/processor/VASTProcessor;->vastModel:Lcom/heyzap/common/vast/model/VASTModel;

    return-object v0
.end method

.method public process(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 56
    const-string v0, "VASTProcessor"

    const-string v3, "process"

    invoke-static {v0, v3}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/common/vast/processor/VASTProcessor;->vastModel:Lcom/heyzap/common/vast/model/VASTModel;

    .line 61
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-direct {p0, v3, v2}, Lcom/heyzap/common/vast/processor/VASTProcessor;->processUri(Ljava/io/InputStream;I)I

    move-result v0

    .line 69
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :goto_0
    if-eqz v0, :cond_0

    .line 87
    :goto_1
    return v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v2, "VASTProcessor"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 64
    goto :goto_1

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/heyzap/common/vast/processor/VASTProcessor;->wrapMergedVastDocWithVasts()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 77
    new-instance v3, Lcom/heyzap/common/vast/model/VASTModel;

    invoke-direct {v3, v0}, Lcom/heyzap/common/vast/model/VASTModel;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v3, p0, Lcom/heyzap/common/vast/processor/VASTProcessor;->vastModel:Lcom/heyzap/common/vast/model/VASTModel;

    .line 79
    if-nez v0, :cond_1

    move v0, v1

    .line 80
    goto :goto_1

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/heyzap/common/vast/processor/VASTProcessor;->vastModel:Lcom/heyzap/common/vast/model/VASTModel;

    iget-object v1, p0, Lcom/heyzap/common/vast/processor/VASTProcessor;->mediaPicker:Lcom/heyzap/common/vast/processor/VASTMediaPicker;

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/processor/VASTModelPostValidator;->validate(Lcom/heyzap/common/vast/model/VASTModel;Lcom/heyzap/common/vast/processor/VASTMediaPicker;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    const/4 v0, 0x5

    goto :goto_1

    :cond_2
    move v0, v2

    .line 87
    goto :goto_1

    .line 70
    :catch_1
    move-exception v3

    goto :goto_0
.end method
