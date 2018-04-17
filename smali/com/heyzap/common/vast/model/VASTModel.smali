.class public Lcom/heyzap/common/vast/model/VASTModel;
.super Ljava/lang/Object;
.source "VASTModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/heyzap/common/video/VideoModelInterface;


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final combinedSkipOffsetXPATH:Ljava/lang/String; = "/VASTS/VAST/Ad/InLine/Creatives/Creative/Linear/@skipoffset|/VASTS/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/@skipoffset"

.field private static final combinedTrackingXPATH:Ljava/lang/String; = "/VASTS/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking|/VASTS/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking|/VASTS/VAST/Ad/Wrapper/Creatives/Creative/Linear/TrackingEvents/Tracking|/VASTS/VAST/Ad/Wrapper/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

.field private static final durationXPATH:Ljava/lang/String; = "//Duration"

.field private static final errorUrlXPATH:Ljava/lang/String; = "//Error"

.field private static final impressionXPATH:Ljava/lang/String; = "//Impression"

.field private static final inlineLinearSkipOffsetXPATH:Ljava/lang/String; = "/VASTS/VAST/Ad/InLine/Creatives/Creative/Linear/@skipoffset"

.field private static final inlineLinearTrackingXPATH:Ljava/lang/String; = "/VASTS/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking"

.field private static final inlineNonLinearSkipOffsetXPATH:Ljava/lang/String; = "/VASTS/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/@skipoffset"

.field private static final inlineNonLinearTrackingXPATH:Ljava/lang/String; = "/VASTS/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

.field private static final mediaFileXPATH:Ljava/lang/String; = "//MediaFile"

.field private static final serialVersionUID:J = 0x3beded0d26129615L

.field private static final videoClicksXPATH:Ljava/lang/String; = "//VideoClicks"

.field private static final wrapperLinearTrackingXPATH:Ljava/lang/String; = "/VASTS/VAST/Ad/Wrapper/Creatives/Creative/Linear/TrackingEvents/Tracking"

.field private static final wrapperNonLinearTrackingXPATH:Ljava/lang/String; = "/VASTS/VAST/Ad/Wrapper/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"


# instance fields
.field private adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field private cacheEntry:Lcom/heyzap/common/cache/Entry;

.field private percentDownloaded:I

.field private pickedMediaFile:Lcom/heyzap/common/vast/model/VASTMediaFile;

.field private transient vastsDocument:Lorg/w3c/dom/Document;

.field private videoDisplayOptions:Lcom/heyzap/common/video/VideoDisplayOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "VASTModel"

    sput-object v0, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v3, p0, Lcom/heyzap/common/vast/model/VASTModel;->pickedMediaFile:Lcom/heyzap/common/vast/model/VASTMediaFile;

    .line 48
    iput v1, p0, Lcom/heyzap/common/vast/model/VASTModel;->percentDownloaded:I

    .line 50
    new-instance v0, Lcom/heyzap/common/video/VideoDisplayOptions;

    invoke-direct {v0}, Lcom/heyzap/common/video/VideoDisplayOptions;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->videoDisplayOptions:Lcom/heyzap/common/video/VideoDisplayOptions;

    .line 52
    iput-object v3, p0, Lcom/heyzap/common/vast/model/VASTModel;->cacheEntry:Lcom/heyzap/common/cache/Entry;

    .line 54
    iput-object v3, p0, Lcom/heyzap/common/vast/model/VASTModel;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 96
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    .line 99
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->videoDisplayOptions:Lcom/heyzap/common/video/VideoDisplayOptions;

    iput-boolean v2, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowStreamingFallback:Z

    .line 100
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->videoDisplayOptions:Lcom/heyzap/common/video/VideoDisplayOptions;

    iput-boolean v1, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->forceStreaming:Z

    .line 101
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->videoDisplayOptions:Lcom/heyzap/common/video/VideoDisplayOptions;

    iput-boolean v1, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowSkip:Z

    .line 102
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->videoDisplayOptions:Lcom/heyzap/common/video/VideoDisplayOptions;

    iput-boolean v2, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowHide:Z

    .line 103
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->videoDisplayOptions:Lcom/heyzap/common/video/VideoDisplayOptions;

    iput-boolean v2, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowClick:Z

    .line 104
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->videoDisplayOptions:Lcom/heyzap/common/video/VideoDisplayOptions;

    iput-boolean v1, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->postRollInterstitial:Z

    .line 105
    return-void
