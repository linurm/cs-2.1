.class public Lcom/heyzap/house/model/VideoModel;
.super Lcom/heyzap/house/model/AdModel;
.source "VideoModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/heyzap/common/video/VideoModelInterface;


# static fields
.field public static FORMAT:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x70a7c8bce90a7283L


# instance fields
.field private allowStreamingFallback:Ljava/lang/Boolean;

.field private cacheEntry:Lcom/heyzap/common/cache/Entry;

.field private context:Landroid/content/Context;

.field private disableGlobalTouch:Ljava/lang/Boolean;

.field private displayOptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Lcom/heyzap/common/video/VideoDisplayOptions;",
            ">;"
        }
    .end annotation
.end field

.field private forceStreaming:Ljava/lang/Boolean;

.field private interstitialBackgroundOverlayColor:Ljava/lang/Integer;

.field private interstitialHeight:I

.field private interstitialWidth:I

.field private manualSize:Ljava/lang/Boolean;

.field private percentDownloaded:I

.field private sentVideoComplete:Ljava/lang/Boolean;

.field public size:I

.field private staticUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private streamingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoHeight:Ljava/lang/Integer;

.field private videoLength:Ljava/lang/Integer;

.field private videoWidth:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "video"

    sput-object v0, Lcom/heyzap/house/model/VideoModel;->FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Lcom/heyzap/house/model/AdModel;-><init>(Lorg/json/JSONObject;)V

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->sentVideoComplete:Ljava/lang/Boolean;

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->interstitialBackgroundOverlayColor:Ljava/lang/Integer;

    .line 44
    iput v2, p0, Lcom/heyzap/house/model/VideoModel;->interstitialHeight:I

    .line 45
    iput v2, p0, Lcom/heyzap/house/model/VideoModel;->interstitialWidth:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->staticUrls:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->streamingUrls:Ljava/util/ArrayList;

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->videoWidth:Ljava/lang/Integer;

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->videoHeight:Ljava/lang/Integer;

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->videoLength:Ljava/lang/Integer;

    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->allowStreamingFallback:Ljava/lang/Boolean;

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->forceStreaming:Ljava/lang/Boolean;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->cacheEntry:Lcom/heyzap/common/cache/Entry;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->displayOptions:Ljava/util/HashMap;

    .line 64
    sget-object v0, Lcom/heyzap/house/model/VideoModel;->FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->creativeType:Ljava/lang/String;

    .line 66
    const-string v0, "interstitial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "interstitial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    const-string v2, "meta"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "meta"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 71
    const-string v3, "height"

    iget v4, p0, Lcom/heyzap/house/model/VideoModel;->interstitialHeight:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/heyzap/house/model/VideoModel;->interstitialHeight:I

    .line 72
    const-string v3, "width"

    iget v4, p0, Lcom/heyzap/house/model/VideoModel;->interstitialWidth:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/heyzap/house/model/VideoModel;->interstitialWidth:I

    .line 75
    :cond_0
    const-string v2, "html_data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/heyzap/house/model/VideoModel;->setHtmlData(Ljava/lang/String;)V

    .line 77
    const-string v2, "background_color"

    iget-object v3, p0, Lcom/heyzap/house/model/VideoModel;->interstitialBackgroundOverlayColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->interstitialBackgroundOverlayColor:Ljava/lang/Integer;

    .line 81
    :cond_1
    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 83
    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 85
    const-string v0, "meta"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const-string v0, "meta"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    const-string v2, "width"

    iget-object v4, p0, Lcom/heyzap/house/model/VideoModel;->videoWidth:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/heyzap/house/model/VideoModel;->videoWidth:Ljava/lang/Integer;

    .line 88
    const-string v2, "height"

    iget-object v4, p0, Lcom/heyzap/house/model/VideoModel;->videoHeight:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/heyzap/house/model/VideoModel;->videoHeight:Ljava/lang/Integer;

    .line 89
    const-string v2, "length"

    iget-object v4, p0, Lcom/heyzap/house/model/VideoModel;->videoLength:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->videoLength:Ljava/lang/Integer;

    .line 93
    :cond_2
    new-instance v4, Lcom/heyzap/common/video/VideoDisplayOptions;

    invoke-direct {v4}, Lcom/heyzap/common/video/VideoDisplayOptions;-><init>()V

    .line 94
    invoke-virtual {v4, v3}, Lcom/heyzap/common/video/VideoDisplayOptions;->setOptions(Lorg/json/JSONObject;)V

    .line 95
    const-string v0, "ad_unit"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    const-string v0, "ad_unit"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 97
    invoke-static {}, Lcom/heyzap/internal/Constants$AdUnit;->values()[Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v6

    array-length v7, v6

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_4

    aget-object v8, v6, v2

    .line 98
    invoke-virtual {v4}, Lcom/heyzap/common/video/VideoDisplayOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/video/VideoDisplayOptions;

    .line 99
    invoke-virtual {v8}, Lcom/heyzap/internal/Constants$AdUnit;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 100
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 101
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 102
    invoke-virtual {v0, v9}, Lcom/heyzap/common/video/VideoDisplayOptions;->setOptions(Lorg/json/JSONObject;)V

    .line 105
    :cond_3
    iget-object v9, p0, Lcom/heyzap/house/model/VideoModel;->displayOptions:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 109
    :cond_4
    const-string v0, "static_url"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    const-string v0, "static_url"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 111
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 112
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 113
    iget-object v5, p0, Lcom/heyzap/house/model/VideoModel;->staticUrls:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_5
    const-string v0, "streaming_url"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    const-string v0, "streaming_url"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 119
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 120
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    iget-object v3, p0, Lcom/heyzap/house/model/VideoModel;->streamingUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->staticUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->streamingUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 126
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No video URLs."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_7
    const-string v0, "should_refetch_if_not_ready"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/model/VideoModel;->setShouldRefetchIfNotReady(Z)V

    .line 132
    return-void
.end method

.method static synthetic access$002(Lcom/heyzap/house/model/VideoModel;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/heyzap/house/model/VideoModel;->sentVideoComplete:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public cleanup(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CLEANUP) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getImpressionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public doPostFetchActions(Landroid/content/Context;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    :try_start_0
    new-instance v0, Lcom/heyzap/house/model/VideoModel$2;

    invoke-direct {v0, p0}, Lcom/heyzap/house/model/VideoModel$2;-><init>(Lcom/heyzap/house/model/VideoModel;)V

    invoke-static {p0, v0}, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;->fetch(Lcom/heyzap/house/model/AdModel;Lcom/heyzap/internal/GenericCallback;)V

    .line 276
    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->forceStreaming:Z

    if-nez v0, :cond_1

    .line 278
    invoke-static {p1, p0, p2}, Lcom/heyzap/common/video/Cacher;->start(Landroid/content/Context;Lcom/heyzap/common/video/VideoModelInterface;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 286
    if-eqz p2, :cond_0

    invoke-interface {p2, v1, v0}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCacheEntry()Lcom/heyzap/common/cache/Entry;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->cacheEntry:Lcom/heyzap/common/cache/Entry;

    return-object v0
.end method

.method public getCreativeUniqueIdentifier()Ljava/lang/String;
    .locals 4

    .prologue
    .line 292
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getCreativeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialBackgroundOverlayColor()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->interstitialBackgroundOverlayColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInterstitialHeight()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/heyzap/house/model/VideoModel;->interstitialHeight:I

    return v0
.end method

.method public getInterstitialWidth()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/heyzap/house/model/VideoModel;->interstitialWidth:I

    return v0
.end method

.method public getStaticUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->staticUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->staticUrls:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStreamingUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->streamingUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->streamingUrls:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->displayOptions:Ljava/util/HashMap;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->UNKNOWN:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/video/VideoDisplayOptions;

    .line 143
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->displayOptions:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->displayOptions:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/video/VideoDisplayOptions;

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->displayOptions:Ljava/util/HashMap;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->UNKNOWN:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/video/VideoDisplayOptions;

    goto :goto_0
.end method

.method public isFileCached()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->cacheEntry:Lcom/heyzap/common/cache/Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->cacheEntry:Lcom/heyzap/common/cache/Entry;

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

.method public onComplete(Landroid/content/Context;IILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 220
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->sentVideoComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v6, :cond_0

    .line 221
    const-string v0, "Already sent video complete successfully"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 226
    :cond_0
    invoke-super {p0}, Lcom/heyzap/house/model/AdModel;->getEventRequestParams()Lcom/heyzap/http/RequestParams;

    move-result-object v1

    .line 229
    const-string v0, "video_duration_ms"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    :goto_1
    const-string v0, "watched_duration_ms"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    .line 239
    :goto_2
    const-string v2, "video_finished"

    invoke-virtual {v1, v2, v0}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v0

    iget v0, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->lockoutTime:I

    int-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 242
    const-string v2, "lockout_time_seconds"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v0, v2, :cond_1

    .line 245
    const-string v0, "incentivized"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/heyzap/house/Manager;->AD_SERVER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/event/video_impression_complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/heyzap/house/model/VideoModel$1;

    invoke-direct {v3, p0}, Lcom/heyzap/house/model/VideoModel$1;-><init>(Lcom/heyzap/house/model/VideoModel;)V

    invoke-static {v0, v2, v1, v3}, Lcom/heyzap/common/net/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 260
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_2
    const-string v0, "false"

    goto :goto_2

    :cond_3
    move p3, p2

    goto :goto_1
.end method

.method public onInterstitialFallback()V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    const-string v1, "interstitial_fallback"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-super {p0, v0}, Lcom/heyzap/house/model/AdModel;->setAdditionalEventParams(Ljava/util/Map;)V

    .line 217
    return-void
.end method

.method public setCacheEntry(Lcom/heyzap/common/cache/Entry;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/heyzap/house/model/VideoModel;->cacheEntry:Lcom/heyzap/common/cache/Entry;

    .line 166
    return-void
.end method

.method public setIsReady(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-super {p0, v0}, Lcom/heyzap/house/model/AdModel;->setIsReady(Z)V

    .line 171
    return-void
.end method

.method public setPercentDownloaded(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/heyzap/house/model/VideoModel;->percentDownloaded:I

    .line 176
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 180
    iput p1, p0, Lcom/heyzap/house/model/VideoModel;->size:I

    .line 181
    return-void
.end method

.method public shouldAllowFallbackToStreaming()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->allowStreamingFallback:Ljava/lang/Boolean;

    return-object v0
.end method
