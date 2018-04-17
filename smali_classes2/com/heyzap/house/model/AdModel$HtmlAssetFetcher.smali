.class public Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;
.super Ljava/lang/Object;
.source "AdModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/house/model/AdModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtmlAssetFetcher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Lcom/heyzap/house/model/AdModel;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException;
        }
    .end annotation

    .prologue
    .line 493
    invoke-static {p0, p1}, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;->saveUrlAsFile(Ljava/lang/String;Lcom/heyzap/house/model/AdModel;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static fetch(Lcom/heyzap/house/model/AdModel;Lcom/heyzap/internal/GenericCallback;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 495
    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    .line 497
    if-nez v0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 500
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 501
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 504
    const-string v3, "url\\((\"[^\"]+\")\\)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 507
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 508
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 509
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 511
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 515
    :cond_1
    const-string v3, "img.*src=\"([^\"]+)\""

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 518
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 519
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 521
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 524
    :cond_2
    new-instance v0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;-><init>(Ljava/util/List;Lcom/heyzap/house/model/AdModel;Ljava/util/List;Lcom/heyzap/internal/GenericCallback;)V

    .line 598
    invoke-static {}, Lcom/heyzap/common/concurrency/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static saveUrlAsFile(Ljava/lang/String;Lcom/heyzap/house/model/AdModel;)Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p1}, Lcom/heyzap/house/model/AdModel;->hasBeenShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    new-instance v0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException;

    invoke-direct {v0}, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException;-><init>()V

    throw v0

    .line 606
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 611
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 612
    const-string v2, "%032x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 614
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heyzap/house/Manager;->getFileCache()Lcom/heyzap/common/cache/FileCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heyzap/common/cache/FileCache;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 616
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heyzap/house/Manager;->getFileCache()Lcom/heyzap/common/cache/FileCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/heyzap/common/cache/FileCache;->get(Ljava/lang/String;)Lcom/heyzap/common/cache/Entry;

    move-result-object v3

    .line 617
    if-eqz v3, :cond_1

    .line 618
    invoke-virtual {v3}, Lcom/heyzap/common/cache/Entry;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 645
    :goto_0
    return-object v0

    .line 621
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 622
    const/high16 v4, 0x10000

    new-array v4, v4, [B

    .line 627
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    .line 628
    :goto_1
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    .line 629
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 642
    :catch_0
    move-exception v1

    .line 643
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 631
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 633
    new-instance v3, Lcom/heyzap/common/cache/Entry;

    invoke-direct {v3}, Lcom/heyzap/common/cache/Entry;-><init>()V

    .line 634
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/heyzap/common/cache/Entry;->setFilename(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v3, v1}, Lcom/heyzap/common/cache/Entry;->setIdentifier(Ljava/lang/String;)V

    .line 636
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/heyzap/common/cache/Entry;->setDirty(Ljava/lang/Boolean;)V

    .line 638
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/house/Manager;->getFileCache()Lcom/heyzap/common/cache/FileCache;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/heyzap/common/cache/FileCache;->put(Lcom/heyzap/common/cache/Entry;)V

    .line 640
    invoke-virtual {v3}, Lcom/heyzap/common/cache/Entry;->getUri()Landroid/net/Uri;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 644
    :catch_1
    move-exception v1

    .line 645
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