.end method

.method private getListFromXPath(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    sget-object v0, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v1, "getListFromXPath"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    .line 376
    :try_start_0
    iget-object v2, p0, Lcom/heyzap/common/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p1, v2, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 379
    if-eqz v0, :cond_0

    .line 380
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 381
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 382
    invoke-static {v3}, Lcom/heyzap/common/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    sget-object v1, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    const/4 v0, 0x0

    .line 391
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    sget-object v0, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v1, "readObject: about to read"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 411
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 412
    sget-object v1, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vastString data is:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {v0}, Lcom/heyzap/common/vast/util/XmlTools;->stringToDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    .line 416
    sget-object v0, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v1, "done reading"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    sget-object v0, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v1, "writeObject: about to write"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 399
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    invoke-static {v0}, Lcom/heyzap/common/vast/util/XmlTools;->xmlDocumentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 402
    sget-object v0, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v1, "done writing"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method


# virtual methods
.method public getCacheEntry()Lcom/heyzap/common/cache/Entry;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->cacheEntry:Lcom/heyzap/common/cache/Entry;

    return-object v0
.end method

.method public getCreativeUniqueIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->pickedMediaFile:Lcom/heyzap/common/vast/model/VASTMediaFile;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 225
    sget-object v0, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v2, "getDuration"

    invoke-static {v0, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    .line 233
    :try_start_0
    const-string v2, "//Duration"

    iget-object v3, p0, Lcom/heyzap/common/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v2, v3, v4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 237
    if-eqz v0, :cond_2

    .line 238
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 239
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 240
    invoke-static {v2}, Lcom/heyzap/common/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 238
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v4

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 244
    :goto_1
    if-eqz v0, :cond_1

    .line 245
    invoke-static {v0}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/sql/Time;->getHours()I

    move-result v2

    mul-int/lit16 v2, v2, 0xe10

    invoke-virtual {v0}, Ljava/sql/Time;->getMinutes()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/sql/Time;->getSeconds()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    :goto_2
    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    sget-object v2, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 251
    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 255
    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getErrorUrl()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    sget-object v0, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v1, "getErrorUrl"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "//Error"

    invoke-direct {p0, v0}, Lcom/heyzap/common/vast/model/VASTModel;->getListFromXPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 363
    return-object v0
.end method

.method public getImpressions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    sget-object v0, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v1, "getImpressions"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v0, "//Impression"

    invoke-direct {p0, v0}, Lcom/heyzap/common/vast/model/VASTModel;->getListFromXPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 354
    return-object v0
.end method

.method public getMediaFiles()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/common/vast/model/VASTMediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 162
    sget-object v0, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v1, "getMediaFiles"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    .line 169
    :try_start_0
    const-string v3, "//MediaFile"

    iget-object v4, p0, Lcom/heyzap/common/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v5, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v3, v4, v5}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 176
    if-eqz v0, :cond_9

    .line 177
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v4, v3, :cond_9

    .line 178
    new-instance v5, Lcom/heyzap/common/vast/model/VASTMediaFile;

    invoke-direct {v5}, Lcom/heyzap/common/vast/model/VASTMediaFile;-><init>()V

    .line 179
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 180
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 182
    const-string v3, "apiFramework"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 183
    if-nez v3, :cond_0

    move-object v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Lcom/heyzap/common/vast/model/VASTMediaFile;->setApiFramework(Ljava/lang/String;)V

    .line 185
    const-string v3, "bitrate"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 186
    if-nez v8, :cond_1

    move-object v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Lcom/heyzap/common/vast/model/VASTMediaFile;->setBitrate(Ljava/math/BigInteger;)V

    .line 188
    const-string v3, "delivery"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 189
    if-nez v3, :cond_2

    move-object v3, v2

    :goto_3
    invoke-virtual {v5, v3}, Lcom/heyzap/common/vast/model/VASTMediaFile;->setDelivery(Ljava/lang/String;)V

    .line 191
    const-string v3, "height"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 192
    if-nez v8, :cond_3

    move-object v3, v2

    :goto_4
    invoke-virtual {v5, v3}, Lcom/heyzap/common/vast/model/VASTMediaFile;->setHeight(Ljava/math/BigInteger;)V

    .line 194
    const-string v3, "id"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 195
    if-nez v3, :cond_4

    move-object v3, v2

    :goto_5
    invoke-virtual {v5, v3}, Lcom/heyzap/common/vast/model/VASTMediaFile;->setId(Ljava/lang/String;)V

    .line 197
    const-string v3, "maintainAspectRatio"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 198
    if-nez v3, :cond_5

    move-object v3, v2

    :goto_6
    invoke-virtual {v5, v3}, Lcom/heyzap/common/vast/model/VASTMediaFile;->setMaintainAspectRatio(Ljava/lang/Boolean;)V

    .line 200
    const-string v3, "scalable"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 201
    if-nez v3, :cond_6

    move-object v3, v2

    :goto_7
    invoke-virtual {v5, v3}, Lcom/heyzap/common/vast/model/VASTMediaFile;->setScalable(Ljava/lang/Boolean;)V

    .line 203
    const-string v3, "type"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 204
    if-nez v3, :cond_7

    move-object v3, v2

    :goto_8
    invoke-virtual {v5, v3}, Lcom/heyzap/common/vast/model/VASTMediaFile;->setType(Ljava/lang/String;)V

    .line 206
    const-string v3, "width"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 207
    if-nez v7, :cond_8

    move-object v3, v2

    :goto_9
    invoke-virtual {v5, v3}, Lcom/heyzap/common/vast/model/VASTMediaFile;->setWidth(Ljava/math/BigInteger;)V

    .line 209
    invoke-static {v6}, Lcom/heyzap/common/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual {v5, v3}, Lcom/heyzap/common/vast/model/VASTMediaFile;->setValue(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_0

    .line 183
    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 186
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    sget-object v1, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 221
    :goto_a
    return-object v0

    .line 189
    :cond_2
    :try_start_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 192
    :cond_3
    new-instance v3, Ljava/math/BigInteger;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 195
    :cond_4
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 198
    :cond_5
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_6

    .line 201
    :cond_6
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_7

    .line 204
    :cond_7
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 207
    :cond_8
    new-instance v3, Ljava/math/BigInteger;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :cond_9
    move-object v0, v1

    .line 221
    goto :goto_a
.end method

.method public getSkipOffset()Ljava/lang/Integer;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 307
    sget-object v0, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v2, "getVideoSkips"

    invoke-static {v0, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    .line 312
    :try_start_0
    const-string v2, "/VASTS/VAST/Ad/InLine/Creatives/Creative/Linear/@skipoffset|/VASTS/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/@skipoffset"

    iget-object v3, p0, Lcom/heyzap/common/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v2, v3, v4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 315
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_3

    .line 316
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p0}, Lcom/heyzap/common/vast/model/VASTModel;->getDuration()Ljava/lang/Integer;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_2

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 321
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Not a valid percent!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 346
    :cond_0
    :goto_0
    return-object v0

    .line 326
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_2
    :try_start_2
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 332
    invoke-static {v0}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Ljava/sql/Time;->getHours()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v0}, Ljava/sql/Time;->getMinutes()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/sql/Time;->getSeconds()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v3, v2, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Not a valid skip. Can\'t be greater than duration!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 341
    :catch_1
    move-exception v0

    .line 342
    sget-object v2, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 343
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 346
    goto :goto_0
.end method

.method public getStaticUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->pickedMediaFile:Lcom/heyzap/common/vast/model/VASTMediaFile;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getStreamingUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->pickedMediaFile:Lcom/heyzap/common/vast/model/VASTMediaFile;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingUrls()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/heyzap/common/vast/model/TrackingEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v1, "getTrackingUrls"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 118
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    .line 121
    :try_start_0
    const-string v1, "/VASTS/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking|/VASTS/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking|/VASTS/VAST/Ad/Wrapper/Creatives/Creative/Linear/TrackingEvents/Tracking|/VASTS/VAST/Ad/Wrapper/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

    iget-object v3, p0, Lcom/heyzap/common/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v1, v3, v4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 127
    if-eqz v0, :cond_1

    .line 128
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 129
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 132
    const-string v5, "event"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 134
    :try_start_1
    invoke-static {v4}, Lcom/heyzap/common/vast/model/TrackingEvent;->valueOf(Ljava/lang/String;)Lcom/heyzap/common/vast/model/TrackingEvent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 140
    :try_start_2
    invoke-static {v1}, Lcom/heyzap/common/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 144
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    sget-object v1, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid. Skipping it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/heyzap/common/vast/util/VASTLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 153
    :catch_1
    move-exception v0

    .line 154
    sget-object v1, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    const/4 v0, 0x0

    .line 158
    :goto_2
    return-object v0

    .line 146
    :cond_0
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 158
    goto :goto_2
.end method

.method public getVastsDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getVideoClicks()Lcom/heyzap/common/vast/model/VideoClicks;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 259
    sget-object v0, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v1, "getVideoClicks"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v1, Lcom/heyzap/common/vast/model/VideoClicks;

    invoke-direct {v1}, Lcom/heyzap/common/vast/model/VideoClicks;-><init>()V

    .line 261
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    .line 264
    :try_start_0
    const-string v2, "//VideoClicks"

    iget-object v4, p0, Lcom/heyzap/common/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v5, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v2, v4, v5}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 267
    if-eqz v0, :cond_4

    move v4, v3

    .line 268
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v4, v2, :cond_4

    .line 269
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 271
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v2, v3

    .line 276
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 279
    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 280
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 282
    const-string v8, "ClickTracking"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 283
    invoke-static {v6}, Lcom/heyzap/common/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-virtual {v1}, Lcom/heyzap/common/vast/model/VideoClicks;->getClickTracking()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 286
    :cond_1
    const-string v8, "ClickThrough"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 287
    invoke-static {v6}, Lcom/heyzap/common/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 288
    invoke-virtual {v1, v6}, Lcom/heyzap/common/vast/model/VideoClicks;->setClickThrough(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 298
    :catch_0
    move-exception v0

    .line 299
    sget-object v1, Lcom/heyzap/common/vast/model/VASTModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/heyzap/common/vast/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    const/4 v0, 0x0

    .line 303
    :goto_3
    return-object v0

    .line 290
    :cond_2
    :try_start_1
    const-string v8, "CustomClick"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 291
    invoke-static {v6}, Lcom/heyzap/common/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 292
    invoke-virtual {v1}, Lcom/heyzap/common/vast/model/VideoClicks;->getCustomClick()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 268
    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 303
    goto :goto_3
.end method

.method public getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 425
    new-instance v0, Lcom/heyzap/common/video/VideoDisplayOptions;

    invoke-direct {v0}, Lcom/heyzap/common/video/VideoDisplayOptions;-><init>()V

    .line 427
    iget-object v1, p0, Lcom/heyzap/common/vast/model/VASTModel;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/heyzap/common/vast/model/VASTModel;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v1, v2}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    iput v3, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->lockoutTime:I

    .line 429
    iput-boolean v3, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowHide:Z

    .line 430
    iput-boolean v4, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowClick:Z

    .line 431
    iput-boolean v3, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowSkip:Z

    .line 432
    iput-boolean v3, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowInstallButton:Z

    .line 453
    :goto_0
    return-object v0

    .line 437
    :cond_0
    iput-boolean v4, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowClick:Z

    .line 439
    invoke-virtual {p0}, Lcom/heyzap/common/vast/model/VASTModel;->getSkipOffset()Ljava/lang/Integer;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 441
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->lockoutTime:I

    .line 442
    iput-boolean v3, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowHide:Z

    .line 443
    iput-boolean v4, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowSkip:Z

    .line 444
    iput-boolean v4, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowClick:Z

    .line 445
    iput-boolean v3, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowInstallButton:Z

    goto :goto_0

    .line 447
    :cond_1
    iput-boolean v4, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowHide:Z

    .line 448
    iput-boolean v3, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowSkip:Z

    .line 449
    iput-boolean v4, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowClick:Z

    .line 450
    iput-boolean v3, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowInstallButton:Z

    goto :goto_0
.end method

.method public isFileCached()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->cacheEntry:Lcom/heyzap/common/cache/Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTModel;->cacheEntry:Lcom/heyzap/common/cache/Entry;

    invoke-virtual {v0}, Lcom/heyzap/common/cache/Entry;->fileExists()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setAdUnit(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTModel;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 501
    return-void
.end method

.method public setCacheEntry(Lcom/heyzap/common/cache/Entry;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTModel;->cacheEntry:Lcom/heyzap/common/cache/Entry;

    .line 479
    return-void
.end method

.method public setIsReady(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public setPercentDownloaded(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public setPickedMediaFile(Lcom/heyzap/common/vast/model/VASTMediaFile;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/heyzap/common/vast/model/VASTModel;->pickedMediaFile:Lcom/heyzap/common/vast/model/VASTMediaFile;

    .line 421
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 491
    return-void
.end method
